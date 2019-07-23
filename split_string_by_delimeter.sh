#!/bin/sh

#########################################################
# Author: Okan Barut                                    #
# Copyright © 2019, Okan Barut, All rights reserved     #
#########################################################

# Title:        Split input string based on a specified delimeter
# Details:      Will split it no matter what, does not care about breaking apart words etcç
# Tool:         sh
# Usage:        cat textbook | ./split_string_by_delimeter.sh .

# Take command line string input from stdin pipe
read object

# Apply action based on object
(IFS="$1"; for word in $object; do echo "$word"; done)
