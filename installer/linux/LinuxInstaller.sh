#! /usr/bin/bash
if [ -d installtemp ]; then
 echo "	removing installtemp"
 rm -rf installtemp
fi
echo "	invoking jpackage, part 2"
VERSION=$1
# 	--verbose \
#	--linux-shortcut \
ls -l -R
jpackage --type deb \
	--copyright "2021-2026 SIL International" \
	--description "Parser & Writer For Syntax" \
	--name PAWS \
	--install-dir /opt/sil \
	--resource-dir jpackageResources \
	--app-image output/PAWS \
	--linux-menu-group "Education" \
	--license-file License.txt \
	--icon input/PAWS.png \
	--temp installtemp \
	--app-version $1 \
	--file-associations paws.properties \
	--vendor "SIL International"
# ./FixDesktopShortcutInDebFile.sh $VERSION
