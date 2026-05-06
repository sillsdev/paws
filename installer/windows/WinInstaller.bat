@echo off
if exist installtemp rmdir installtemp /S /q
echo 	invoking jpackage, pass 2
jpackage --type exe ^
	--copyright "2017-2026 SIL International" ^
	--description "Parser & Writer for Syntax" ^
	--name PAWS ^
	--install-dir "SIL\PAWS" ^
	--resource-dir input/resources ^
	--app-image output/PAWS ^
	--win-menu ^
	--win-shortcut ^
	--license-file License.txt ^
	--icon input/PAWS.ico ^
	--win-upgrade-uuid 868009FD-62E9-4349-9747-D1438E46E669 ^
	--temp installtemp ^
	--app-version %1 ^
	--file-associations paws.properties ^
	--vendor "SIL International" 
