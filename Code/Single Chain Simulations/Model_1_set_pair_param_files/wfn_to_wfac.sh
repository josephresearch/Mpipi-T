#!/bin/bash

# Iterate through each file ending with _set_pair_param.dat
for file in *_set_pair_param.dat; do
    # Check if the file exists and is readable
    if [ -f "$file" ] && [ -r "$file" ]; then
        # Use sed with an empty backup extension for macOS compatibility
        sed -i '' 's/wfn/wfac/g' "$file"
        echo "Replaced in file: $file"
    else
        echo "Error: Could not read file $file or file does not exist."
    fi
done

