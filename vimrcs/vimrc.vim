" =================================================================================================================================================
" complex vim configure
" Copyright 2021 NickDeCodes
" License: MIT
" =================================================================================================================================================
" 
" +----------+-------------------------------------------------------------------------------------------------------------------------------------
" | Key      | Function
" +----------+-------------------------------------------------------------------------------------------------------------------------------------
" | F1       |
" | F2       |
" | F3       |
" | F4       |
" | F5       |
" | F6       |
" | F7       |
" | F8       | 
" | F9       | 
" | F10      |
" | F11      |
" | F12      |
" +----------+-------------------------------------------------------------------------------------------------------------------------------------
"
" Notes:
"   1、Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释
" =================================================================================================================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 环境设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                   " 必须先设定的选项，关闭兼容 vi 模式，使用 Vim 自身的
set shell=/bin/bash                " Vim 需要一个符合 Posix 的 Shell
set viminfo=<100,'100,/50,:100,h,r$TEMP:,s10
"           |    |    |   |    | |       + 不保存超过10KB寄存器
"           |    |    |   |    | + 不保存TEMP目录下文件的相关信息
"           |    |    |   |    + 载入viminfo文件时关闭hlsearch高亮
"           |    |    |   + 保存命令历史条数
"           |    |    + 保存搜索历史条数
"           |    + 保存最近100个文件中的标记
"           + 每个寄存器中保存的行数

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 选项设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [语·法]----------------------------------------------------------------------------------------------------------------------------------[语·法] "
syntax enable                       " 启用语法高亮度
syntax on                           " 开启语法高亮
" [主·题]----------------------------------------------------------------------------------------------------------------------------------[主·题] "
set t_Co=256                        " 指定配色方案是256色
set background=dark                 " 主题背景
colorscheme gruvbox                 " 主题选择
" [行、列]---------------------------------------------------------------------------------------------------------------------------------[行、列] "
set number                          " 显示行号
set ruler                           " 显示光标当前位置
" set relativenumber                  " 行号以相对当前行的方式显示，方便跳转
set linespace=0                     " 设置行间距
set linebreak                       " 设置行断点
set cursorline                      " 突出显示当前行
set cursorcolumn                    " 突出显示当前列
set signcolumn=auto                 " 自动绘制标号列
autocmd InsertLeave,WinEnter * set cursorline " 正常模式高亮当前行
autocmd InsertEnter,WinLeave * set nocursorline " 输入模式取消高亮当前行
" [鼠·标]----------------------------------------------------------------------------------------------------------------------------------[鼠·标] "
set mouse=a                         " 启用鼠标
set selection=exclusive             " 指定在选择文本时光标所在位置也属于被选中的范围
set selectmode=mouse,key            " 使鼠标和键盘都可以控制光标选择文本
set whichwrap+=<,>,h,l              " 允许 Backspace 和光标键跨越行边界
set scrolloff=3                     " 光标距离顶部和底部 3 行
" [边·框]----------------------------------------------------------------------------------------------------------------------------------[边·框] "
set showtabline=0                   " 隐藏顶部标签栏
set guioptions-=r                   " 隐藏右侧滚动条 
set guioptions-=L                   " 隐藏左侧滚动条
set guioptions-=b                   " 隐藏底部滚动条
set guioptions-=T                   " 隐藏工具栏
set guioptions-=m                   " 隐藏菜单栏
" [菜单栏]---------------------------------------------------------------------------------------------------------------------------------[菜单栏] "
set shortmess=atI                   " 启动的时候不显示那个援助乌干达儿童的提示
set wildmenu                        " 显示补全菜单
set go=                             " 不要图形按钮
set showmode                        " 显示我们当前正在编辑的模式
set mousemodel=popup                " 当右键单击窗口的时候，弹出快捷菜单
source $VIMRUNTIME/delmenu.vim      " 导入删除菜单脚本，删除乱码的菜单
source $VIMRUNTIME/menu.vim         " 导入正常的菜单脚本
" [搜·索]----------------------------------------------------------------------------------------------------------------------------------[搜·索] "
set hlsearch                        " 高亮搜索的字符串
set incsearch                       " 即时搜索
set infercase                       " 区分大小写
set ignorecase                      " 搜索忽略大小写
set smartcase                       " 智能大小写敏感，只要有一个字母大写，就大小写敏感，否则不敏感
set showmatch                       " 高亮显示匹配的括号
set matchtime=1                     " 匹配括号高亮的时间（单位是十分之一秒） 
" [缩·进]----------------------------------------------------------------------------------------------------------------------------------[缩·进] "
set tabstop=4                       " Tab 显示多少个空格，默认 8
set softtabstop=4                   " 统一缩进为 4
set shiftwidth=4                    " 每一级缩进是多少个空格
set smartindent                     " 开启智能缩进
set backspace=2                     " 设置退格键可用，正常处理indent,eol,start等
set smarttab                        " 在行和段开始处使用制表符 删除Tab一键delete
set noexpandtab                     " 不允许用空格代替制表符
set copyindent                      " 复制粘贴时保留原有的缩进
set autoindent cindent              " 启用自动对齐功能，把上一行的对齐格式应用到下一行
" [命·令]----------------------------------------------------------------------------------------------------------------------------------[命·令] "
" set showcmd                         " 输入的命令显示出来
set report=0                        " 通过使用 :commands 命令，告诉我们文件的哪一行被改变过
" [状态行]---------------------------------------------------------------------------------------------------------------------------------[状态行] "
set laststatus=2                    " 总是显示状态行
" set cmdheight=2                     " 命令行为两行
" [状态栏]---------------------------------------------------------------------------------------------------------------------------------[状态栏] "
set statusline=%F%m%r%h%w           " %文件名和路径%修改缓冲区%只读缓冲区%帮助缓冲区%预览窗口
set statusline+=\ [FORMAT=%{&ff}]   " 文件系统类型
set statusline+=\ [TYPE=%Y]\        " 文件类型
set statusline+=\ %=[POS=%l,%v]     " 行，列
set statusline+=\ [%p%%]            " 当前行数占总行数的的百分比
set statusline+=\ %{strftime(\"%y/%m/%d-%H:%M\")} " 显示日期
" [语·言]----------------------------------------------------------------------------------------------------------------------------------[语·言] "
set encoding=utf-8                  " Vim 内部 buffer (缓冲区)、菜单文本等使用的编码方式
set termencoding=utf-8              " Vim 所工作的终端的字符编码方式
set fileencoding=utf-8              " 当前编辑文件的字符编码方式，保存文件也使用这种编码方式
set fileencodings=uft-8,gbk         " Vim 启动时逐一按顺序使用第一个匹配到的编码方式打开文件
set helplang=cn                     " 帮助系统设置为中文
"set langmenu=zh_CN.UTF-8           " 显示中文菜单语言
set langmenu=en_US.UTF-8            " 显示英文菜单语言
"language messages zh_CN.utf-8      " 设置提示信息为中文
language messages en_US.UTF-8       " 设置提示信息为英文
" [文·件]----------------------------------------------------------------------------------------------------------------------------------[文·件] "
filetype on                         " 检测文件类型
filetype indent on                  " 为特定文件类型载入相关缩进文件
filetype plugin on                  " 允许载入文件类型插件
set fileformat=unix                 " 设置以 UNIX 的格式保存文件
set autoread                        " 设置当文件被改动时自动载入
set autowrite                       " 文件修改自动保存
set nobackup                        " 禁止文件自动备份
set noswapfile                      " 禁止生成临时文件
set confirm                         " 在处理未保存或只读文件的时候，弹出确认
set noundofile                      " 不生成 undo 文件
set hidden                          " 允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
" [折·叠]----------------------------------------------------------------------------------------------------------------------------------[折·叠] "
set wrap                            " 设置代码自动折行
set fo+=mB
set foldmethod=indent               " 基于缩进进行代码折叠
set nofoldenable                    " 启动 Vim 时关闭折叠
" [分·屏]----------------------------------------------------------------------------------------------------------------------------------[分·屏] "
set splitright                      " 竖直 split 时，在右边开启
set splitbelow                      " 水平 split 时，在下边开启
set equalalways                     " 分割窗口时保持相等的宽/高
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 分屏是空白分割
" [剪贴板]---------------------------------------------------------------------------------------------------------------------------------[剪贴板] "
set clipboard+=unnamed              " 共享剪贴板  
set fileformat=unix                 " 从Win上复制文件时，避免换行符错误
" [响·铃]----------------------------------------------------------------------------------------------------------------------------------[响·铃] "
set noeb                            " 去掉输入错误的提示声音
set noerrorbells                    " 关闭错误信息响铃
set novisualbell                    " 关闭使用可视响铃代替呼叫
set t_vb=                           " 置空错误铃声的终端代码
" [补·全]----------------------------------------------------------------------------------------------------------------------------------[补·全] "
set completeopt=preview,longest,menu,popup  " 代码补全
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType vim setlocal dict+=~/.vim/dict/vim.dict
autocmd FileType lua setlocal dict+=~/.vim/dict/lua.dict
autocmd FileType java setlocal dict+=~/.vim/dict/java.dict
autocmd FileType python setlocal dict+=~/.vim/dict/python.dict
autocmd FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr> " quickfix模式
" [其·它]----------------------------------------------------------------------------------------------------------------------------------[其·它] "
set magic                           " 设置魔术
set title                           " Show file in titlebar
set cino=L0                         " 在任意字符后面加冒号不会跳到行首
set history=1000                    " 记录 1000 条历史命令
set autochdir                       " 自动切换当前目录为当前文件所在的目录
set viminfo+=!                      " 保存全局变量
set iskeyword+=_,$,@,%,#,-          " 带有如下符号的单词不要被换行分割
set textwidth=0                     " 插入文本的最大宽度。更长的行会在空白之后截断，以达到此宽度。设为零关闭此项功能
set updatetime=100                  " 降低延迟和糟糕的用户体验
" Vim 重新打开文件时，回到上次历史所编辑文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [剪贴板]---------------------------------------------------------------------------------------------------------------------------------[剪贴板] "
" 在可视化模式下control+c复制到剪切板
vnoremap <C-c> "+y
" 在普通模式下control+p复制剪切板到vim
nnoremap <C-p> "+p
" [分割窗口调整大小]----------------------------------------------------------------------------------------------------------------[分割窗口调整大小] "
nnoremap <Leader><Right> :vertical resize +5<CR>
nnoremap <Leader><Left>  :vertical resize -5<CR>
nnoremap <Leader><Up>    :resize +5<CR>
nnoremap <Leader><Down>  :resize -5<CR>
" [Normal 模式，按 Esc+Esc 保存]---------------------------------------------------------------------------------------[Normal 模式，按 Esc+Esc 保存] "
map <Esc><Esc> :w<CR>
" [括号等自动补全]--------------------------------------------------------------------------------------------------------------------[括号等自动补全] "
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i
" inoremap < <><Esc>i
" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
" [标签页导航 按键映射]------------------------------------------------------------------------------------------------------------[标签页导航 按键映射] "
" nnoremap <Leader>1 1gt
" nnoremap <Leader>2 2gt
" nnoremap <Leader>3 3gt
" nnoremap <Leader>4 4gt
" nnoremap <Leader>5 5gt
" nnoremap <Leader>6 6gt
" nnoremap <Leader>7 7gt
" nnoremap <Leader>8 8gt
" nnoremap <Leader>9 9gt
" nnoremap <Leader>0 :tablast<CR>
" nnoremap <C-Insert> :tabnew<CR>
" nnoremap <C-Delete> :tabclose<CR>
" nnoremap <silent><Tab>m :tabnew<CR>
" nnoremap <silent><Tab>e :tabclose<CR>
" nnoremap <silent><Tab>n :tabn<CR>
" nnoremap <silent><Tab>p :tabp<CR>
" nnoremap <silent><s-Tab> :tabnext<CR>
" nnoremap <silent><Tab>m :tabnew<CR>
" nnoremap <silent><Tab>e :tabclose<CR>
" nnoremap <silent><Tab>n :tabn<CR>
" nnoremap <silent><Tab>p :tabp<CR>
" nnoremap <silent><s-Tab> :tabnext<CR>
" inoremap <silent><s-Tab> <Esc>:tabnext<CR>
" [FN自定义]------------------------------------------------------------------------------------------------------------------------------[FN自定义] "
"
" [文件操作]------------------------------------------------------------------------------------------------------------------------------[文件操作] "
" 一键去除全部尾部空白(\rb)
inoremap <Leader>rb <Esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
nnoremap <Leader>rb :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
vnoremap <Leader>rb <Esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
" 一键去除全部 ^M 字符(\rm)
inoremap <Leader>rm <Esc>:%s/<c-v><c-m>//g<CR>
nnoremap <Leader>rm :%s/<c-v><c-m>//g<CR>
vnoremap <Leader>rm <Esc>:%s/<c-v><c-m>//g<CR>
" [vimrc 配置文件按键映射]-----------------------------------------------------------------------------------------------------[vimrc 配置文件按键映射] "
" 当前窗口编辑配置文件
nnoremap <Leader>e <Esc>:edit $MYVIMRC<CR>
" 纵向分屏编辑配置文件
nnoremap <Leader>ev :vsp $MYVIMRC<CR>
" 重新加载 vimrc 文件，Leader 即前缀键默认为 “\”
nnoremap <Leader>sv :source $MYVIMRC<CR>
" [插件按键映射]------------------------------------------------------------------------------------------------------------------------[插件按键映射] "
" [vim-plug]----------------------------------------------------------------------------------------------------------------------------[vim-plug] "
" 查看插件状态
nnoremap <Leader><Leader>s :PlugStatus<CR>
" 安装在配置文件中声明的插件
nnoremap <Leader><Leader>i :PlugInstall<CR>
" 更新插件
nnoremap <Leader><Leader>u :PlugUpdate<CR>
" 升级 vim-plug 本身
nnoremap <Leader><Leader>g :PlugUpgrade<CR>
" 查看插件的变化状态，简单地回滚有问题的插件
nnoremap <Leader><Leader>d :PlugDiff<CR>
" 删除插件
nnoremap <Leader><Leader>c :PlugClean<CR>
" 关闭插件窗口
nnoremap <Leader><Leader>q :q<CR>
" [tagbar]--------------------------------------------------------------------------------------------------------------------------------[tagbar] "
" 打开标签目录 (r)efence (t)ree
nnoremap <SPACE>rt :TagbarToggle<CR>
" [nerdtree]----------------------------------------------------------------------------------------------------------------------------[nerdtree] "
" 列出当前目录文件 (f)ilr (t)ree
nnoremap <SPACE>ft :NERDTreeToggle<CR>
" [vim-airline]----------------------------------------------------------------------------------------------------------------------[vim-airline] "
" 设置切换Buffer快捷键
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
" [自定义函数按键映射]--------------------------------------------------------------------------------------------------------------[自定义函数按键映射] "
" 快捷键编译 (c)ompiler (r)un
nnoremap <SPACE>cr :call CompileRun()<CR>
" C,C++的GDB调试 (r)un (g)db
nnoremap <SPACE>rg :call RunGDB()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新建文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.go,*.java exec ":call SetTitle()" 
" 新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 

" [定义函数SetTitle，打开新文件时自动插入文件头]-----------------------------------------------------------[剪定义函数SetTitle，打开新文件时自动插入文件头贴板] "
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

" [快捷键编译]---------------------------------------------------------------------------------------------------------------------------[快捷键编译] "
function! CompileRun() abort
  exec "w"
  if &filetype == 'c'
    silent! exec "!clear"
	  exec "!gcc % -o %<"
	  exec "!time ./%<"
  elseif &filetype == 'cpp'
    silent! exec "!clear"
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
    silent! exec "!clear"
    exec "!time go run %"
  elseif &filetype == 'mkd'
    exec "!~/.vim/markdown.pl % > %.html &"
    exec "!chrome %.html &"
  endif
endfunction

" [快捷键调试]--------------------------------------------------------------------------------------------------------------------------[快捷键调试] "
function! RunGDB() abort
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -g -o %<"
    exec "!gdb ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -std=c++11 -g -o %<"
    exec "!gdb ./%<"
  endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [vim-plug]
call plug#begin('~/.vim/pack/package/opt')
" [代码块补全自动弹出]--------------------------------------------------------------------{git clone https://github.com/eikenb/acp}[代码块补全自动弹出] "
Plug 'eikenb/acp'
" [括号匹配]--------------------------------------------------------------------------{git clone https://github.com/jiangmiao/auto-pairs}[括号匹配] "
Plug 'jiangmiao/auto-pairs'
" [gruvbox主题]------------------------------------------------------------------------{git clone https://github.com/morhetz/gruvbox}[gruvbox主题] "
Plug 'morhetz/gruvbox'
" [快捷注释]----------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdcommenter}[快捷注释] "
Plug 'scrooloose/nerdcommenter'
" [文件树]------------------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdtree}[文件树] "
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" [文件树git标识]----------------------------------------------------------{git clone https://github.com/xuyuanp/nerdtree-git-plugin}[文件树git标识] "
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
" [语法检测]--------------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[语法检测] "
Plug 'scrooloose/syntastic'
" [函数标签]-----------------------------------------------------------------------------{git clone https://github.com/majutsushi/tagbar}[函数标签] "
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" [代码块补全]---------------------------------------------------------------------------{git clone https://github.com/sirver/ultisnips}[代码块补全] "
Plug 'sirver/ultisnips'
" [状态栏配置]--------------------------------------------------------------------{git clone https://github.com/vim-airline/vim-airline}[状态栏配置] "
Plug 'vim-airline/vim-airline'
" [状态栏主题]-------------------------------------------------------------{git clone https://github.com/vim-airline/vim-airline-themes}[状态栏主题] "
Plug 'vim-airline/vim-airline-themes'
" [git修改提示]-------------------------------------------------------------------{git clone https://github.com/airblade/vim-gitgutter}[git修改提示] "
Plug 'airblade/vim-gitgutter'
" [插件管理器]--------------------------------------------------------------------------{git clone https://github.com/junegunn/vim-plug}[插件管理器] "
Plug 'junegunn/vim-plug'
" [git标识提示]------------------------------------------------------------------------{git clone https://github.com/mhinz/vim-signify}[git标识提示] "
Plug 'mhinz/vim-signify'
" [代码块补全]-------------------------------------------------------------------------{git clone https://github.com/honza/vim-snippets}[代码块补全] "
Plug 'honza/vim-snippets'
call plug#end()

" [packadd]
" [代码块补全自动弹出]--------------------------------------------------------------------{git clone https://github.com/eikenb/acp}[代码块补全自动弹出] "
" packadd acp
" [括号匹配]--------------------------------------------------------------------------{git clone https://github.com/jiangmiao/auto-pairs}[括号匹配] "
" packadd auto-pairs
" [gruvbox主题]------------------------------------------------------------------------{git clone https://github.com/morhetz/gruvbox}[gruvbox主题] "
" packadd gruvbox
" [快捷注释]----------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdcommenter}[快捷注释] "
" packadd nerdcommenter
" [文件树]------------------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdtree}[文件树] "
" packadd nerdtree
" [文件树git标识]----------------------------------------------------------{git clone https://github.com/xuyuanp/nerdtree-git-plugin}[文件树git标识] "
" packadd nerdtree-git-plugin
" [语法检测]--------------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[语法检测] "
" packadd syntastic
" [函数标签]-----------------------------------------------------------------------------{git clone https://github.com/majutsushi/tagbar}[函数标签] "
" packadd tagbar
" [代码块补全]---------------------------------------------------------------------------{git clone https://github.com/sirver/ultisnips}[代码块补全] "
" packadd ultisnips
" [状态栏配置]--------------------------------------------------------------------{git clone https://github.com/vim-airline/vim-airline}[状态栏配置] "
" packadd vim-airline
" [状态栏主题]-------------------------------------------------------------{git clone https://github.com/vim-airline/vim-airline-themes}[状态栏主题] "
" packadd vim-airline-themes
" [git修改提示]-------------------------------------------------------------------{git clone https://github.com/airblade/vim-gitgutter}[git修改提示] "
" packadd vim-gitgutter
" [插件管理器]--------------------------------------------------------------------------{git clone https://github.com/junegunn/vim-plug}[插件管理器] "
" packadd vim-plug
" [git标识提示]------------------------------------------------------------------------{git clone https://github.com/mhinz/vim-signify}[git标识提示] "
" packadd vim-signify
" [代码块补全]-------------------------------------------------------------------------{git clone https://github.com/honza/vim-snippets}[代码块补全] "
" packadd vim-snippets

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [快捷注释配置]----------------------------------------------------------------{git clone https://github.com/scrooloose/nerdcommenter}[快捷注释配置] "
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

" [文件树配置]------------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdtree}[文件树配置] "
" [nerdtree]
autocmd StdinReadPre * let s:std_in=1
" vim不打开文件时打开文件树
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | execute 'NERDTree' | endif
" vim直接打开目录树
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" 当最后一个窗口时文件树时关闭窗口
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" [文件树git标识]----------------------------------------------------------{git clone https://github.com/xuyuanp/nerdtree-git-plugin}[文件树git标识] "
" [nerdtree-git-plugin]
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heave feature too. default: normal
let g:NERDTreeGitStatusShowClean = 1 " default: 0
let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0

" [语法检测配置]--------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[语法检测配置] "
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

" [状态栏配置]-----------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[状态栏配置] "
" [vim-airline]
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" [代码块补全配置]--------------------------------------------------------------------{git clone https://github.com/sirver/ultisnips}[代码块补全配置] "
" [ultisnips]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""