#!/bin/bash
SOURCE=rpg.bas
TARGET=agc03rpg

# Create DSK
idsk ${TARGET}.dsk -n

grep -v "^1 REM" $SOURCE > ${TARGET}.bas
# CONVERT TO MSDOS
unix2dos ${TARGET}.bas

# ADD TO DSK
idsk ${TARGET}.dsk -i ${TARGET}.bas -t 0
rm ${TARGET}.bas