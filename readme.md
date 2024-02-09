# Image to WebP Conversion Script

This script automates the conversion of images from various formats to WebP format. It scans a specified source directory for images, converts each image to WebP format using ImageMagick, and saves the converted images to a target directory.

## Prerequisites

- ImageMagick: The script uses ImageMagick for image conversion. Ensure that ImageMagick is installed on your system. Visit [ImageMagick's official website](https://imagemagick.org) for installation instructions.

## Usage

1. **Set Up Directories:**
   - Modify the `SOURCE_DIR` variable in the script to point to the directory containing the images you want to convert.
   - Modify the `TARGET_DIR` variable to specify the directory where you want the converted WebP images to be saved.

2. **Run the Script:**
   - Make the script executable: `chmod +x convert_to_webp.sh`
   - Execute the script: `./convert_to_webp.sh`

## Script Details

- **Source Directory (`SOURCE_DIR`):** The directory containing the images to be converted. Default is set to `dest`.
- **Target Directory (`TARGET_DIR`):** The directory where the converted WebP images will be saved. Default is set to `final`.
- The script creates the target directory if it does not exist.
- It then loops through all images in the source directory, converting each to WebP format and saving it to the target directory with the same base filename.

## Customization

You can modify the script to change the source and target directories by editing the `SOURCE_DIR` and `TARGET_DIR` variables at the top of the script.
## Script Modifications for Resize and Rotate

To resize and rotate images during the conversion process, you will need to modify the conversion line in the script. Here's how you can do it:

### Resizing Images

To resize an image, add the `-resize` option followed by the desired dimensions. For example, to resize an image to 800x600 pixels, modify the conversion line as follows:

```bash
magick "$file" -resize 800x600 "$output"
```

### Rotating Images

```bash
magick "$file" -rotate 90 "$output"
```
## Troubleshooting

Ensure that ImageMagick is correctly installed and accessible from your command line. If you encounter permission issues while executing the script, check that you have the necessary permissions for the directories involved.

## License

Specify the license under which the script is released.

## Contributing

Instructions for how others can contribute to the project.

## Contact

Provide information on how to contact you for more information or support.
