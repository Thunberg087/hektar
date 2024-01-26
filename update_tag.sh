#!/bin/bash

new_tag="$1" 

# File path
file_path="./app/envs/dev/version.yaml"  

# Check if the file exists
if [ -f "$file_path" ]; then
    # Use sed to update the tag number
    sed -i "s/tag: [0-9.]\+/tag: $new_tag/" "$file_path"
    echo "Tag number updated to $new_tag"
else
    echo "File not found: $file_path"
fi