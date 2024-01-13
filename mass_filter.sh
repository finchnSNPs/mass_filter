#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <directory> <lower_bound_mass> <upper_bound_mass> <output_directory>"
    exit 1
fi

input_directory="$1"
lower_bound_mass="$2"
upper_bound_mass="$3"
output_directory="$4"

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Iterate through each file in the input directory
for file in "$input_directory"/*.txt; do
    filename=$(basename "$file")
    output_file="$output_directory/$filename"

    # Use awk to filter rows based on mass bounds
    awk -v lower="$lower_bound_mass" -v upper="$upper_bound_mass" '$1 < lower || $1 > upper {print}' "$file" > "$output_file"
done

echo "Filtering complete. Output files are in $output_directory."
