#!/bin/bash -x
dasedir=/home/ubuntu/sani.fol
DATA=${dasedir}/data 
BACKUP=${dasedir}/backup 
HISTORY=${dasedir}/historyy
cut -c 1-4 ${DATA}/mobile.txt > x
cut -c 3-6 ${DATA}/mobile.txt > y
cut -c 7-10 ${DATA}/mobile.txt > z
timestam=`date '+%d/%m/%y %H:%M:%S'`
today=`date '+%d%m%y%H%M%S'`
echo ${timestam} >>${HISTORY}/hist.txt
paste -d "-" x y z >>${HISTORY}/hist.txt
cp ${DATA}/mobile.txt ${BACKUP}/backup.${today}.txt
rm x y z
