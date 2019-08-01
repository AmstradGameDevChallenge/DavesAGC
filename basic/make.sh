#!/bin/bash
SOURCE=rpg.bas
TARGET=rpg.dsk

# Create DSK
idsk $TARGET -n

# CONVERT TO MSDOS
unix2dos $SOURCE

# ADD TO DSK
idsk $TARGET -i $SOURCE -t 0