@echo off
REM Work-around to get exe to find resource and doc files
xcopy output\PAWS\app\resources output\PAWS\resources /E/s/i > nul
rmdir output\PAWS\app\resources /S /q > nul
REM does not do the copy:
REM copy %JAVA_HOME%\bin\java.exe output\PAWS /B /Y > nul
