#!/bin/sh
# $1 Specifies the Date of the folder to be accessed - E.g. '2024-08-24'
# $2 Specifies the Image Folder To Be Accessed - E.g. 'scatter' or 'quiver' or 'contourf'
# Example of how to run bash script: $(./mkvideo '2024-08-24' 'scatter')

base_folder="$(dirname $(pwd))"
output="$base_folder/animate/videos"
image_data="$base_folder/data/get_states/$1/$2"

ffmpeg -framerate 24 -pattern_type glob -i "${image_data}/*.png" $output/$1_$2_movements.mp4
