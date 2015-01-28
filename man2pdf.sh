#!/bin/bash
###################################################
#simple script to convert man files into pdf files
#It will creat a folder within your home directory
#called man2pdf which will store all your converted
#man files
################################################### 

#First create directory if not already
mkdir -p $HOME/man2pdf
DIR="$HOME/man2pdf/"
MANFILES="$@"


for i in $MANFILES
do
###Create the ps files
man -t "${i}" > "$DIR${i}"
###Convert the ps files 
ps2pdf "$DIR${i}" "$DIR${i}.pdf"
###clean the old files###
rm "$DIR${i}"
done

echo "####################################"
echo "#   ___     _ _    _        _      #"
echo "#  | __|  _/ / |__(_)_ _ __/ |___  #"
echo "#  | _| || | | / _| | '_/ _| / -_) #"
echo "#  |_| \_,_|_|_\__|_|_| \__|_\___| #"
echo "#                                  #" 
echo "####################################"                           
echo "your pdf man files are stored at"
echo "$DIR"
exit 0
