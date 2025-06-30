# RGB Region Selector in MATLAB

This MATLAB script allows users to interactively select a region of an image and calculates the average
RGB (Red, Green, Blue) values within the selected portion.

## Features

- Load any standard image file (JPG, PNG, BMP, TIFF)
- Interactively select a rectangular region using the mouse
- Automatically computes and displays the average RGB values of the selected area

## Requirements

- MATLAB R2014b or later (for compatibility with `imrect`)

## How to Use

1. **Run the script**:
    ```matlab
    select_rgb_region
    ```

2. **Select an image** from your computer when prompted.

3. An image viewer will open. Use your mouse to draw a rectangle on the image over the region of interest.

4. Once the region is selected, release the mouse and the script will compute the average RGB values.

5. The result will be printed in the MATLAB Command Window:

    Average RGB values of selected region:
    Red:   xxx.xx
    Green: xxx.xx
    Blue:  xxx.xx


