#!/bin/sh

ROM_TREE=$PWD

# Clean up
cd $ROM_TREE/build
cd $ROM_TREE/packages/apps/Settings
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/base
git clean -f -d && git reset --hard


cd $ROM_TREE
