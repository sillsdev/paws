@echo off

REM Libraries
REM echo java_path=%1
echo 	Libraries
if not exist input\libs mkdir input\libs
del /q input\libs\*
copy ..\..\libs\ControlsFX\* input\libs > nul
copy ..\..\libs\JAXB\* input\libs > nul
copy ..\..\libs\jna\* input\libs > nul
copy ..\..\libs\json\* input\libs > nul
copy ..\..\libs\LibJavaDev\* input\libs > nul
copy ..\..\libs\saxon\* input\libs > nul

REM Resources
echo 	Resources
if not exist input\resources mkdir input\resources
del /s /q input\resources\* > nul
xcopy ..\..\resources input\resources /E > nul
copy PAWS.ico input > nul

REM Jar file
echo 	Create Jar file
call CreateJar.bat %1
