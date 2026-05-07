#! /usr/bin/bash
echo "	Libraries"
if [ ! -d input/libs ]; then
 mkdir -p input/libs
else
 rm -r input/libs/* > /dev/null
fi
cp -r ../../libs/ControlsFX/* input/libs > /dev/null
cp -r ../../libs/JAXB/* input/libs > /dev/null
cp -r ../../libs/jna/* input/libs > /dev/null
cp -r ../../libs/json/* input/libs > /dev/null
cp -r ../../libs/LibJavaDev/* input/libs > /dev/null
cp -r ../../libs/saxon/* input/libs > /dev/null

echo "	Resources"
if [ ! -d input/resources ]; then
 mkdir -p input/resources
else
 rm -r input/resources/* > /dev/null
fi
cp -R ../../resources input/resources
cp PAWS.png input/PAWS.png > /dev/null

echo "	Jar file"
./CreateJar.sh
