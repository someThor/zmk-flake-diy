#!/usr/bin/env bash

# uv tool install keymap-drawer
keymap -c my_config.yaml draw -d ../boards/shields/flakem_diy/flakem_diy-layouts.dtsi flakem-diy.yaml > flakem-diy.svg

# sudo apt install imagemagick
#convert -background transparent flakem-diy.svg flakem-diy.png

# Imagemagick7 (require inkscape for glyphs)
# nix-shell -p imagemagick inkscape-with-extensions
magick -background transparent flakem-diy.svg flakem-diy.png

# sudo apt install inkscape
#inkscape flakem-diy.svg \
#        --export-type=png \
#        --export-filename=flakem-diy.png \
#        --export-dpi=300
