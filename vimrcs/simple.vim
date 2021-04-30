" complex vim configure
" Copyright 2021 NickDeCodes

" ============================================== [vim配置选项] ================================================= "
syntax enable " 语法高亮开启

" (a)
set autoread " 设置当文件被改动时自动载入
set autochdir " 自动切换当前目录为当前文件所在的目录
set autowrite " 自动保存
set autoindent " 自动缩进
" (b)
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
" (d)
" (e)
set expandtab " 使用空格代替制表符
set encoding=utf-8 " 使用编码格式utf-8
" (f)
set fo+=mB " 打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set fileformat=unix " 从Win上复制文件时，避免换行符错误
set foldmethod=manual " 手动折叠
set foldlevel=99 " 折叠水平
" (g)
set go= " 不要图形按钮 
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
" (h)
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set hlsearch " 搜索时高亮显示被找到的文本
" (i)
set incsearch " 输入搜索内容时就显示搜索结果
set infercase " 区分大小写
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
" set relativenumber " 相对行号
" (j)
" (k)
" (l)
set linebreak " 数字加空格
set linespace=0 " 字符之间插入的像素行
set laststatus=2 " 启动显示状态行(1),总是显示状态行(2)  
" (m)
set magic " 设置魔术
set mouse=a " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位)
let mapleader=" " " 让leader设置为空格
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒)
set mousemodel=popup " 当右键单击窗口的时候，弹出快捷菜单
" (n)
set noeb " 去掉输入错误的提示声音
set number " 显示行号
" set nobackup " 覆盖文件时不备份
set noswapfile " 禁止文件转换
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set nofoldenable " 不许文件自动折叠
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set nocompatible " 不要使用vi的键盘模式，而是vim自己的
" (o)
" (p)
" (q)
" (r)
set ruler " 显示标尺 
" (s)
" set showcmd " 命令模式下，在底部显示，当前键入的指令。比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失。
set smarttab " 在行和段开始处使用制表符 删除Tab一键delete
set showmode " 在底部显示，当前处于命令模式还是插入模式
set showmatch " 高亮显示匹配的括号
set selection=exclusive " 
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离 
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set shiftwidth=4 " 自动缩进的时候，缩进尺寸为4个空格
set statusline=%F%m%r%h%w " %文件名和路径%修改缓冲区%只读缓冲区%帮助缓冲区%预览窗口
set statusline+=\ [FORMAT=%{&ff}] " 文件系统类型
set statusline+=\ [TYPE=%Y]\ " 文件类型
set statusline+=\ %=[POS=%l,%v] " 行，列
set statusline+=\ [%p%%] " 当前行数占总行数的的百分比
set statusline+=\ %{strftime(\"%y/%m/%d-%H:%M\")} " 显示日期
set softtabstop=4 " 使得按退格键时可以一次删掉4个空格
set smartindent " 开启新行时使用智能自动缩进
set signcolumn=auto " 自动绘制标号列
set selectmode=mouse,key " 使用鼠标和命令时用选择模式
" (t)
set textwidth=0 " 插入文本的最大宽度。更长的行会在空白之后截断，以达到此宽度。设为零关闭此项功能
set t_vb= " 置空错误铃声的终端代码
set tabstop=4 " Tab宽度为4个字符
" (u)
set updatetime=100 " 降低延迟和糟糕的用户体验
" (v)
" (w)
set wrap " 修改缓冲区
set whichwrap+=<,>,h,l " 允许backspace和光标键跨越行边界
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来
" set wildmode=longest,list,full " 补全模式
" set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc " 忽略的文件
" (x)
" (y)
" (z)

" ============================================== [颜色主题] ================================================= "
colorscheme custom " 设置背景主题

" ============================================== [文件类型] ================================================= "
filetype on " 侦测文件类型
filetype plugin on " 载入文件类型插件
filetype indent on " 为特定文件类型载入相关缩进文件
filetype plugin indent on " 自动检测文件类型
" 新建文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.go,*.java exec ":call SetTitle()" 
" 新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 

" ============================================== [键盘配置] ================================================= "
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
map <F5> :call CompileRun()<CR> 
" 代码格式优化化
map <F6> :call FormartCode()<CR><CR>
" C,C++的GDB调试
map <F7> :call RunGDB()<CR>

" ============================================== [函数定义] ================================================= "
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
function! CompileRun() abort
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
    silent! exec "!clear"
	exec "!time python %"
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
function! FormartCode() abort
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

" ============================================== [插件安装] ================================================= "
" [vim-plug]
call plug#begin('~/.vim/pack/package/opt')
Plug 'jiangmiao/auto-pairs' " 括号匹配
Plug 'scrooloose/nerdcommenter' " 快捷注释
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " 文件树
Plug 'scrooloose/syntastic' " 语法检测
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' } " 函数标签
Plug 'sirver/ultisnips' " 代码块补全
Plug 'junegunn/vim-plug' " 插件管理器
Plug 'honza/vim-snippets' " 代码块补全
call plug#end()

" [packadd]
" packadd auto-pairs " 括号匹配 git clone https://github.com/jiangmiao/auto-pairs
" packadd nerdcommenter " 快捷注释 git clone https://github.com/scrooloose/nerdcommenter
" packadd nerdtree " 文件树 git clone https://github.com/scrooloose/nerdtree
" packadd syntastic " 语法检测 git clone https://github.com/scrooloose/syntastic
" packadd tagbar " 函数标签 git clone https://github.com/majutsushi/tagbar
" packadd ultisnips " 代码块补全 git clone https://github.com/sirver/ultisnips
" packadd vim-plug " 插件管理器 git clone https://github.com/junegunn/vim-plug
" packadd vim-snippets " 代码块补全 git clone https://github.com/honza/vim-snippets

" ============================================== [插件配置] ================================================= "
" [nerdcommenter] 
let g:NERDCreateDefaultMappings = 1 " 创建默认的映射
let g:NERDSpaceDelims = 1 " 默认情况下在注释分隔符后添加空格
let g:NERDCompactSexyComs = 1 " 使用简洁的语法来修饰多行注释
let g:NERDDefaultAlign = 'left' " 按行对齐注释分隔符左对齐，而不是跟随代码缩进
let g:NERDAltDelims_java = 1 " 设置一种语言以默认使用其替代分隔符
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " 添加您自己的自定义格式或覆盖默认值
let g:NERDCommentEmptyLines = 1 " 允许注释和倒排空行(在注释一个区域时很有用)
let g:NERDTrimTrailingWhitespace = 1 " 在取消注释时启用对尾随空格的修整
let g:NERDToggleCheckAllLines = 1 " 启用NERDCommenterToggle来检查是否注释了所有选定的行
" <leader>cc | NERDCommenterComment | 注释当前行
" <leader>cn | NERDCommenterNested | 强制嵌套注释
" <leader>c<space> | NERDCommenterToggle | 与上一行同步注释状态
" <leader>cm | NERDCommenterMinimal | 块级注释
" <leader>ci | NERDCommenterInvert | 改变当前行的注释状态
" <leader>cs | NERDCommenterSexy | 美观注释
" <leader>cy | NERDCommenterYank | 和...一样 抄送，但首先删除注释行
" <leader>c$ | NERDCommenterToEOL | 注释当前行从光标到行尾。
" <leader>cA | NERDCommenterAppend | 在行尾添加注释定界符，并在它们之间进入插入模式。
" [count]<leader>cu | NERDCommenterUncomment | 取消注释选定的行

" [nerdtree]
" vim不打开文件时代开文件树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" 当最后一个窗口时文件树时关闭窗口
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" [syntastic]
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

" [ultisnips]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"