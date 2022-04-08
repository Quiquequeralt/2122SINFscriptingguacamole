#!/bin/bash
filename=testfile
    if [[ -f “$filename“ ]];
        then
            echo “$filename has found.”
        else
            echo “$filename has not been found”
    fi
