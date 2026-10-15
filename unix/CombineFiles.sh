#!/bin/sh

# Get the directory where the script is being run
OUTPUT_DIR="$(pwd)"
OUTPUT_FILE="$OUTPUT_DIR/combined_files.txt"

# Clear previous output if it exists
> "$OUTPUT_FILE"

# Loop through all dropped/passed files
for file in "$@"; do
    # Check if it is a valid file (skips directories if accidentally selected)
    if [ -f "$file" ]; then
        echo "========================================" >> "$OUTPUT_FILE"
        echo "FILE: $(basename "$file")" >> "$OUTPUT_FILE"
        echo "========================================" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        
        cat "$file" >> "$OUTPUT_FILE"
        
        echo "" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
done

echo "Done! Saved to $OUTPUT_FILE"
