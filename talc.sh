#!/usr/bin/env bash
for f in $2/*.in
do
	output=$(diff <(./$1 < $f) ${f/"in"/"out"})
	if [ "$?" -eq 0 ]; then
		printf 🔵
	else
		printf "🔴\n"
		printf "Failure in file: $f\n"
		printf '%s\n' "${output[@]}"
		exit 1
		return
	fi
done
printf "\n"
