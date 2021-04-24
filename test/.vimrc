" Copyright 2021 NickDeCodes
" [插件配置]

" [括号匹配] 
" git clone https://github.com/jiangmiao/auto-pairs
packadd auto-pairs

" [标签设置]
" git clone https://github.com/majutsushi/tagbar
packadd tagbar

" [文件树]
" git clone https://github.com/scrooloose/nerdtree
packadd nerdtree
" vim不打开文件时代开文件树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" 当最后一个窗口时文件树时关闭窗口
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" [状态栏颜色]
" git clone https://github.com/vim-airline/vim-airline
" packadd vim-airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" git clone https://github.com/vim-airline/vim-airline-themes
" packadd vim-airline-themes
" let g:airline#extensions#tabline#formatter = 'default'

" [语法检测]
" git clone https://github.com/scrooloose/syntastic
packadd syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python']
let g:syntastic_go_checkers = ['go']
let g:syntastic_java_checkers = ['javac']
let g:syntastic_javascript_checkers = ['flow']
let g:syntastic_html_checkers = ['tidy']

" [字典序配置选项]
syntax on " 语法高亮开启
" [a]
set autoread " 设置当文件被改动时自动载入
set autochdir " 自动切换当前目录为当前文件所在的目录
set autowrite " 自动保存
set autoindent " 自动缩进
" [b]
set backspace=2 " 使回格键（backspace）正常处理indent, eol, start等
" [c]
set cino=L0 " 在任意字符后面加冒号不会跳到行首
set confirm " 在处理未保存或只读文件的时候，弹出确认
set cmdheight=1 " 命令行高度
set clipboard+=unnamed " 共享剪贴板 
set copyindent " 复制粘贴时保留原有的缩进
set cursorline " 高亮光标所在行
set completeopt=preview,menu " 代码补全
set completeopt=longest,menu " 打开文件类型检测, 加了这句才可以用智能补全
set cursorcolumn " 高亮光标所在列
" [d]
" [e]
set expandtab " 使用空格代替制表符
set encoding=utf-8 " 使用编码格式utf-8
" [f]
set fo+=mB " 打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set fileformat=unix " 从Win上复制文件时，避免换行符错误
" [g]
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
" [h]
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set hlsearch " 搜索时高亮显示被找到的文本
" [i]
set incsearch " 输入搜索内容时就显示搜索结果
set infercase " 区分大小写
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
" [j]
" [k]
" [l]
set linebreak " 数字加空格
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)  
" [m]
set magic " 设置魔术
set mouse=a " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位)
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒)
set mousemodel=popup " 当右键单击窗口的时候，弹出快捷菜单
" [n]
set noeb " 去掉输入错误的提示声音
set number " 显示行号
set nobackup " 覆盖文件时不备份
set noswapfile " 禁止文件转换
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set nofoldenable " 不许文件自动折叠
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set nocompatible " 不要使用vi的键盘模式，而是vim自己的
" [o]
" [p]
" [q]
" [r]
set ruler " 显示标尺 
" [s]
set showcmd " 命令模式下，在底部显示，当前键入的指令。比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失。
set smarttab " 删除Tab一键delete
set showmode " 在底部显示，当前处于命令模式还是插入模式
set showmatch " 高亮显示匹配的括号
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离 
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set shiftwidth=4 " 自动缩进的时候，缩进尺寸为4个空格
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ %=[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} " 状态行显示的内容
set softtabstop=4 " 使得按退格键时可以一次删掉4个空格
set smartindent " 开启新行时使用智能自动缩进
set selectmode=mouse,key " 使用鼠标和命令时用选择模式
" [t]
set t_vb= " 置空错误铃声的终端代码
set tabstop=4 " Tab宽度为4个字符
" [u]
" [v]
" [w]
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
" [x]
" [y]
" [z]

" [颜色主题]
colorscheme vim-color " 设置背景主题

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
" 新建文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.go,*.java exec ":call SetTitle()" 
" 新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 

" [键盘配置]
" 在可视化模式下control+c复制到剪切板
vmap <C-c> "+y
" Esc + 保存
map <Esc><Esc> :w<CR> 
" 打开标签目录 
map <F2> :TagbarToggle<CR> 
" 列出当前目录文件
map <F3> :NERDTreeToggle<CR> 
" 垂直分割窗口比较文件  
nnoremap <F4> :vert diffsplit<CR> 
" 快捷键编译
map <F5> :call CompileRunGcc()<CR> 
" 代码格式优化化
map <F6> :call FormartSrc()<CR><CR>
" C,C++的GDB调试
map <F7> :call RunGDB()<CR>

" [定义函数]
" 定义函数SetTitle，打开新文件时自动插入文件头 
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
  elseif &filetype == 'go'
    call setline(1,"package main") 
    call append(line("."), "")
    call append(line(".")+1, "import (")
    call append(line(".")+2, "    "."\"fmt\"") 
    call append(line(".")+3, ")") 
    call append(line(".")+4, "")
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
        exec "!chrome % &"
    elseif &filetype == 'go'
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!chrome %.html &"
	endif
endfunction
" 快捷键格式化 F6检测代码格式
function! FormartSrc() abort
  exec "w"
  if &filetype == 'c'
      exec "!astyle --style=ansi -a --suffix=none %"
  elseif &filetype == 'cpp' || &filetype == 'hpp'
      exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
  elseif &filetype == 'perl'
      exec "!astyle --style=gnu --suffix=none %"
  elseif &filetype == 'py'||&filetype == 'python'
      exec "r !autopep8 -i --aggressive %"
  elseif &filetype == 'java'
      exec "!astyle --style=java --suffix=none %"
  elseif &filetype == 'jsp'
      exec "!astyle --style=gnu --suffix=none %"
  elseif &filetype == 'xml'
      exec "!astyle --style=gnu --suffix=none %"
  else
      exec "normal gg=G"
      return
  endif
  exec "e! %"
endfunction
" 快捷键调试 F7GDB调试
func! RunGDB()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -g -o %<"
    exec "!gdb ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -std=c++11 -g -o %<"
    exec "!gdb ./%<"
  endif
endfunc
