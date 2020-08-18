##
## This file is part of the libsigrokdecode project.
##
## Copyright (C) 2020 Daniel Nichols <dan@17acr.com>
##
## With source from:
## Copyright (C) 2014 Matt Ranostay <mranostay@gmail.com>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, see <http://www.gnu.org/licenses/>.
##

import sigrokdecode as srd

class Decoder(srd.Decoder):
    api_version = 3
    id = 'rgb_led_apa'
    name = 'RGB LED (SPI APA/SK)'
    longname = 'RGB LED string decoder (APA102/SK9822)'
    desc = 'RGB LED string protocol (RGB+Brightness values clocked over SPI).'
    license = 'gplv2+'
    inputs = ['spi']
    outputs = []
    tags = ['Display']
    annotations = (
        ('rgb', 'RGB values'),
        ('bright', 'Global Brightness'),
        ('seb', 'Start/End Byte'),
        ('pad', 'Brightness Padding'),
        ('sum', 'LED Summary'),
        ('start', 'Start Frame'),
        ('end', 'End Frame')
    )
    annotation_rows = (
        ('bytes','Bytes', (0,1,2,3)),
        ('sumRow','Summary', (4,5,6))
    )
    def __init__(self):
        self.reset()

    def reset(self):
        self.mosi_bytes = []
        self.nullStarts= []
        self.nullEnds= []
        self.transaction_state=0
        self.next_byte_index=0
        self.rgb_start_sample=0

    def start(self):
        self.out_ann = self.register(srd.OUTPUT_ANN)

    def decode(self, ss, es, data):
        ptype, mosi, miso = data
        #bits sent first
 
        if ptype == 'BITS':
            if self.next_byte_index==0:
                self.firstBits=mosi
            return
        elif ptype != 'DATA':
            return

        if self.transaction_state==0:
            if int(mosi)==0:
                self.put(ss,  es, self.out_ann,[2, ['Start/End Byte', 'Start/End', 'S/E']])   
                self.nullStarts.append(ss)
                self.nullEnds.append(es)    
                return
        else:
            if int(mosi)==0 and self.next_byte_index==0:
                self.transaction_state=0
                self.put(ss,  es, self.out_ann,[2, ['Start/End Byte', 'Start/End', 'S/E']])
                self.nullStarts.append(ss)
                self.nullEnds.append(es)   
                return

        self.transaction_state=1
        
        #transaction started, ready to receive LED data
        if self.next_byte_index==0:

            try:
                self.put(self.nullStarts[-4],self.nullEnds[-1], self.out_ann, [5, ['Start Frame','SF','S']])
            except:
                pass

            try:
                # End frame length calculation from: https://github.com/pololu/apa102-arduino/blob/master/APA102.h
                endLength=len(self.nullStarts)-4 #subtract 4 for next start
                ledsTerminated=endLength*16+1
                self.put(self.nullStarts[0],self.nullEnds[-5], self.out_ann, [6, ['End Frame, <%d LEDs' % (ledsTerminated+1), 'End Frame','EF','E']])
            except:
                pass

            self.nullStarts= []
            self.nullEnds= []
            pad_value = int(mosi) >> 5
            bright_value = int(mosi) % 32
            if pad_value == 7:
                self.put(ss,  es, self.out_ann, [1, ['Global Brightness: 0x%.2x' % bright_value, 'Brightness: 0x%.2x' % bright_value, 'B: 0x%.2x' % bright_value]])
            else: #reverse indexing in bits
                self.put(self.firstBits[7][1],  self.firstBits[5][2], self.out_ann, [3, ['Brightness Padding : 0x%.2x' % pad_value, 'Padding', '%.2x' % pad_value]])
                self.put(self.firstBits[4][1],  self.firstBits[0][2], self.out_ann, [1, ['Global Brightness: 0x%.2x' % bright_value, 'Brightness: 0x%.2x' % bright_value, 'B: 0x%.2x' % bright_value]])
        else:
            if self.next_byte_index==1:
                self.rgb_start_sample=ss
        
        self.mosi_bytes.append(mosi)

        self.next_byte_index+=1

        if self.next_byte_index==4: #all bytes collected
            bright_byte, red, green, blue = self.mosi_bytes
            rgb_value = int(red) << 16 | int(green) << 8 | int(blue)
            self.put(self.rgb_start_sample,es, self.out_ann, [0, ['Color: #%.6x' % rgb_value,'C: %.6x' % rgb_value]])
            self.put(self.firstBits[7][1],es, self.out_ann, [4, ['Brightness: 0x%.2x, Color: #%.6x' % (int(bright_byte) % 32, rgb_value),'B: 0x%.2x, C: #%.6x' % (int(bright_byte) % 32, rgb_value),'0x%.2x,#%.6x' % (int(bright_byte) % 32, rgb_value)]])
            self.next_byte_index=0
            self.mosi_bytes = []
        






                
