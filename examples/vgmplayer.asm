; SN76489 VGM player for CP/M
;
; Assemble with sjasm.
;
; CP/M file loader code from https://github.com/MMaciocia/RC2014-YM2149
; VGM player code from http://www.primrosebank.net/computers/mtx/mtxtools.htm
; Combined to play VGM music from CP/M by J.B. Langston

tmsreg:		equ 0bfh
psgreg:		equ 0ffh
usenmi:		equ 1

boot:		equ	0			; boot location
bdos:		equ	5			; bdos entry point
fcb:		equ	$5c			; file control block
fcbcr:		equ	fcb+$20			; fcb current record
buff:		equ	$80			; DMA buffer
printf:		equ	9			; BDOS print string function
openf:		equ	15			; BDOS open file function
closef:		equ	16			; BDOS close file function
readf:		equ	20			; BDOS sequential read function

im1vect:    equ 38h                 ; location of IM1 vector
nmivect:    equ 66h                ; location of NMI vector

cr:		equ	$0d			; carriage return
lf:		equ	$0a			; line feed
eos:		equ	'$'			; end of string marker

		org 	$100
		ld	(oldstack),sp		; save old stack pointer
		ld	sp,stack		; set new stack pointer
		ld	de,fcb			; try to open file specified on command line
		call	open
		inc	a			; 255 indicates failure
		jr	z,badfile
		ld	a,0			; clear current record
		ld	(fcbcr),a
		ld	de,vgmdata		; set destination address
		ld	(dest),de

loop:	
		ld	de,fcb			; read from file
		call	read
		or	a
		jr	nz,eof			; non-zero accumulator means EOF

		ld	hl,buff			; copy from DMA buffer to destination
		ld	de,(dest)
		ld	bc,$80
		ldir
		ld	(dest),de		; increment next destination address
		jr	loop

eof:	
		ld	de,fcb			; close the file
		call	close

		ld	de,success		; tell user that game was loaded
		call	print
		jp	vgmplay			; copy the game to the final location and run

badfile:	
		ld	de,nofile		; print error if file is not found
		call	print
		ld	sp,(oldstack)		; restore stack pointer
		ret				; return to CP/M

open:	
		ld	c,openf			; BDOS call to open file
		jp	bdos

close:	
		ld	c,closef		; BDOS call to close file
		jp	bdos

read:	
		ld	c,readf			; BDOS call to read file
		jp	bdos

print:	
		ld	c,printf		; BDOS call to print string
		jp	bdos
		
nofile:		defb 	"file not found",cr,lf,eos
success:	defb	"vgm loaded",eos

dest:		defw	vgmdata		; destination pointer
oldstack:		defw	0			; original stack pointer
 		defs	$40			; space for stack
stack:						; top of stack

; set up interrupt mode 1 vector
;       HL = interrupt handler
im1setup:
        di
	ld      a, $C3                  ; prefix with jump instruction
	ld      (im1vect), a
        ld      (im1vect+1), hl         ; load interrupt vector
	im      1                       ; enable interrupt mode 1
        ei
        ret

; set up NMI vector
;       HL = interrupt handler
nmisetup:
	ld      a, $C3                  ; prefix with jump instruction
	ld      (nmivect), a
        ld      (nmivect+1), hl         ; load interrupt vector
        ret

tmsintenable:
	in	a,(tmsreg)
	ld	a, 020H
	out	(tmsreg),a
	ld	a, 81H
	out	(tmsreg),a
	ret

tmsintdisable:
	ld	a, 0H
	out	(tmsreg),a
	ld 	a, 81H
	out	(tmsreg),a
	ret

; Init player
vgmplay:	
	ld hl,vgmdata + $40	; Start of VGM, skipping header.
	ld (vgmpos),hl
	ld hl, 735		; VGM Delay (60hz)
	ld (vgmdly),hl

        ld      hl, inthndl          ; install the interrupt handler
if      usenmi
        call    nmisetup
else
        call    im1setup
endif
	call 	tmsintenable


mainloop:
        halt
        ld      c,6                     ; check for keypress
        ld      e,0ffh
        call    bdos
        or      a
        jr      z,mainloop              ; busy wait and let interrupts do their thing

        call    tmsintdisable
	ld 	a,09Fh			; mute all channels on psg
    	out 	(psgreg),a
    	ld 	a,0BFh
    	out 	(psgreg),a
    	ld 	a,0DFh
    	out 	(psgreg),a
    	ld 	a,0FFh
    	out 	(psgreg),a
        ld      sp,(oldstack)
        rst     0

;------------------------------------------------------------------------------
; Interrupt Handler. Called every 1/60 second.
;------------------------------------------------------------------------------
inthndl:
	push hl			; Save registers
	push bc
	push de
	push af
	in a,(tmsreg)		; Check if VDP int set and reset it.
	bit 7, a
	jr z, exit
	ld hl,(vgmdly)		; Check if delay has gone past
	ld de,735
	and $ff
	sbc hl,de
	ld (vgmdly),hl
	jr nz, exit
	ld hl,(vgmpos)		; Start processing VGM commands
next:	ld a, (hl)
	inc hl
	ld (vgmpos), hl
	cp $66			; Restart VGM cmd
	jr nz, next1
	ld hl,vgmdata + $40	; Start of VGM, skipping header.
	ld (vgmpos),hl
	ld hl, 735		; VGM Delay
	ld (vgmdly),hl
	jr exit
next1:	cp $4f			; Game Gear SN76489 stereo. Ignored
	jr nz, psg
	inc hl
	jr next
psg:	cp $50			; Write byte to SN76489.
	jr nz, waitnn
	ld a, (hl)
	inc hl
	out (psgreg), a
	jr next
waitnn:	cp $61			; Wait nn samples
	jr nz, wait60
	ld a, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (vgmpos), hl
	ld l, a
	ld h, d
	ld (vgmdly), hl
	jr exit
wait60:	cp $62			; Wait 735 samples (60Hz)
	jr nz, exit
	ld (vgmpos),hl
	ld hl, 735
	ld (vgmdly), hl
exit:	pop af			; Restore registers
	pop de
	pop bc
	pop hl
if      usenmi
        retn
else
        reti
endif
;------------------------------------------------------------------------------
; Variables
;------------------------------------------------------------------------------
vgmpos	defw 0
vgmdly	defw 0
;------------------------------------------------------------------------------
; VGM data
;------------------------------------------------------------------------------
vgmdata:
