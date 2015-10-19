#!/bin/bash
# Script to sync project files 
# This project will not overrite newer files!

# Usage
# sync-project local-dir remote-dir [file time in minutes]

# check for project dir and remote dir
if [ "$1" == "" ]; then
    echo "Your working directory is required"
    exit 1
fi
if [ "$2" == "" ]; then
    echo "Your remote plus directory is required."
    exit 1
fi
if [ "$3" != "" ]; then
    cmin="-cmin -"
    cmin+="$3"
fi

cd $1

echo "rsync -avzr --files-from=<(/usr/bin/find . -not -name \".*\" -not -path \".*\" $cmin ) ./ $2"
/usr/bin/rsync -avzr --files-from=<(/usr/bin/find . -not -name \".*\" -not -path \".*\" $cmin ) ./ $2