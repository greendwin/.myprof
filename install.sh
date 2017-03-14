
echo Installing bash_it...
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
sed -i "s/BASH_IT_THEME='.*'/BASH_IT_THEME='bakke'/g" ~/.bashrc

