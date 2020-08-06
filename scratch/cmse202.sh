#!/bin/bash
# Assign the aliases using powershell to run them
## In order to run python we can actually just use the powershell itself
echo "alias spyder='powershell.exe /c 'spyder''" >> ~/.bashrc
echo "alias jupyter='powershell.exe /c 'jupyter''" >> ~/.bashrc
echo "alias ipython='powershell.exe /c 'ipython''" >> ~/.bashrc
echo "alias pytest='powershell.exe /c 'pytest''" >> ~/.bashrc
echo "alias pip='powershell.exe /c 'pip''" >> ~/.bashrc
echo "alias conda='powershell.exe /c 'conda''" >> ~/.bashrc
echo "alias python='powershell.exe /C 'python''" >> ~/.bashrc

# Update system in order to use aliases
source ~/.bashrc
