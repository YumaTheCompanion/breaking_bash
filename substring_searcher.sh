#!/bin/sh

#########################################################
# Author: Okan Barut                                    #
# Copyright © 2019, Okan Barut, All rights reserved     #
#########################################################

# Title:        Search for substring in files
# Details:      Contains mode, case insensitive
# Tool:         sh, grep
# Usage:        echo "substring" | ./substring_searcher.sh

# Take command line string input from stdin pipe
read object

# Generate action based on object
action="grep -nrwi . -e '.*$object.*'"

# Apply action to object
echo $action | sh
