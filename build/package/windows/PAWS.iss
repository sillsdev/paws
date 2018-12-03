;This file will be executed next to the application bundle image
;I.e. current directory will contain folder PAWS with application files
[Setup]
AppId={{fxApplication}}
AppName=PAWS
AppVersion=1.1.2
AppVerName=PAWS version 1.1.2
AppPublisher=SIL International
AppComments=paws
AppCopyright=Copyright ﾩ 2018 SIL International
;AppPublisherURL=http://java.com/
;AppSupportURL=http://java.com/
;AppUpdatesURL=http://java.com/
DefaultDirName={pf}\PAWS
DisableStartupPrompt=Yes
DisableDirPage=No
DisableProgramGroupPage=Yes
DisableReadyPage=No
DisableFinishedPage=No
DisableWelcomePage=No
DefaultGroupName=SIL International
;Optional License
LicenseFile=
;WinXP or above
MinVersion=0,5.1 
OutputBaseFilename=PAWS-1.1.2
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
SetupIconFile=PAWS\PAWS.ico
UninstallDisplayIcon={app}\PAWS.ico
UninstallDisplayName=PAWS version 1.1.2
WizardImageStretch=No
WizardSmallImageFile=PAWS-setup-icon.bmp   
ArchitecturesInstallIn64BitMode=x64
ChangesAssociations=yes

[Registry]
Root: HKCR; Subkey: ".paw"; ValueType: string; ValueName: ""; ValueData: "PAWSFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Mime\Database\Content Type\text/x-paws"; ValueType: string; ValueName: "Extension"; ValueData: ".paw"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "PAWSFile"; ValueType: string; ValueName: ""; ValueData: "PAWS file"; Flags: uninsdeletekey
Root: HKCR; Subkey: "PAWSFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\PAWS"" ""%1"""

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "PAWS\PAWS.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "PAWS\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\PAWS"; Filename: "{app}\PAWS.exe"; IconFilename: "{app}\PAWS.ico"; Check: returnTrue()
Name: "{commondesktop}\PAWS"; Filename: "{app}\PAWS.exe";  IconFilename: "{app}\PAWS.ico"; Check: returnTrue()

[Run]
Filename: "{app}\PAWS.exe"; Parameters: "-Xappcds:generatecache"; Check: returnFalse()
Filename: "{app}\PAWS.exe"; Description: "{cm:LaunchProgram,PAWS}"; Flags: nowait postinstall skipifsilent; Check: returnTrue()
Filename: "{app}\PAWS.exe"; Parameters: "-install -svcName ""PAWS"" -svcDesc ""An analysis and tutorial program for authors of syntax."" -mainExe ""PAWS.exe""  "; Check: returnFalse()

[UninstallRun]
Filename: "{app}\PAWS.exe "; Parameters: "-uninstall -svcName PAWS -stopOnUninstall"; Check: returnFalse()

[Code]
function returnTrue(): Boolean;
	begin
	  Result := True;
	end;

function returnFalse(): Boolean;
	begin
	  Result := False;
	end;

function InitializeSetup(): Boolean;
	begin
	// Possible future improvements:
	//   if version less or same => just launch app
	//   if upgrade => check if same app is running and wait for it to exit
	//   Add pack200/unpack200 support? 
	  Result := True;
	end;
