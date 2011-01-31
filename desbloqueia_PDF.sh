#!/bin/bash

while [ "$1" ]; do
    pdftops "$1" ".$1.ps" && ps2pdf ".$1.ps" "`basename \"$1\" '.pdf'`-unlocked.pdf" && rm -f ".$1.ps" && echo " **** $1 => OK ****"
    shift
done

