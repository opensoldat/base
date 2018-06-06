#!/bin/bash

PATCH_DIR=$(cd $(dirname "$0");pwd)
if [ $# -eq 0 ]; then
        TARGET_DIR="$PATCH_DIR"
elif [ $# -eq 1 ]; then
        TARGET_DIR=$(cd "$1";pwd)
else
        echo "Usage: ./update.sh soldatserver_dir"
        echo "If you want to patch multiple servers at the same time you can use the *nix utility find:"
        echo "Example: find server* -maxdepth 0 -exec ./update.sh \"{}\" \\;"
        exit
fi

if [ ! -d "$TARGET_DIR" ]; then
        echo "Usage: ./update.sh soldatserver_dir"
        exit
fi

if [ ! -f "$TARGET_DIR/soldat.ini" ]; then
        echo "Usage: ./update.sh soldatserver_dir"
        exit
fi

echo "Patching server: $TARGET_DIR"

cd $TARGET_DIR

if [ "$PATCH_DIR" != "$TARGET_DIR" ]; then
        cp -r $PATCH_DIR/* .
fi

rm -rf ./update.txt ./update.sh ./soldatserver.exe ./soldatserver_lazarus.exe ./soldatserver_delphi.exe ./soldatserver_legacy.exe ./soldatserver_lazarus ./soldatserver_delphi
if [ -f "./soldatserver" ]; then
        chmod +x ./soldatserver
fi
if [ -f "./soldatserver_legacy" ]; then
        chmod +x ./soldatserver_legacy
fi

if [ -f "./soldatserver_osx" ]; then
        chmod +x ./soldatserver_osx
fi

echo "Patched!"
