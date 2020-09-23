#!/bin/bash -x

echo "Displaying the list of processes"

ps -alf | awk '{print $2 "    " $3 "    " $6}';

echo "Since I'm working on Windows OS, I'm not able to display the %mem and %cpu";
