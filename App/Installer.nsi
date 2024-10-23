SetCompressor /SOLID zlib
SetCompressorDictSize 64
Unicode true
!include "MUI2.nsh"
!include "nsDialogs.nsh"
!include "Sections.nsh"
!include "logiclib.nsh"
!include "FileFunc.nsh"
!include "winmessages.nsh"
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
BrandingText "NanoFocus AG"
Caption "$(^Name)  - Generated: ${__DATE__}"

!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "German"

Page Custom SelectLogo
Page instfiles
var dialog
var hwnd
Var LogoSelection
Var NEW_LOGO
Var TARGET_DIR

Function SelectLogo
  ; Create Radio Buttons
  nsDialogs::Create 1018
  Pop $Dialog
  
  ; label
  ${NSD_CreateLabel} 0u 0u 100% 12u "Select which logo to install:"
  Pop $0
  ; Radio Button 1
  ${NSD_CreateRadioButton} 0u 15u 100% 12u "NanoFocus"
  Pop $1
  ${NSD_SetState} $1 1 ; Set Logo 1 as default
  StrCpy $LogoSelection 1
  ${NSD_OnClick} $1 "SelectLogo1"
  ; Radio Button 2
  ${NSD_CreateRadioButton} 0u 30u 100% 12u "Mahr"
  Pop $2
	${NSD_OnClick} $1 "SelectLogo1"
  ${NSD_OnClick} $2 "SelectLogo2"
  ; Show the page
  nsDialogs::Show
FunctionEnd

Function SelectLogo1
	Pop $hwnd
	StrCpy $LogoSelection 1
FunctionEnd
Function SelectLogo2
	Pop $hwnd
	StrCpy $LogoSelection 2
FunctionEnd


Section "-BasisInstallation" instfiles

	SetShellVarContext all
	AccessControl::GrantOnFile "$APPDATA\Folder" "(S-1-5-32-545)" "FullAccess"

	SetOutPath $INSTDIR
	File /r  /x *.pdb NFSystemAcceptance\bin\x64\Release\*.*

	

	WriteUninstaller $INSTDIR\Uninstaller.exe
 
SectionEnd

SectionGroup "ProgramData files"
    Section "Systems"
        
	CreateDirectory $LocalAppData\Nanofocus\SystemAcceptance
	SetOutPath $LocalAppData\Nanofocus\SystemAcceptance
	File /r /x *.git /x *.gitignore /x App /x *.pdf /x *.html /x *.svg "..\*.*"
	
    SectionEnd
	
    Section "LogoFile"
        ${If} $LogoSelection == 1
		
		StrCpy $NEW_LOGO "$LocalAppData\Nanofocus\SystemAcceptance\Logos\nf\logo.png"
		StrCpy $TARGET_DIR "$LocalAppData\Nanofocus\SystemAcceptance\"
	
		${Else}
		StrCpy $NEW_LOGO "$LocalAppData\Nanofocus\SystemAcceptance\Logos\mahr\logo.png"
		StrCpy $TARGET_DIR "$LocalAppData\Nanofocus\SystemAcceptance\"
	
		${EndIf}
 
		IfFileExists $NEW_LOGO $3
		${If} $3 == "0"
			MessageBox MB_OK "Logo file does not exist: $NEW_LOGO"
			Quit 
		${EndIf}

		; find and replace logo.png
		nsExec::ExecToStack 'cmd /C for /r "$TARGET_DIR" %f in (logo.png) do @if exist "%f" @(echo %f | findstr /I /V "\\Logos\\" >nul && (echo replacing "%f" & copy /Y "$NEW_LOGO" "%f"))'
		Pop $0 
		Pop $1
   
    SectionEnd
SectionGroupEnd


Section Uninstall
	SetShellVarContext all
	AccessControl::GrantOnFile "$APPDATA\Folder" "(S-1-5-32-545)" "FullAccess"
	Delete  "$INSTDIR\*.*"
	  
	;Delete Data files inside ProgramData
	Delete "$LocalAppData\Nanofocus\SystemAcceptance\*.*"
	  
	;Delete SystemAcceptance Directoy
	RMDir /r "$INSTDIR"
	  
	;Delete SystemAcceptance ProgramData Directory
	RMDir /r "$LocalAppData\Nanofocus\SystemAcceptance"

SectionEnd
  
