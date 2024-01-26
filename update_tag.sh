#!/bin/bash

# Set the new tag number
new_tag="$1"  # You can replace this with the desired tag

# File path
file_path="path/to/your/file.yaml"  # Replace with the actual path to your file

# Check if the file exists
if [ -f "$file_path" ]; then
    # Use sed to update the tag number
    sed -i "s/tag: [0-9.]\+/tag: $new_tag/" "$file_path"
    echo "Tag number updated to $new_tag"
else
    echo "File not found: $file_path"
fi