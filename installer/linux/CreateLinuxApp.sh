#! /usr/bin/bash
if [ -d output ]; then
 echo "	Cleaning output"
 rm -rf output > /dev/null
fi
echo "	invoking jpackage, part 1"
# to see more details, add the --verbose option
#	--verbose \
jpackage --type app-image \
	--input input \
	--dest output \
	--name PAWS \
	--main-jar paws.jar \
	--main-class org.sil.paws.MainApp \
	--java-options --enable-native-access=javafx.graphics,javafx.web,com.sun.jna ^
	--icon input/PAWS.png \
	--module-path jmods \
	--vendor "SIL International"
echo "	MoveResources"
./MoveResources.sh

