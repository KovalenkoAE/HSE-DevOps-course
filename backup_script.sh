#!/bin/bash

read -p "Enter directory name to backup: " DIRNAME
read -p "Enter compression algorithm: " ALGONAME
read -p "Enter archive name: " ARCHNAME

if [ "$ALGONAME" == "gzip" ]
then
	tar -czf - $DIRNAME | openssl enc -e -aes256 -out $ARCHNAME.tar.gz 2>> log.txt
elif [ "$ALGONAME" == "bzip" ]
then
	tar -cjf - $DIRNAME | openssl enc -e -aes256 -out  $ARCHNAME.tar.bz2 2>> log.txt
else
	tar -cf - $DIRNAME | openssl enc -e -aes256 -out $ARCHNAME.tar  2>> log.txt
fi
