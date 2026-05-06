@echo off
cd ..\..\bin
REM jar cmf META-INF\MANIFEST.MF pcpatreditor.jar .
jar --create --file paws.jar --main-class org.sil.paws.MainApp .
copy paws.jar ..\installer\windows\input > nul
del paws.jar > nul
cd ..\installer\windows

