#!/bin/sh
ffmpeg -framerate 24 -pattern_type glob -i '*.png' us_movements_2024-04-28.mp4
