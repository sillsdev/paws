@echo off
REM Build windows installer; see ReadmeWinInstaller.txt
REM set java_path="C:\Users\Andy Black\Downloads\Java\AzulZulu\zulu17.30.15-ca-fx-jdk17.0.1-win_x64"
REM echo java_path=%java_path%
echo PrepInput
call PrepInput.bat %java_path%
echo CreateWinApp
call CreateWinApp.bat %java_path%
echo WinInstaller
call WinInstaller.bat %java_path% %1 
REM rundll32 user32.dll,MessageBeep
