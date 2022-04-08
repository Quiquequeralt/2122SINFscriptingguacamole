#! bin/bash
    echo "Type your directory name"
        read Dir1
            if [ -d "Dir1" ]
                then
                    echo "directory has been found"
                else
                    echo "directory has not found"
            fi

exit 0
