#!/bin/bash -x

echo "The fields with URL data in access.log file are as follows: "
cat access.log | awk -F'"' '{print $4}' | sort | uniq -c | tail -4;

