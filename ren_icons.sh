#!/bin/bash
if [ ! $1 ] || [ ! $2 ]
then
  echo "Usage: $0 <src name> <target name>"
else
	folders=(mdpi hdpi xhdpi xxhdpi xxxhdpi)
	for folder in ${folders[@]}
	do
		foldername=drawable-${folder}
		srcfile=$foldername/$1
    targetfile=$foldername/$2
		if [ ! -d srcfile ]
		then
			mv $srcfile $targetfile
		fi
	done
fi