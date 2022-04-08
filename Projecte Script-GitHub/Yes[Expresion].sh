#!/bin/bash
filename=myfile.txt
    if [ -f "$filename" ];
        then
            echo "$filename has found."
        else
            echo "filename has not been found"
    fi

exit 0
