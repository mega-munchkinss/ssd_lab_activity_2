#! /bin/bash

if [ $# -eq 1 ]&&[ -f $1 ];then
    records=$(awk '{print FNR}' $1|tail -1)
    let "records=records/2"
    cat $1 | awk NR==$records
else
    echo "INVALID INPUT"
fi