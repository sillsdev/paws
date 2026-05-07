#! /bin/bash
if [ -d installtemp ]; then
 echo "	removing installtemp"
 rm -rf installtemp
fi
echo "	invoking jpackage, part 2"
# 	--verbose \
jpackage --type dmg \
	--copyright "2021-2026 SIL International" \
	--description "Parser & Writer for Syntax" \
	--name PAWS \
	--resource-dir input/resources \
	--app-image output/PAWS.app \
        --mac-package-name "Parser & Writer for Syntax" \
	--mac-sign \
	--mac-signing-key-user-name "Developer ID Application: Summer Institute of Linguistics, Inc (SIL) (3YE4W86L3G)" \
	--license-file License.txt \
	--temp installtemp \
	--icon input/PAWS.icns \
	--app-version $1 \
	--file-associations paws.properties \
	--vendor "SIL Global"

