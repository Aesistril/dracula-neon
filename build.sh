#!/bin/bash

# Please excuse my shitty bash scripting skills :3

# Go to directory of this script in case the user runs it from another directory
OLD_PWD=$(pwd)
SCRIPT_DIR=$(dirname "$(realpath "$0")")
cd $SCRIPT_DIR

# Create the directory structure
rm -rf build
mkdir build
mkdir ./build/Kvantum
mkdir ./build/Kvantum/GraphiteDraculaNeon
mkdir ./build/kde-color-scheme
mkdir ./build/konsole-color-scheme
mkdir ./build/aurorae
mkdir ./build/aurorae/Graphite-dark-round-draculaneon

# Clone repositories
cd original
git clone --depth 1 https://github.com/vinceliuice/Graphite-kde-theme
git clone --depth 1 https://github.com/dracula/konsole dracula-konsole
git clone --depth 1 https://github.com/vinceliuice/Graphite-gtk-theme.git
cd ..

# Copy original files and rename them
cp ./original/Graphite-kde-theme/Kvantum/Graphite/GraphiteDark.kvconfig ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.kvconfig
cp ./original/Graphite-kde-theme/Kvantum/Graphite/GraphiteDark.svg ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.svg
cp ./original/dracula-konsole/Dracula.colorscheme ./build/konsole-color-scheme/DraculaNeon.colorscheme
cp -r ./original/Graphite-kde-theme/aurorae/Graphite-dark-round/* ./build/aurorae/Graphite-dark-round-draculaneon 
mv ./build/aurorae/Graphite-dark-round-draculaneon/Graphite-dark-roundrc ./build/aurorae/Graphite-dark-round-draculaneon/Graphite-dark-round-draculaneonrc
cp -r ./original/kde-color-scheme ./build

# Patch
patch ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.kvconfig ./patches/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.kvconfig.patch 
patch ./build/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.svg ./patches/Kvantum/GraphiteDraculaNeon/GraphiteDraculaNeon.svg.patch 
patch ./build/konsole-color-scheme/DraculaNeon.colorscheme ./patches/konsole-color-scheme/DraculaNeon.colorscheme.patch
patch ./build/aurorae/Graphite-dark-round-draculaneon/metadata.desktop ./patches/aurorae/Graphite-dark-round-draculaneon/metadata.desktop.patch
patch ./build/aurorae/Graphite-dark-round-draculaneon/decoration.svg ./patches/aurorae/Graphite-dark-round-draculaneon/decoration.svg.patch

# Return to previous working directory before it was changed
cd $OLD_PWD
