#!/bin/sh

#########################################################
# Author: Okan Barut                                    #
# Copyright © 2019, Okan Barut, All rights reserved     #
#########################################################

# Title:        Treesize
# Details:      Calculates the size of folders inside pwd and prints them in human readable form
# Tool:         bash
# Usage:        ./treesize.sh

#/bin/sh

du -sch * | sort -h
