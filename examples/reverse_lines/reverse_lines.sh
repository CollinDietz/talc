#!/bin/bash

lines=()   # initialize an empty array to store the lines
while read -r line || [[ -n "$line" ]]; do   # read stdin line by line
  lines+=("$line")   # append the line to the array
done < /dev/stdin   # read from stdin

for ((i=${#lines[@]}-1; i>=0; i--)); do   # iterate over the array in reverse order
  rev_line=$(echo "${lines[$i]}" | rev)   # reverse the string on the line
  echo "$rev_line"   # output the reversed line
done
