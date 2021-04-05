" Copyright 2021 NickDeCodes
" [插件配置]

" [视图配置]
syntax on " 语法高亮开启
set ruler " 显示标尺 
set number " 显示行号
set showcmd " 显示输入命令
" [help configuration]
if v:version >= 704 " 显示中文帮助
	set helplang=cn
	set encoding=utf-8
endif
set langmenu=zh_CN.UTF-8 " 语言设置

" [对齐配置]
set shiftwidth=4 " 自动缩进的时候，缩进尺寸为4个空格
set tabstop=4 " Tab宽度为4个字符
set softtabstop=4 " 统一缩进为4
set expandtab " 使用空格代替制表符
set smarttab " 删除Tab一键delete
set smartindent " 智能对齐
set autoindent " 自动缩进
set cindent
set linebreak " 数字加空格
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
set fo+=mB " 打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离 
set completeopt=preview,menu " 代码补全 
set completeopt=longest,menu " 打开文件类型检测, 加了这句才可以用智能补全

" [高亮配置]
set cursorline " 高亮光标所在行
set cursorcolumn " 高亮光标所在列
"autocmd InsertLeave * se nocul " 不用浅色高亮当前行  
autocmd InsertEnter * se cursorline " 用浅色高亮当前行 
set hlsearch " 搜索逐字符高亮
set incsearch " 显示查找的匹配点
set showmatch " 高亮显示匹配的括号
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒

" [状态栏配置]
set cmdheight=2 " 总是显示状态行
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)  
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set mousemodel=popup " 当右键单击窗口的时候，弹出快捷菜单
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} " 状态行显示的内容

" [颜色主题]
color xcodelight " 设置xcodelight背景主题  
"color xcodedark " 设置xcodedark背景主题

" [实用配置] 有一些不知道含义
set nocompatible " 不要使用vi的键盘模式，而是vim自己的
set history=1000 " 历史记录数
set viminfo+=! " 保存全局变量
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
" 字符间插入的像素行数目
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
set autoread " 设置当文件被改动时自动载入
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr> " quickfix模式
set autowrite " 自动保存
set magic " 设置魔术
set noeb " 去掉输入错误的提示声音
set confirm " 在处理未保存或只读文件的时候，弹出确认
set nobackup " 禁止生成临时文件
set noswapfile
set ignorecase " 搜索忽略大小写
set linespace=0
set backspace=2 " 使回格键（backspace）正常处理indent, eol, start等
set mouse=a " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）__
set selectmode=mouse,key
set report=0 " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读
set fileformat=unix " 从Win上复制文件时，避免换行符错误

" [文件类型]
filetype on " 侦测文件类型
filetype plugin on " 载入文件类型插件
filetype indent on " 为特定文件类型载入相关缩进文件
filetype plugin indent on " Automatically detect file types.
autocmd FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
autocmd FileType css setlocal dict+=~/.vim/dict/css.dict
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType scale setlocal dict+=~/.vim/dict/scale.dict
autocmd FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/ftdetectjavascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/css.dict

" [新建文件，自动插入文件头]
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
" 定义函数SetTitle，自动插入文件头 
function SetTitle() 
"如果文件类型为.sh文件 
  if &filetype == 'sh' 
    call setline(1,"\#!/bin/bash") 
    call append(line("."), "") 
  elseif &filetype == 'python'
    call setline(1,"#!/usr/bin/env python")
    call append(line("."),"# coding=utf-8")
    call append(line(".")+1, "") 
  elseif &filetype == 'ruby'
    call setline(1,"#!/usr/bin/env ruby")
    call append(line("."),"# encoding: utf-8")
    call append(line(".")+1, "")
  elseif &filetype == 'md'
    call setline(1,"<head><meta charset=\"UTF-8\"></head>")
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
  if &filetype == 'java'
    call append(line(".")+6,"public class ".expand("%:r"))
    call append(line(".")+7,"")
  endif
endfunction 
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 

" [键盘配置]
let mapleader="," " 设置 leader
" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
cnoremap <C-a> <Home> " ctrl-a到行首
cnoremap <C-e> <End> " ctrl-e到行首
map <Esc><Esc> :w<CR> " Esc + 保存
" 选中状态下 Ctrl+c 复制
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
vmap <C-c> "+y

" [F2]
" [F3打开文件树]
" map <F3> :NERDTreeToggle<CR> " 列出当前目录文件
" let NERDTreeChDirMode=1
" let NERDTreeShowBookmarks=1 " 显示书签
" let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$'] " 设置忽略文件类型
" let NERDTreeWinSize=25 " 窗口大小
" " 当打开vim且没有文件时自动打开NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" " 只剩 NERDTree时自动关闭
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" [F4]
" [F5编译]
map <F5> :call CompileRunGcc()<CR>
function! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -std=c++11 -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java' 
    exec "!javac %" 
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    exec "!time python2.7 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'go'
    exec "!go build %<"
    exec "!time go run %"
  elseif &filetype == 'mkd'
    exec "!~/.vim/markdown.pl % > %.html &"
    exec "!firefox %.html &"
  endif
endfunction

" [F6]
" [F7]
" [F8调用gdb]
map <F8> :call Rungdb()<CR>
function! Rungdb()
  exec "w"
  exec "!g++ % -std=c++11 -g -o %<"
  exec "!gdb ./%<"
endfunction
" [F9]
" [F10]
" [F11]
" [F12]
