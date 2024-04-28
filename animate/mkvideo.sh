#!/bin/sh
#$1 Specifies the Date of the folder to be accessed - E.g. '2024-08-24'
#$2 Specifies the Region of the folder to be accessed - E.g. 'us' or 'eu'

base_folder="$(dirname $(pwd))"
output="$base_folder/animate/videos"
image_data="$base_folder/data/get_states/$1/images/$2"

ffmpeg -framerate 24 -pattern_type glob -i "${image_data}/*.png" $output/$2_movements_$1.mp4
