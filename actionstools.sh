 
#!/bin/bash
# Simple script to launch several tools from the command line

# Include functions from other file(s)
source toolsmenu.sh
# ...

# Main body
read $Action
case $Action in
  1 )
    #launch antivirus tools
    # ...
    LOGFILE="/var/log/clamav/clamav-$(date +'%Y-%m-%d').log";
    DIRTOSCAN=".";

    for S in ${DIRTOSCAN}; do
    DIRSIZE=$(du -sh "$S" 2>/dev/null | cut -f1);

    echo "Starting a daily scan of "$S" directory.
    Amount of data to be scanned is "$DIRSIZE".";

    clamscan -ri "$S" >> "$LOGFILE";

    # get the value of "Infected lines"
    MALWARE=$(tail "$LOGFILE"|grep Infected|cut -d" " -f3);


    if [ "$MALWARE" -ne "0" ];then
    echo "Malware Found";
    fi
    done

    exit 0
    ;;

  2 )
    #Analyse a directory
    #Check permissions
    # ...
    echo "Enter your filename"
    read newfile1
    if [ -f "$newfile1" ]
    then
            echo "File is found"
    else
        echo "File is not found"
    fi


    exit 0
    ;;
  3 )
    #Make a back up with tar
    # ...

        echo 'What do you want to copy'
        read backup_files

        echo 'Where'
        read dest

        day=$(date +%A)
        hostname=$(hostname -s)
        archive_file="$hostname-$day.tgz"

        tar czf $dest/$archive_file $backup_files

        echo "Backup finished"
    ;;

  * )
    echo "sorry, wong option"
    exit 1
    ;;

  esac

  exit 0
