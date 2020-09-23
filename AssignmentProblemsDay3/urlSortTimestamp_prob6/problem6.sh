#!/bin/bash -x

cat access.log | awk -F'[' '{print $2}' | awk -F'"' '{print $4}' | sort | uniq -c | tail -4;
