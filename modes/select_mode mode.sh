#!/bin/bash

## Usage: ./select_mode mode(0-7)

gatttool -b $BULB_MAC --char-write-req -a 0x0012 -n `./createpacket.py "[48, 161, $BULB_ID1, $BULB_ID2, 6, 4, $1, 0, 0, 0, 0]"`
