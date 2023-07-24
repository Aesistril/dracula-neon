#!/bin/bash

# Please excuse my shitty bash scripting skills :3

# Go to directory of this script in case the user runs it from another directory
OLD_PWD=$(pwd)
SCRIPT_DIR=$(dirname "$(realpath "$0")")
cd $SCRIPT_DIR

# Create the directory structure
rm -rf build
mkdir original build
mkdir ./build/Kvantum
mkdir ./build/Kvantum/GraphiteDraculaNeon

# Clone repositories
cd original
git clone --depth 1 https://github.com/vinceliuice/Graphite-kde-theme
cd ..

# Copy original files and rename them
cp ./original/Graphite-kde-theme/Kvantum/Graphite/GraphiteDark.kvconfig ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.kvconfig
cp ./original/Graphite-kde-theme/Kvantum/Graphite/GraphiteDark.svg ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.svg

# Patch
patch ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.kvconfig ./patches/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.kvconfig.patch 
patch ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.svg ./patches/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.svg.patch 

# Return to previous working directory before it was changed
cd $OLD_PWD