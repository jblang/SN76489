{
   SN76489 music player

   Uses GW-BASIC PLAY macro syntax:
   https://hwiegman.home.xs4all.nl/gw-man/PLAY.html

   Compiles on Turbo Pascal 3.0 (DOS and CP/M), 7.0, and QuickPascal 1.0.
   Runs on PCjr, Tandy, and CP/M using my SN76489 sound board for RC2014.

   Currently only supports one voice, but 3-voice support is planned.

   Copyright 2019 J.B. Langston

   Permission is hereby granted, free of charge, to any person obtaining a
   copy of this software and associated documentation files (the "Software"),
   to deal in the Software without restriction, including without limitation
   the rights to use, copy, modify, merge, publish, distribute, sublicense,
   and/or sell copies of the Software, and to permit persons to whom the
   Software is furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in
   all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
   THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
   DEALINGS IN THE SOFTWARE.
}
program music;
{uses crt;} { required for Turbo Pascal 4 and greater }

const
   { update these values for other systems }
   muxport = $61;      { port to control audio mux on PCjr }
   {psgport = $c0;}      { port to control SN76489 PSG on PCjr }
   psgport = $fe;      { port to control SN76489 PSG on RC2014 }
   refclk = 3579000.0; { input clock rate for PSG on PCjr  }

type
   chantype = 0..3;    { psg channels }
   voltype = 0..$f;    { valid psg volume levels }
   tonetype = 0..$3ff; { valid psg tone values }
   songtype = string[255];

var
   scale: array[1..84] of integer;

{ set audio multiplexer to output from sound chip on PCjr}
procedure setmux;
begin
   port[muxport] := port[muxport] or $60;
end;

{ set volume attenuation for channel }
function vol(channel: chantype; value: voltype): byte;
begin
   vol := $90 or (channel shl 5) or value;
end;

procedure setvol(channel: chantype; value: voltype);
begin
   port[psgport] := vol(channel, value);
end;

procedure mute;
var
   i: integer;
begin
   for i := 0 to 3 do
      setvol(i, 15);
end;

{ set tone half period for channel }
function tonelo(channel: chantype; value: tonetype): byte;
begin
   tonelo := $80 or (channel shl 5) or (value and $f)
end;

function tonehi(value: tonetype): byte;
begin
   tonehi := (value shr 4) and $3f;
end;

procedure settone(channel: chantype; value: tonetype);
begin
   port[psgport] := tonelo(channel, value);
   if channel < 3 then
      port[psgport] := tonehi(value);
end;

{ calculate tone half period from frequency }
function fromfreq(value: real): tonetype;
var
   tone: integer;
begin
   tone := round(refclk / (32 * value));
   if tone < 1 then
      tone := 1
   else if tone > 1023 then
      tone := 1023;
   fromfreq := tone;
end;

