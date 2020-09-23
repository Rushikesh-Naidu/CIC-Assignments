#!/bin/bash -x

past=`ls -f ~/Desktop/RushikeshBL/terminalcommands/ | find * -mtime -7`;

echo $past;

echo "I'm using copy command just to not move my important files to other folder"
cp *$past ~/Desktop/RushikeshBL/terminalcommands/linux-content/backup/;

echo `ls ~/Desktop/RushikeshBL/terminalcommands/linux-content/backup/`;
