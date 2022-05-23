" =================================================================================================================================================
" complex vim configure
" Copyright 2021 nickdecodes
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
set shell=$SHELL                   " Vim 需要一个符合 Posix 的 Shell
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
colorscheme default                 " 主题选择
" [行、列]---------------------------------------------------------------------------------------------------------------------------------[行、列] "
set number                          " 显示行号
set ruler                           " 显示光标当前位置
"  set relativenumber                  " 行号以相对当前行的方式显示，方便跳转
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
"  set cmdheight=2                     " 命令行为两行
" [状态栏]---------------------------------------------------------------------------------------------------------------------------------[状态栏] "
set statusline=%F%m%r%h%w           " %文件名和路径%修改缓冲区%只读缓冲区%帮助缓冲区%预览窗口
set statusline+=\ [FORMAT=%{&ff}]   " 文件系统类型
set statusline+=\ [TYPE=%Y]\        " 文件类型
set statusline+=\ %=[POS=%l,%v]     " 行，列
set statusline+=\ [%p%%]            " 当前行数占总行数的的百分比
set statusline+=\ %{strftime(\"%Y/%m/%d-%H:%M\")} " 显示日期
" [语·言]----------------------------------------------------------------------------------------------------------------------------------[语·言] "
set encoding=utf-8                  " Vim 内部 buffer (缓冲区)、菜单文本等使用的编码方式
set termencoding=utf-8              " Vim 所工作的终端的字符编码方式
set fileencoding=utf-8               " 当前编辑文件的字符编码方式，保存文件也使用这种编码方式
set fileencodings=uft-8,gbk          " Vim 启动时逐一按顺序使用第一个匹配到的编码方式打开文件
set helplang=cn                     " 帮助系统设置为中文
"set langmenu=zh_CN.UTF-8           " 显示中文菜单语言
set langmenu=en_US.UTF-8            " 显示英文菜单语言
"language messages zh_CN.utf-8      " 设置提示信息为中文
language messages en_US.UTF-8       " 设置提示信息为英文
" [文·件]----------------------------------------------------------------------------------------------------------------------------------[文·件] "
filetype on                          " 检测文件类型
filetype indent on                   " 为特定文件类型载入相关缩进文件
filetype plugin on                   " 允许载入文件类型插件
set fileformat=unix                  " 设置以 UNIX 的格式保存文件
set autoread                        " 设置当文件被改动时自动载入
set autowrite                       " 文件修改自动保存
set nobackup                        " 禁止文件自动备份
set noswapfile                       " 禁止生成临时文件
set confirm                          " 在处理未保存或只读文件的时候，弹出确认
set noundofile                       " 不生成 undo 文件
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
set fileformat=unix                  " 从Win上复制文件时，避免换行符错误
" [响·铃]----------------------------------------------------------------------------------------------------------------------------------[响·铃] "
set noeb                            " 去掉输入错误的提示声音
set noerrorbells                    " 关闭错误信息响铃
set novisualbell                    " 关闭使用可视响铃代替呼叫
set t_vb=                           " 置空错误铃声的终端代码
" [补·全]----------------------------------------------------------------------------------------------------------------------------------[补·全] "
set completeopt=preview,longest " ,menu,popup  " 代码补全
autocmd FileType c setlocal dict+=~/.vim/dict/c.dict
autocmd FileType go setlocal dict+=~/.vim/dict/go.dict
autocmd FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
autocmd FileType vim setlocal dict+=~/.vim/dict/vim.dict
autocmd FileType lua setlocal dict+=~/.vim/dict/lua.dict
autocmd FileType java setlocal dict+=~/.vim/dict/java.dict
autocmd FileType python setlocal dict+=~/.vim/dict/python.dict
autocmd FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/javascript.dict
autocmd FileType html setlocal dict+=~/.vim/dict/css.dict
autocmd FileType css setlocal dict+=~/.vim/dict/css.dict
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
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ShortcutDict = {}
function! s:shortcut_desc(...) abort
  return keys(g:ShortcutDict)
endfunction
command! -nargs=1 -bar -bang -complete=customlist,s:shortcut_desc ShowShortcut echo g:ShortcutDict[<f-args>]
nnoremap <Space>ss :ShowShortcut <Space>
" [剪贴板]---------------------------------------------------------------------------------------------------------------------------------[剪贴板] "
" 在可视化模式下control+c复制到剪切板
vnoremap <C-c> "+y
let g:ShortcutDict["(C)opy (c)lipboard"] = "vnoremap <C-c>"
" 在普通模式下control+p复制剪切板到vim
nnoremap <C-p> "+p
let g:ShortcutDict["(C)lipboard (p)aste"] = "nnoremap <C-p>"
" [Normal 模式，按 Esc+Esc 保存]---------------------------------------------------------------------------------------[Normal 模式，按 Esc+Esc 保存] "
map <Esc><Esc> :w<CR>
" [括号等自动补全]--------------------------------------------------------------------------------------------------------------------[括号等自动补全] "
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i
" inoremap < <><Esc>i
" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
" [FN自定义]------------------------------------------------------------------------------------------------------------------------------[FN自定义] "
"
" [分割窗口调整大小]------------------------------------------------------------------------------------------------------------------[分割窗口调整大小] "
" Leader 即前缀键默认为 “\”
nnoremap <Space>rw<Right> :vertical resize +5<CR>
nnoremap <Space>rw<Left>  :vertical resize -5<CR>
nnoremap <Space>rw<Up>    :resize +5<CR>
nnoremap <Space>rw<Down>  :resize -5<CR>
let g:ShortcutDict["(r)esize (w)indow"] = "nnoremap <Space>rw[hjkl]"
nnoremap <Space>cw :close <CR>
let g:ShortcutDict["(c)lose (w)indow"] = "nnoremap <Space>cw"
nnoremap <Space>qw :wq <CR>
let g:ShortcutDict["(q)uit (w)indow"] = "nnoremap <Space>qw"
" [文件操作]------------------------------------------------------------------------------------------------------------------------------[文件操作] "
" 一键去除全部尾部空白(\rb)
inoremap <Leader>rb <Esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
nnoremap <Space>rb :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
let g:ShortcutDict["(r)emove (b)lack"] = "nnoremap <Space>rb"
vnoremap <Leader>rb <Esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
" 一键去除全部 ^M 字符(\rm)
inoremap <Leader>rm <Esc>:%s/<c-v><c-m>//g<CR>
nnoremap <Space>rm :%s/<c-v><c-m>//g<CR>
let g:ShortcutDict["(r)emove (m)char"] = "nnoremap <Space>rm"
vnoremap <Leader>rm <Esc>:%s/<c-v><c-m>//g<CR>
" [vimrc 配置文件按键映射]-----------------------------------------------------------------------------------------------------[vimrc 配置文件按键映射] "
" 当前窗口编辑配置文件 (e)dit (m)yvimrc
nnoremap <Space>hm <Esc>:sp $MYVIMRC<CR>
let g:ShortcutDict["(e)dit (m)yvimrc"] = "nnoremap <Space>em"
" 纵向分屏编辑配置文件 (v)sp (m)yvimrc
nnoremap <Space>vm :vsp $MYVIMRC<CR>
let g:ShortcutDict["(v)sp (m)yvimrc"] = "nnoremap <Space>vm"
" 重新加载vimrc文件 (s)ource (m)yvimrc
nnoremap <Space>sm :source $MYVIMRC<CR>
let g:ShortcutDict["(s)ource (m)yvimrc"] = "nnoremap <Space>sm"
" [插件按键映射]------------------------------------------------------------------------------------------------------------------------[插件按键映射] "
" [vim-plug]----------------------------------------------------------------------------------------------------------------------------[vim-plug] "
" 查看插件状态
nnoremap <Space>ps :PlugStatus<CR>
let g:ShortcutDict["(p)lug (s)tatus"] = "nnoremap <Space>ps"
" 安装在配置文件中声明的插件
nnoremap <Space>pi :PlugInstall<CR>
let g:ShortcutDict["(p)lug (i)nstall"] = "nnoremap <Space>pi"
" 更新插件
nnoremap <Space>pu :PlugUpdate<CR>
let g:ShortcutDict["(p)lug (u)pdate"] = "nnoremap <Space>pu"
" 升级vim-plug本身
nnoremap <Space>pug :PlugUpgrade<CR>
let g:ShortcutDict["(p)lug (u)p(g)rade"] = "nnoremap <Space>pug"
" 查看插件的变化状态，简单地回滚有问题的插件
nnoremap <Space>pd :PlugDiff<CR>
let g:ShortcutDict["(p)lug (d)iff"] = "nnoremap <Space>pd"
" 删除插件
nnoremap <Space>pc :PlugClean<CR>
let g:ShortcutDict["(p)lug (c)lean"] = "nnoremap <Space>pc"
" [tagbar]--------------------------------------------------------------------------------------------------------------------------------[tagbar] "
" 打开标签目录 (r)efence (t)ree
nnoremap <Space>rt :TagbarToggle<CR>
let g:ShortcutDict["(r)efence (t)ree"] = "nnoremap <Space>rt"
" [nerdtree]----------------------------------------------------------------------------------------------------------------------------[nerdtree] "
" 列出当前目录文件 (f)ile (t)ree
nnoremap <Space>ft :NERDTreeToggle<CR>
let g:ShortcutDict["(f)ile (t)ree"] = "nnoremap <Space>ft"
" [nerdcommenter]-----------------------------------------------------------------------------------------------------------------------[nerdtree] "
" 注释当前行
nnoremap <Space>cc <plug>NERDCommenterComment
let g:ShortcutDict["(c)ommenter (c)omment"] = "nnoremap <Space>cc"
" 强制嵌套注释
nnoremap <Space>cn <plug>NERDCommenterNested 
let g:ShortcutDict["(c)ommenter (n)ested"] = "nnoremap <Space>cn"
" 与上一行同步注释状态
nnoremap <Space>ct <plug>NERDCommenterToggle 
let g:ShortcutDict["(c)ommenter (t)oggle "] = "nnoremap <Space>ct"
" 块级注释
nnoremap <Space>cm <plug>NERDCommenterMinimal 
let g:ShortcutDict["(c)ommenter (m)inimal"] = "nnoremap <Space>cm"
" 改变当前行的注释状态
nnoremap <Space>cI <plug>NERDCommenterInvert 
let g:ShortcutDict["(c)ommenter (I)nvert"] = "nnoremap <Space>cI"
" 美观注释
nnoremap <Space>cs <plug>NERDCommenterSexy 
let g:ShortcutDict["(c)ommenter (s)exy"] = "nnoremap <Space>cs"
" 和...一样 抄送，但首先删除注释行
nnoremap <Space>cy <plug>NERDCommenterYank 
let g:ShortcutDict["(c)ommenter (y)ank "] = "nnoremap <Space>cy"
" 注释当前行从光标到行尾
nnoremap <Space>c$ <plug>NERDCommenterToEOL 
let g:ShortcutDict["(c)ommenter ($)"] = "nnoremap <Space>c$"
" 在行尾添加注释定界符，并在它们之间进入插入模式。
nnoremap <Space>cA <plug>NERDCommenterAppend 
let g:ShortcutDict["(c)ommenter (A)ppend"] = "nnoremap <Space>cA"
" 取消注释选定的行
nnoremap <Space>cu <plug>NERDCommenterUncomment
let g:ShortcutDict["(c)ommenter (u)ncomment"] = "nnoremap <Space>cu"
" [自定义函数按键映射]--------------------------------------------------------------------------------------------------------------[自定义函数按键映射] "
" 快捷键编译 (c)ompiler (r)un
nnoremap <Space>cr :call CompileRun()<CR>
let g:ShortcutDict["(c)ompiler (r)un"] = "nnoremap <Space>cr"
" C,C++的GDB调试 (r)un (g)db
nnoremap <Space>rg :call RunGDB()<CR>
let g:ShortcutDict["(r)un (g)db"] = "nnoremap <Space>rg"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 有的时候vimrc无法检测文件类型，导致文件头错误
autocmd BufNewFile,BufRead *.c setfiletype c
autocmd BufNewFile,BufRead *.sh setfiletype sh
autocmd BufNewFile,BufRead *.py setfiletype python
autocmd BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} setfiletype md
autocmd BufNewFile,BufRead *.go setfiletype go
autocmd BufNewFile,BufRead *.{cpp,hpp} setfiletype cpp
autocmd BufNewFile,BufRead *.java setfiletype java
autocmd BufRead,BufNewFile *.js setfiletype javascript
" 新建文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.py,*.go,*.java exec ":call SetTitle()" 
" 新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G 

" [定义函数SetTitle，打开新文件时自动插入文件头]-----------------------------------------------------------[剪定义函数SetTitle，打开新文件时自动插入文件头贴板] "
function! SetHead(line) abort
  call append(a:line, " @author  : ") 
  call append(a:line+1, " @email   : ")
  call append(a:line+2, " @usage   : ")
  call append(a:line+3, " @filename: ".expand("%")) 
  call append(a:line+4, " @datetime: ".strftime("%Y/%m/%d %H:%M")) 
  call append(a:line+5, " @software: vim") 
endfunction

function! SetTitle() abort 
  " 如果文件类型为.sh文件 
  if &filetype == 'sh' 
    call setline(1,"\# !/bin/bash") 
    call append(line("."), "") 
  elseif &filetype == 'python'
    call setline(1,"# !/usr/bin/env python")
    call append(line("."),"# -*- coding: utf-8 -*-")
    call append(line(".")+1, "")
    call append(line(".")+2, "\"\"\"")
    call SetHead(line(".")+3)
    call append(line(".")+9, "\"\"\"")
    call append(line(".")+10, "")
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
    call SetHead(line("."))
    call append(line(".")+6, "*************************************************************************/") 
    call append(line(".")+7, "")
  endif

  if expand("%:e") == 'cpp'
    call append(line(".")+8, "#include <iostream>")
    call append(line(".")+9, "using namespace std;")
    call append(line(".")+10, "")
  endif
  if &filetype == 'c'
    call append(line(".")+8, "#include <stdio.h>")
    call append(line(".")+9, "")
  endif
  if expand("%:e") == 'h'
    call append(line(".")+8, "#ifndef _".toupper(expand("%:r"))."_H")
    call append(line(".")+9, "#define _".toupper(expand("%:r"))."_H")
    call append(line(".")+10, "")
    call append(line(".")+11, "#endif")
  endif
  if &filetype == 'java'
    call append(line(".")+8,"public class ".expand("%:r"))
    call append(line(".")+9,"")
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
" [快捷注释]----------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdcommenter}[快捷注释] "
Plug 'scrooloose/nerdcommenter'
" [文件树]------------------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdtree}[文件树] "
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" [超级TAB]------------------------------------------------------------------------------{git clone https://github.com/ervandew/supertab}[超级TAB] "
Plug 'ervandew/supertab'
" [函数标签]-----------------------------------------------------------------------------{git clone https://github.com/majutsushi/tagbar}[函数标签] "
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" [语法检测]--------------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[语法检测] "
Plug 'scrooloose/syntastic'
" [插件管理器]--------------------------------------------------------------------------{git clone https://github.com/junegunn/vim-plug}[插件管理器] "
Plug 'junegunn/vim-plug'
" [git标识提示]------------------------------------------------------------------------{git clone https://github.com/mhinz/vim-signify}[git标识提示] "
Plug 'mhinz/vim-signify'
" [文件搜索]---------------------------------------------------------------------------------{git clone https://github.com/kien/ctrlp.vim}[文件搜索] "
Plug 'kien/ctrlp.vim'
call plug#end()

" [packadd]
" [代码块补全自动弹出]--------------------------------------------------------------------{git clone https://github.com/eikenb/acp}[代码块补全自动弹出] "
" packadd acp
" [括号匹配]--------------------------------------------------------------------------{git clone https://github.com/jiangmiao/auto-pairs}[括号匹配] "
" packadd auto-pairs
" [快捷注释]----------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdcommenter}[快捷注释] "
" packadd nerdcommenter
" [文件树]------------------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdtree}[文件树] "
" packadd nerdtree
" [超级TAB]------------------------------------------------------------------------------{git clone https://github.com/ervandew/supertab}[超级TAB] "
" packadd supertab
" [语法检测]--------------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[语法检测] "
" packadd syntastic
" [函数标签]-----------------------------------------------------------------------------{git clone https://github.com/majutsushi/tagbar}[函数标签] "
" packadd tagbar
" [插件管理器]--------------------------------------------------------------------------{git clone https://github.com/junegunn/vim-plug}[插件管理器] "
" packadd vim-plug
" [git标识提示]------------------------------------------------------------------------{git clone https://github.com/mhinz/vim-signify}[git标识提示] "
" packadd vim-signify
" [文件搜索]---------------------------------------------------------------------------------{git clone https://github.com/kien/ctrlp.vim}[文件搜索] "
" packadd ctrlp.vim

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

" [文件树配置]------------------------------------------------------------------------{git clone https://github.com/scrooloose/nerdtree}[文件树配置] "
" [nerdtree]
autocmd StdinReadPre * let s:std_in=1
" vim不打开文件时打开文件树
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | execute 'NERDTree' | endif
" vim直接打开目录树
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" 当最后一个窗口时文件树时关闭窗口
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" [SuperTab配置]---------------------------------------------------------------------{git clone https://github.com/ervandew/supertab}[SuperTa配置] "
" [SuperTab]
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'

" [语法检测配置]--------------------------------------------------------------------{git clone https://github.com/scrooloose/syntastic}[语法检测配置] "
" [syntastic]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_go_checkers = ['go']
let g:syntastic_java_checkers = ['javac']
let g:syntastic_javascript_checkers = ['flow']
let g:syntastic_html_checkers = ['tidy']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
