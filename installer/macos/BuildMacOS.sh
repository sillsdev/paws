#! /bin/bash
# Build macOS installer; see ReadmeMacOSInstaller.txt
echo PrepInput
./PrepInput.sh
echo CreateMacOSApp
./CreateMacOSApp.sh
echo MacOsInstaller
./MacOSInstaller.sh $1

