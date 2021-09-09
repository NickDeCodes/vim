#!/bin/bash
echo "Nick.vim install ..."

#--------------------安装工具介绍-----------------------#
#      gcc-----------------------gcc编译工具
#      g++-----------------------g++编译工具
#      vim-----------------------代码编辑工具
#      ctags---------------------代码阅读工具
#      git-----------------------代码托管工具
#-----------------------------------------------------#

# Ubuntu系统
if which apt-get >/dev/null; then
	sudo apt-get install -y g++ vim git
# Centos系统
elif which yum >/dev/null; then
	sudo yum install -y gcc gcc-c++ vim ctags git
fi

# Add HomeBrew support on Mac OS
if which brew >/dev/null; then
    echo "HomeBrew is already installed"
    brew install vim ctags git
fi

# 将ctags软链接到root目录
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

# 如果已经有vim配置将重置为vim_old
mv -f ~/vim ~/vim_old

# 转到家目录下，并克隆Vim配置库
cd ~/ && git clone https://github.com/nickdecodes/vim.git

# 如果已经有.vim配置将重置为.vim_old
mv -f ~/.vim ~/.vim_old

# 将新的vim配置置为隐藏文件夹
mv -f ~/vim ~/.vim

# 如果已经有.vimrc配置将重置为.vimrc_old
mv -f ~/.vimrc ~/.vimrc_old

# 将新的vimrc配置移除至家目录
mv -f ~/.vim/vimrcs/vimrc.vim ~/.vimrc

# 克隆vim-plug(vim插件管理)并重新命名
git clone https://github.com/junegunn/vim-plug ~/.vim/autoload/
cp ~/.vim/autoload/vim-plug/plug.vim ~/.vim/autoload/
rm -rf ~/.vim/autoload/vim-plug/

# 开始安装
echo "Nick.vim install plug" > Nick.Vim
echo "Nick.vim exit automatically after completion" >> Nick.Vim
vim Nick.vim -c "PlugInstall" -c "q" -c "q"
rm -f Nick.vim

# 安装完成
echo "Nick.vim is already installed"