{ build an even-tempered scale from C2 to B8
  See: https://en.wikipedia.org/wiki/Twelfth_root_of_two }
procedure buildscale;
var
   i: integer;
   next: real;
begin
   next := 65.40639133; { start at C2 }
   for i := 1 to 84 do
   begin
      scale[i] := fromfreq(next);
      next := next * 1.059463094359; { increase by 12th root of 2 }
   end;
end;

{ play a music macro string using GW-BASIC syntax }
procedure play(song: songtype; channel: chantype);

var
   i: integer;
   j: integer;
   c: char;
   pitch: integer;
   deflen: integer;
   len: integer;
   articulation: real;
   duration: real;
   octave: integer;
   tempo: integer;
   volume: integer;
   script: array[1..1024] of integer;

   { parse a number from the song string }
   function parsenum(var output: integer): boolean;
   label stop;
   begin
      output := 0;
      parsenum := false;
      while i <= length(song) do
      begin
         if (song[i] < '0') or (song[i] > '9') then
            goto stop;
         parsenum := true;
         output := 10 * output + integer(song[i]) - integer('0');
         i := i + 1;
      end;
      stop:
   end;

begin
   { set defaults }
   pitch := 0;
   deflen := 4;
   octave := 4;
   articulation := 7.0 / 8.0;
   tempo := 120;
   volume := 8;
   j := 1;
   i := 1;

   { compile music expression into array of pokes and delays }
   while i <= length(song) do
   begin
      c := upcase(song[i]);
      i := i + 1;
      case c of
         'A'..'G', 'N', 'P': { note }
            begin
               if c = 'N' then { note specified by number }
                  begin
                     len := deflen; { always default length }
                     { note specified as number }
                     if not parsenum(pitch) then
                        begin
                           writeln('Error parsing pitch.');
                           pitch := 0;
                        end;
                  end
               else
                  begin
                     { note specified by name }
                     case c of 
                        'P': pitch := 0;
                        'C': pitch := 1;
                        'D': pitch := 3;
                        'E': pitch := 5;
                        'F': pitch := 6;
                        'G': pitch := 8;
                        'A': pitch := 10;
                        'B': pitch := 12;
                     end;

                     { set tone }
                     if pitch > 0 then 
                        begin
                           if i <= length(song) then
                              { flat }
                              if song[i] = '-' then 
                                 begin
                                    pitch := pitch - 1;
                                    i := i + 1;
                                 end
                              { sharp }
                              else if (song[i] = '+') or (song[i] = '#') then
                                 begin
                                    pitch := pitch + 1;
                                    i := i + 1;
                                 end;
                           pitch := pitch + octave * 12;
                        end;

                     { get length, or use default }
                     if not parsenum(len) then
                        len := deflen;
                  end;

               { calculate number of milliseconds corresponding to note length }
               duration := (60.0 / tempo) * (4.0 / len) * 1000;

               { extend length of notes followed by . }
               while song[i] = '.' do
                  begin
                     duration := duration * 3.0 / 2.0;
                     i := i + 1;
                  end;

               if pitch > 0 then { note }
                  begin
                     { set tone }
                     script[j] := tonelo(channel, scale[pitch]);
                     script[j+1] := tonehi(scale[pitch]);
                     script[j+2] := vol(channel, 15 - volume);
                     j := j + 3;

                     { wait for note duration }
                     script[j] := -round(duration * articulation); 
                     j := j + 1;

                     { pause between notes }
                     if articulation < 1 then
                     begin
                        script[j] := vol(channel, 15); 
                        script[j+1] := -round(duration * (1 - articulation));
                        j := j + 2;
                     end;
                  end
               else { rest }
                  begin
                     script[j] := -round(duration);
                     j := j + 1;
                  end;
            end;
         'L': { set note length }
            if not parsenum(deflen) then
               writeln('Error parsing default length.');
         'M': { set articulation style }
            begin
               if i <= length(song) then
                  begin
                     case upcase(song[i]) of
                        'L': articulation := 1;            { legato }
                        'S': articulation := 3.0 / 4.0;    { staccato }
                        'N': articulation := 7.0 / 8.0;    { normal }
                        else writeln('Error parsing articulation.');
                     end;
                     i := i + 1;
                  end;
            end;
         'O': { set octave }
            if not parsenum(octave) then
               writeln('Error parsing octave.');
         'T': { set tempo }
            if not parsenum(tempo) then
               writeln('Error parsing tempo.');
         'V':
            if not parsenum(volume) then
               writeln('Error parsing volume.');
         '>': { increase octave }
            if octave < 6 then
               octave := octave + 1;
         '<': { decrease octave }
            if octave > 0 then
               octave := octave - 1;
      end;
   end;

   { execute compiled expression }
   for i := 1 to j - 1 do
      begin
         if script[i] < 0 then
            delay(-script[i])
         else if script[i] <= 255 then
            port[psgport] := script[i];
      end;

   mute;
end;

begin
   buildscale;
   {setmux;} { comment out on RC2014 }
   mute;
   play('mnt200o3l8a4efg4fed4dfa4gfe4efl4gafdd', 0);
end.