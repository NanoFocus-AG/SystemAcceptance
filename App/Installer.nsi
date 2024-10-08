SetCompressor /SOLID zlib
SetCompressorDictSize 64
Unicode true
!include "MUI2.nsh"


; All users / current user page
!define MULTIUSER_EXECUTIONLEVEL Highest
!define MULTIUSER_MUI
;!define MULTIUSER_INSTALLMODE_COMMANDLINE

!include "MultiUser.nsh"

; MUI 1.67 compatible ------
;!include "MUI2.nsh"
!define MUI_COMPONENTSPAGE_SMALLDESC ;No value
;!define MUI_UI ".\Contrib\UIs\modern.exe" ;Value
!define MUI_UI "C:\NSIS\Contrib\UIs\modern.exe" ;Value
!define MUI_INSTFILESPAGE_COLORS "000000 FFFFFF" ;Two colors


; MUI Settings
!define MUI_ABORTWARNING
;!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
;!define MUI_ICON "@NF_METROLOGY_BASE@\frontend\Wizard\NewWizard\@INSTALLER_ICON@"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"


InstallDir "$PROGRAMFILES64\Nanofocus\evaluation\SystemAcceptance"

Name "SystemAcceptance"
OutFile  "Setup_SystemAcceptance.exe"

!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "German"



Section "-BasisInstallation" SEC01

SetShellVarContext all
AccessControl::GrantOnFile "$APPDATA\Folder" "(S-1-5-32-545)" "FullAccess"

SetOutPath $INSTDIR
File /r  /x *.pdb NFSystemAcceptance\bin\x64\Release\*.*
;File /r  /x *.pdb C:\Users\koci\source\repos\SystemAcceptance\App\NFSystemAcceptance\bin\x64\Release\*.*

CreateDirectory $LocalAppData\Nanofocus\SystemAcceptance
SetOutPath $LocalAppData\Nanofocus\SystemAcceptance\*.*
;File /r "C:\Users\koci\Desktop\sysacc\*.*"
;File /r "..\testFolder\*.*"
File /r /x *.git /x *.gitignore /x App "..\*.*"
 
 
SectionEnd

Section Uninstall

  Delete  $INSTDIR\*.*
  RMDir $INSTDIR

SectionEnd
  
