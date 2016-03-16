#!/bin/bash

## Usage: ./change_hue color(0-255) brightness(0-100) white_balance(0-255)

gatttool -b $BULB_MAC --char-write-req -a 0x0012 -n `./createpacket.py "[19, 161, $BULB_ID1, $BULB_ID2, 5, 4, $1, $3, 0, 0, 0]"`
gatttool -b $BULB_MAC --char-write-req -a 0x0012 -n `./createpacket.py "[33, 161, $BULB_ID1, $BULB_ID2, 5, 5, 0, 0, $2, 0, 0]"`




