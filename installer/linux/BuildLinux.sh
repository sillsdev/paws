#! /usr/bin/bash
# Build Linux installer; see ReadmeLinuxInstaller.txt
VERSION=$1
echo PrepInput
./PrepInput.sh
echo CreateLinuxApp
./CreateLinuxApp.sh
echo LinuxInstaller
./LinuxInstaller.sh $VERSION

