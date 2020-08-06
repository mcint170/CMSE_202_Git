#!/bin/bash
win_ana_path=$(where.exe spyder)
if wslpath -a $win_ana_path
then
    spy_path=$(wslpath -a $win_ana_path)
    ana_path_win=${spy_path//$'/spyder.exe'}
    ana_path=${ana_path_win//$'\r'}
else
    win_usr=$(powershell.exe /c '$env:UserName')
    username=${win_usr//$'\r'}
    path1="/mnt/c/Users/"
    path2="/anaconda3/Scripts"
    ana_path="$path1$username$path2"
fi

#echo "alias spyder='$path1$username$path2/spyder.exe'" >> ~/.bashrc
#echo "alias jupyter='$path1$username$path2/jupyter.exe'" >> ~/.bashrc
#echo "alias ipython='$path1$username$path2/ipython.exe'" >> ~/.bashrc
#echo "alias pytest='$path1$username$path2/pytest.exe'" >> ~/.bashrc
#echo "alias pip='$path1$username$path2/pip.exe'" >> ~/.bashrc
#echo "alias conda='$path1$username$path2/conda.exe'" >> ~/.bashrc
#echo "alias python='powershell.exe /C 'python''" >> ~/.bashrc

echo "alias spyder='$ana_path/spyder.exe'" >> ~/.bashrc
echo "alias jupyter='$ana_path/jupyter.exe'" >> ~/.bashrc
echo "alias ipython='$ana_path/ipython.exe'" >> ~/.bashrc
echo "alias pytest='$ana_path/pytest.exe'" >> ~/.bashrc
echo "alias pip='$ana_path/pip.exe'" >> ~/.bashrc
echo "alias conda='$ana_path/conda.exe'" >> ~/.bashrc
echo "alias python='powershell.exe /C 'python''" >> ~/.bashrc

source ~/.bashrc
