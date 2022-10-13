@echo off
powershell Invoke-WebRequest -Uri https://miktex.org/download/win/miktexsetup-x64.zip -OutFile miktex.zip
powershell Expand-Archive miktex.zip .
mkdir miktexrepo
miktexsetup_standalone --quiet --local-package-repository=./miktexrepo --package-set=basic download
miktexsetup_standalone.exe --quiet --local-package-repository=miktexrepo --package-set=basic install
echo Installation completed