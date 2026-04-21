@ECHO on
call M:/Win64_VS2017/Environment-branches/branch8100/NFEvalEnv.bat

rem call "%VS100COMNTOOLS%..\..\VC\bin\amd64\vcvars64.bat"
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe" "%~dp0SystemAcceptance.sln" /rebuild "release|x64"
