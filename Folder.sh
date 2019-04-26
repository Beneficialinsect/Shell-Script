#!/bin/bash 

##method 1
function CheckDirFile()
{
    for FileName in `ls $1`
    do
        NewFileName=$1"/"$FileName
        if [ -d $NewFileName ]
        then
            CheckDirFile $NewFileName
        else
            echo $NewFileName
        fi
    done
}


if [[ $# -lt 1 ]];
then 
    echo "Using method: Folder.sh PATH"
    exit
fi

CheckingPath=$1

CheckDirFile $CheckingPath

