#!/bin/sh

#########################################################
# Author: Okan Barut                                    #
# Copyright © 2019, Okan Barut, All rights reserved     #
#########################################################

# Title:        Copy to clipboard
# Details:      Copies a single line to clipboard using xclip
# Tool:         sh, xclip
# Usage:        echo "text to copy" | ./to_clipboard.sh

# Take command line string input from stdin pipe
read object

# Apply action to object
echo $object | xclip -selection c

# Give info to user if copy is successfull
if [ $? -eq 0 ]; then
    echo "Copied to clipboard!"
else
    echo "ERROR! Could not copy to clipboard. Perhaps install xclip?"
fi
