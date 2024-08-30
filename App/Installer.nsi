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
!define MUI_UI "m:\tools\NSIS\Contrib\UIs\modern.exe" ;Value
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


SetOutPath $INSTDIR
File /r  /x *.pdb NFSystemCalibration\bin\x64\Release\*.*

CreateDirectory  $INSTDIR\Ausleuchtung
SetOutPath $INSTDIR\Ausleuchtung
File /r  /x *.png  /x *.pdf /x *.html Ausleuchtung\*.* 

CreateDirectory  $INSTDIR\Ebenheit
SetOutPath $INSTDIR\Ebenheit
File /r  /x *.png  /x *.pdf /x *.html Ebenheit\*.* 
 
 
CreateDirectory  $INSTDIR\LateralnormalX
SetOutPath $INSTDIR\LateralnormalX
File /r  /x *.png  /x *.pdf /x *.html LateralnormalX\*.* 
 
 
 CreateDirectory  $INSTDIR\LateralnormalY
SetOutPath $INSTDIR\LateralnormalY
File /r  /x *.png  /x *.pdf /x *.html LateralnormalY\*.* 
 
 
  CreateDirectory  $INSTDIR\Sensors
SetOutPath $INSTDIR\Sensors
File /r  /x *.png  /x *.pdf /x *.html Sensors\*.* 
 
 
 
  CreateDirectory  $INSTDIR\Standards
SetOutPath $INSTDIR\Standards
File /r  /x *.png  /x *.pdf /x *.html Standards\*.* 
 
 
SectionEnd

Section Uninstall

  Delete  $INSTDIR\*.*
  RMDir $INSTDIR

SectionEnd
  
