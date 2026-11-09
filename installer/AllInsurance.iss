#ifndef AppVersion
  #error AppVersion must be supplied by the build script.
#endif
#ifndef PublishDir
  #error PublishDir must be supplied by the build script.
#endif
#ifndef InstallerOutputDir
  #error InstallerOutputDir must be supplied by the build script.
#endif

[Setup]
AppId=KalypsisSoftwareSolutions.KalypsisSimpleSoftware
AppName=KALYPSIS SIMPLE SOFTWARE
AppVersion={#AppVersion}
AppPublisher=KALYPSIS SOFTWARE SOLUTIONS
DefaultDirName={localappdata}\Programs\KALYPSIS SIMPLE SOFTWARE
DefaultGroupName=KALYPSIS SIMPLE SOFTWARE
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
MinVersion=10.0.19041
WizardStyle=modern
Compression=lzma2
SolidCompression=yes
SetupIconFile=..\src\AllInsurance.Desktop\Assets\kalypsis-simple.ico
UninstallDisplayIcon={app}\KalypsisSimple.Desktop.exe
OutputDir={#InstallerOutputDir}
OutputBaseFilename=Kalypsis-Simple-Setup-{#AppVersion}-win-x64
VersionInfoVersion={#AppVersion}
CloseApplications=yes
RestartApplications=no
#ifdef SignedBuild
SignTool=release
SignedUninstaller=yes
#endif

[Tasks]
Name: desktopicon; Description: "Create a desktop shortcut"; GroupDescription: "Shortcuts:"; Flags: unchecked

[Files]
Source: "{#PublishDir}\*"; DestDir: "{app}"; Excludes: "*.db,*.db-shm,*.db-wal,*.sqlite,*.sqlite3"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\KALYPSIS SIMPLE SOFTWARE"; Filename: "{app}\KalypsisSimple.Desktop.exe"
Name: "{autodesktop}\KALYPSIS SIMPLE SOFTWARE"; Filename: "{app}\KalypsisSimple.Desktop.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\KalypsisSimple.Desktop.exe"; Description: "Launch KALYPSIS SIMPLE SOFTWARE"; Flags: nowait postinstall skipifsilent
