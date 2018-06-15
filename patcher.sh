#!/bin/sh

# Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher
MUSTANG=$PATCHER_PATH/mustang
CUSTOM=$PATCHER_PATH/custom

# Clean up first
cd $ROM_TREE/build
cd $ROM_TREE/frameworks/base
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Settings
git clean -f -d && git reset --hard


cd $ROM_TREE

### RR-MUSTANG's patches
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $MUSTANG/frameworks-base0.patch
patch -d packages/apps/Settings			-p1 -s -N --no-backup-if-mismatch < $MUSTANG/resurrection_packages_apps_settings0.patch

### Custom patches
