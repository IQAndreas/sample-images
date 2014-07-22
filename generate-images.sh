#!/bin/bash

# I could have these be arguments, but honestly, I don't run this script often enough for the extra work involved to be pay off.
NUM_IMAGES=100
SIZE_X=100
SIZE_Y=100

COUNTER=0
while [  $COUNTER -lt $NUM_IMAGES ]; do
	# See 'lorempixel.com' for a list of all options
	curl "http://lorempixel.com/$SIZE_X/$SIZE_Y/" -o "$COUNTER.jpg"
	let COUNTER=COUNTER+1 
done
