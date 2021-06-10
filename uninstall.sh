#!/bin/sh
# 卸载只需删除相应的文件夹即可
rm -f ~/.vimrc
rm -rf ~/.vim

# 如果之前有安装恢复文件夹即可
mv -f ~/.vimrc_old ~/.vimrc
mv -f ~/.vim_old ~/.vim