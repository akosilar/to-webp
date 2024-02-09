#!/bin/bash

# Directory containing the images to be converted
SOURCE_DIR="dest"

# Directory where the converted WebP images will be saved
TARGET_DIR="final"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Loop through all images in the source directory
for file in "$SOURCE_DIR"/*; do
  # Extract filename without extension
  filename=$(basename "$file")
  base=${filename%.*}

  # Specify the output format and file location
  output="$TARGET_DIR/${base}.webp"

  # Convert the image to WebP format
  magick "$file" "$output"

  echo "Converted $file to $output"
done

echo "Conversion complete."
