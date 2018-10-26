# SN76489 Sound Card for RC2014

This is a SN76489-based sound card for the RC2014.  It is a very simple chip, only capable of producing square waves and a noise channel, without any envelope control or filters. This chip was used in the TI-99/4A, ColecoVision, Sega SG-1000, Sega Master System, and Sega Genesis, IBM PCjr and Tandy-compatibles, BBC Micro, as well as many arcade games.

The board can optionally support two chips for 6 channel stereo sound.  If stereo sound is not desired, then the second chip can be omitted.  

The board uses two 138 decoders and a set of jumpers to decode the address, but the second decoder can be omitted if desired.  With only one decoder, each chip will occupy 32 addresses.  With two decoders, the decoding can be narrowed to a range of 4 addresses per chip.  Each chip's address can be individually configured via jumpers.  If using the second decoder, both chips must be assigned a 4 address range within the same 32 address block.

Currently I have tested this circuit on a breadboard but I have not manufactured the PCBs yet.

## Addresses Decoding

- J6/J7 configure the left chip, and J8/J9 configure the right chip.
- J7/J9 selects the top 3 bits of the address, with the following ranges, from top to bottom: 00-1F, 20-3F, 40-5F, 60-7F, 80-9F, A0-BF, C0-DF, E0-FF
- J6/J8 selects the next 3 bits of the address. In the bottom position, the second decoder is not used, so the full 32-address range will match. Each of the upper 8 positions selects a range of 4 addresses: X0-X3, X4-X7, X8-XB, XC-XF, Y0-Y3, Y4-Y7, Y8-YB, and YC-YF, where X is the lower half and Y is the upper half of the 32-address range selected by J7/J9.
- J8 has one additional jumper in the topmost position which completely disables the right chip.

A few examples:

- For the full ColecoVision address range: all jumpers in the bottom position (Both chips E0-FF). Set jumper to mono to ignore second chip.
- For ColecoVision compatibility with most games using a smaller address range:  J7 in the bottom position, J9 doesn't matter, J6 in position 8, J8 in position 7.  (Left chip FC-FF, Right chip F8-FB)
- For Sord M5 compatibility J7/J9 in position 2, J6 in position 1, J8 in position 2 (Left chip 20-23, Right chip 24-27).

## Resources

- [SN76489 Manual](http://www.vgmpf.com/Wiki/images/7/78/SN76489AN_-_Manual.pdf)
- [rc9918](https://github.com/jblang/rc9918): my other RC2014 project can be used with this board to build a ColecoVision.
- [z80ctrl](https://github.com/jblang/z80ctrl): my other RC2014 project used to emulate ColecoVision controllers.

## License

Copyright 2018 J.B. Langston

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
