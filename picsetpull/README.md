# Picset Pull

This script takes a specified number of random directories containing *large* images under a root, resizes them and then copies them to a target output directory.

Must have `sips` installed. Working in Mac OS X 10.8+

# How to use

1. Open the script and modify the `realroot` variable to point to the root directory
2. Make sure that `realroot` directory has a listing of the top-level subdirectories in a text file called folderlist.txt
    - this could be obtained some other way such as through `ls >folderlist.txt`
3. In `number_of_random_directories` specify how many subdirectories are desired
4. Modify the `OUT` variable to specify where the resulting images will be copied
5. Last line also specifies the output image size. With the following command, all jpeg files encountered will be resized to no more than 1024 pixels on the shorter side (width or height)

    find . \( -name "*.jpeg" -o -name "*.jpg" \) -print0 | xargs -0 sips -Z 1024

