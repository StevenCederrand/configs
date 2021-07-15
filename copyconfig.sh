#!/bin/bash

echo "Removing $1 folder from ~/repos/config"
rm -rf ~/repos/config/$1
echo "Copying $1 from ~/.config/"
cp -rf ~/.config/$1 ~/repos/config/$1
