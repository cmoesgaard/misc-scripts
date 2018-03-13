#!/bin/bash

# Sort-of easy way to switch between US and DK layouts

LAYOUT=$(setxkbmap -query | grep layout | awk '{ print $2 }')

if [[ $LAYOUT == 'dk' ]] 
then
    setxkbmap us -option caps:escape
    notify-send Keyboard "Layout changed to US"
else
    setxkbmap dk -option caps:escape
    notify-send Keyboard "Layout changed to DK"
fi
