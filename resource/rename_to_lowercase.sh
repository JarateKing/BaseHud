#!/bin/sh

# make all subfolders lowercase
for d in $(find "." -type d | grep [A-Z] | grep -v fonts); do
	newd="$(echo "$d" | tr 'A-Z' 'a-z')"
	mkdir "$newd"
	for f in $(find "$d" -maxdepth 1 -type f); do
		mv "$f" "$newd"
	done
done

# delete old capitalized folders
for d in $(find "." -type d | grep [A-Z] | grep -v fonts); do
	rm -rf "$d"
done

# make all files lowercase
for d in $(find "." -type d | grep -v fonts); do
	for f in $(find "$d" -maxdepth 1 -type f | grep [A-Z]); do
		rename 'y/A-Z/a-z/' "$f"
	done
done