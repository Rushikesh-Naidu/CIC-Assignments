#!/bin/bash -x

cat access.log | awk -F'"' '{print $8}' | sort | uniq -c | tail -4;
