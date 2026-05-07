#! /bin/bash
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
	--icon input/PAWS.icns \
	--module-path jmods \
	--vendor "SIL International"
#	--vendor "SIL International" \
#	--mac-sign \
#	--mac-signing-key-user-name "Developer ID Application: Summer Institute of Linguistics, Inc (SIL) (3YE4W86L3G)"
echo "	MoveResources"
./MoveResources.sh

