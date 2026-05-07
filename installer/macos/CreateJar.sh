#! /bin/bash

cd ../../bin
# jar cmf META-INF/MANIFEST.MF paws.jar .
jar --create --file paws.jar --main-class org.sil.paws.MainApp .
cp paws.jar ../installer/macos/input > nul
rm paws.jar > nul
cd ../installer/macos
