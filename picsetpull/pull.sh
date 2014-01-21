#!/bin/bash

realroot="/Volumes/DataStore/Picsets/"
cd "$realroot"
root="."
number_of_random_directories=10

# read this file, one by one and add to array
filelistfile="folderlist.txt"
dirs=()

while read line; do
	dirs+=("$line")
done <$filelistfile

# seed the random number generator
RANDOM=$$

# echo "the dirs: ${dirs[@]}"
dirscount=${#dirs[@]}
elected_directories_ids=()
number_found=0

# echo ${dirs[@]}

while [ $number_found -lt $number_of_random_directories ]; do
	randomid=$((RANDOM % dirscount))

	# echo "random id generated: $randomid"
	
	found=0
	for member in ${lected_directories[@]}; do
		if [ $member = "${dirs[$randomid]}" ]; then
			found=1
			# echo "$member is found already! skipping"
			break
		fi
	done

	if [ $found -eq 0 ]; then
		file=${dirs[$randomid]}
		if [[ -d $file ]]; then
			selected_directories_ids+=($randomid)
			((number_found++))
		fi
	fi
done

# copy to desktop
OUT="/Users/aco/Desktop/picsets"
rm -rf $OUT
mkdir -p $OUT


for dirid in ${selected_directories_ids[@]}; do
	dir=${dirs[$dirid]}
	cp -R "$dir" "$OUT"
done

cd $OUT

find . \( -name "*.jpeg" -o -name "*.jpg" \) -print0 | xargs -0 sips -Z 1024

