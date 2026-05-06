@echo off
if exist output rmdir output /S /q
REM if exist apptemp rmdir apptemp /S /q
echo 	invoking jpackage, pass 1
REM use --verbose to see more
jpackage --type app-image ^
	--input input ^
	--dest output ^
	--name PAWS ^
	--main-jar paws.jar ^
	--main-class org.sil.paws.MainApp ^
	--icon input/PAWS.ico ^
	--module-path jmods ^
	--vendor "SIL International"
echo 	MoveResources
call MoveResources.bat
