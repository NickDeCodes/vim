" Copyright 2021 NickDeCodes
" [插件配置]

" [视图配置]
syntax on " 语法高亮开启
set ruler " 显示标尺 
set number " 显示行号

" [对齐配置]
set shiftwidth=4 " 自动缩进的时候，缩进尺寸为4个空格
set tabstop=4 " Tab宽度为4个字符
set softtabstop=4 " 统一缩进为4
set expandtab " 使用空格代替制表符
set smarttab " 删除Tab一键delete
set smartindent " 智能对齐
set autoindent " 自动缩进
set linebreak " 数字加空格
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离 
set completeopt=preview,menu " 代码补全 
set completeopt=longest,menu " 打开文件类型检测, 加了这句才可以用智能补全

" [高亮配置]
set cursorline " 高亮光标所在行
set cursorcolumn " 高亮光标所在列
set hlsearch " 搜索逐字符高亮
set incsearch " 显示查找的匹配点
set showmatch " 高亮显示匹配的括号
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒

" [状态栏配置]
set cmdheight=2 " 总是显示状态行
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)  
set mousemodel=popup " 当右键单击窗口的时候，弹出快捷菜单
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} " 状态行显示的内容

" [颜色主题]
color xcodelight " 设置xcodelight背景主题  
"color xcodedark " 设置xcodedark背景主题

" [文件类型]
filetype on " 侦测文件类型
filetype plugin on " 载入文件类型插件
filetype indent on " 为特定文件类型载入相关缩进文件
filetype plugin indent on " 自动检测文件类型

" [新建文件，自动插入文件头]
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py exec ":call SetTitle()" 
" 定义函数SetTitle，自动插入文件头 
function! SetTitle() abort 
"如果文件类型为.sh文件 
  if &filetype == 'sh' 
    call setline(1,"\#!/bin/bash") 
    call append(line("."), "") 
  elseif &filetype == 'python'
    call setline(1,"#!/usr/bin/env python")
    call append(line("."),"# coding=utf-8")
    call append(line(".")+1, "")
  else 
    call setline(1, "/*************************************************************************") 
    call append(line("."), "	> File Name: ".expand("%")) 
    call append(line(".")+1, "	> Author: ") 
    call append(line(".")+2, "	> Mail: ") 
    call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
    call append(line(".")+4, " ************************************************************************/") 
    call append(line(".")+5, "")
  endif

  if expand("%:e") == 'cpp'
    call append(line(".")+6, "#include <iostream>")
    call append(line(".")+7, "using namespace std;")
    call append(line(".")+8, "")
  endif
  if &filetype == 'c'
    call append(line(".")+6, "#include <stdio.h>")
    call append(line(".")+7, "")
  endif
  if expand("%:e") == 'h'
    call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
    call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
    call append(line(".")+8, "#endif")
  endif
endfunction 
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 