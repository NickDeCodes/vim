" Copyright 2021 NickDeCodes
" [插件配置]

" [括号匹配] 
" git clone https://github.com/jiangmiao/auto-pairs
packadd auto-pairs

" [文件树]
" git clone https://github.com/scrooloose/nerdtree
packadd nerdtree
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" [语法检测]
" git clone https://github.com/scrooloose/syntastic
packadd syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

" [标签设置]
" git clone https://github.com/majutsushi/tagbar
packadd tagbar



" [视图配置]
syntax on " 语法高亮开启
set ruler " 显示标尺 
set number " 显示行号

" [对齐配置]
set shiftwidth=4 " 自动缩进的时候，缩进尺寸为4个空格
set tabstop=4 " Tab宽度为4个字符
set softtabstop=4 " 统一缩进为4
set cino=L0 " 在任意字符后面加冒号不会跳到行首
set expandtab " 使用空格代替制表符
set smarttab " 删除Tab一键delete
set smartindent " 智能对齐
set autoindent " 自动缩进
set linebreak " 数字加空格
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
set fo+=mB " 打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离 
set completeopt=preview,menu " 代码补全 
set completeopt=longest,menu " 打开文件类型检测, 加了这句才可以用智能补全

" [高亮配置]
set cursorline " 高亮光标所在行
set cursorcolumn " 高亮光标所在列
set hlsearch " 搜索逐字符高亮
set incsearch " 显示查找的匹配点
set showmatch " 高亮显示匹配的括号
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒)

" [状态栏配置]
set cmdheight=2 " 总是显示状态行
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)  
set mousemodel=popup " 当右键单击窗口的时候，弹出快捷菜单
" set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %=[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} " 状态行显示的内容

" [颜色主题]
color xcodelight " 设置xcodelight背景主题  
"color xcodedark " 设置xcodedark背景主题

" [实用配置] 有一些不知道含义
set nocompatible " 不要使用vi的键盘模式，而是vim自己的
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
set autoread " 设置当文件被改动时自动载入
set autowrite " 自动保存
set confirm " 在处理未保存或只读文件的时候，弹出确认
set nobackup " 禁止生成临时文件
set noswapfile " 禁止文件转换
" set ignorecase " 搜索忽略大小写
set backspace=2 " 使回格键（backspace）正常处理indent, eol, start等
set mouse=a " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位)
set selectmode=mouse,key " 使用鼠标和命令时用选择模式
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set fileformat=unix " 从Win上复制文件时，避免换行符错误

" [文件类型]
filetype on " 侦测文件类型
filetype plugin on " 载入文件类型插件
filetype indent on " 为特定文件类型载入相关缩进文件
filetype plugin indent on " 自动检测文件类型
autocmd FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
autocmd FileType css setlocal dict+=~/.vim/dict/css.dict
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType scale setlocal dict+=~/.vim/dict/scale.dict
autocmd FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/ftdetectjavascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/css.dict

" [新建文件，自动插入文件头]
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py exec ":call SetTitle()" 

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 

" [键盘配置]
map <Esc><Esc> :w<CR> " Esc + 保存
map <F2> :TagbarToggle<CR> " 打开标签目录 
map <F3> :NERDTreeToggle<CR> " 列出当前目录文件
map <F5> :call CompileRunGcc()<CR> " 快捷键编译

" [定义函数]
" 定义函数SetTitle，自动插入文件头 
function! SetTitle() abort 
  " 如果文件类型为.sh文件 
  if &filetype == 'sh' 
    call setline(1,"\#!/bin/bash") 
    call append(line("."), "") 
  elseif &filetype == 'python'
    call setline(1,"#!/usr/bin/env python")
    call append(line("."),"# coding=utf-8")
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
" 快捷键编译 F5自动编译生成可执行文件相同文件名
function! CompileRunGcc() abort
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
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
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunction