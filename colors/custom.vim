" =================================================================================================================================================
" Vim color file
" create by NickDeCodes (NickDeCodes@163.com) 
" =================================================================================================================================================
" 
" +----------+-------------------------------------------------------------------------------------------------------------------------------------
" | theme    | file
" +----------+-------------------------------------------------------------------------------------------------------------------------------------
" +----------+-------------------------------------------------------------------------------------------------------------------------------------
"
" Notes:
"   1、Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释
" =================================================================================================================================================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 环境设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
set t_Co=256
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "custom"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" 通用设置 适用任何情况
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [文·本]----------------------------------------------------------------------------------------------------------------------------------[文·本] "
hi SpecialKey     ctermfg=239 ctermbg=NONE cterm=NONE guifg=#4e4e4e guibg=NONE gui=NONE " ^[]":map" 一般的: 和实际内容显示上有差异的文本。
hi NonText        ctermfg=239 ctermbg=NONE cterm=NONE guifg=#4e4e4e guibg=NONE gui=NONE " 非文本区（控制字符和一些特殊字符和编辑器空白区等）
hi Directory      ctermfg=154 ctermbg=NONE cterm=bold guifg=#afff00 guibg=NONE gui=bold " 目录名 (还有列表里的其它特殊名字)
hi ErrorMsg       ctermfg=199 ctermbg=16 cterm=bold guifg=#ff00af guibg=#000000 gui=bold " 命令行上的错误信息
" [搜索相关]-----------------------------------------------------------------------------------------------------------------------------[搜索相关] "
hi IncSearch      ctermfg=193 ctermbg=16 cterm=NONE guifg=#d7ffaf guibg=#000000 gui=NONE " 高亮；也用于被 ":s///c" 替换的文本
hi Search         ctermfg=NONE ctermbg=222 cterm=reverse,bold guifg=NONE guibg=#ffd787 gui=reverse,bold " 查找高亮,包含QuickFixLine
" [提示相关]-----------------------------------------------------------------------------------------------------------------------------[提示相关] "
hi MoreMsg 		    ctermfg=229 ctermbg=NONE cterm=NONE guifg=#ffffaf guibg=NONE gui=NONE " 使用 |set showcmd| 时输入栏提示
hi ModeMsg 		    ctermfg=229 ctermbg=NONE cterm=bold guifg=#ffffaf guibg=NONE gui=bold " 模式提示 (例如，"-- INSERT --")
" [左侧边栏]-----------------------------------------------------------------------------------------------------------------------------[左侧边栏] "
hi LineNr         ctermfg=239 ctermbg=235 cterm=NONE guifg=#4e4e4e guibg=#262626 gui=NONE " 置位 'number' 或 'relativenumber' 选项时的行号
hi CursorLineNr   ctermfg=208 ctermbg=NONE cterm=bold guifg=#ff8700 guibg=NONE gui=bold " 置位 'number' 或 'relativenumber' 选项时的光标行
" [左侧边栏扩展]----------------------------------------------------------------------------------------------------------------------[左侧边栏扩展] "
hi LineNrAbove    ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " 置位 'relativenumber' 选项时，光标上方的行号。
hi LineNrBelow    ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " 置位 'relativenumber' 选项时，光标下方的行号。
" [命令行提示]-------------------------------------------------------------------------------------------------------------------------[命令行提示] "
hi Question 		  ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff guibg=NONE gui=NONE " |hit-enter| 提示和 yes/no 问补全时下方的提示信息1/5
" [状态栏]--------------------------------------------------------------------------------------------------------------------------------[状态栏] "
hi StatusLine     ctermfg=238 ctermbg=253 cterm=bold guifg=#444444 guibg=#dadada gui=bold " 当前窗口的状态行
hi StatusLineNC	  ctermfg=244 ctermbg=232 cterm=bold guifg=#808080 guibg=#080808 gui=bold " 非当前窗口的状态行
" [分割窗口]-----------------------------------------------------------------------------------------------------------------------------[分割窗口] "
hi VertSplit      ctermfg=244 ctermbg=232 cterm=bold guifg=#808080 guibg=#080808 gui=bold " 分离垂直分割窗口的列
hi Title          ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE " \ ":set all"、":autocmd" 等输出的标题 markdown标题
" [可视化]--------------------------------------------------------------------------------------------------------------------------------[可视化] "
hi Visual         ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#444444 gui=NONE " 可视模式的选择区
hi VisualNOS      ctermfg=NONE ctermbg=238 cterm=NONE guifg=NONE guibg=#444444 gui=NONE " Vim 是选择区的非拥有者时，可视模式的选择区
hi WarningMsg     ctermfg=231 ctermbg=238 cterm=bold guifg=#ffffff guibg=#444444 gui=bold " 警告消息
hi WildMenu 		  ctermfg=81 ctermbg=NONE cterm=inverse,bold guifg=#5fd7ff guibg=NONE gui=inverse,bold " 补全的当前匹配
" [折叠模式]-----------------------------------------------------------------------------------------------------------------------------[折叠模式] "
hi Folded         ctermfg=67 ctermbg=16 cterm=NONE guifg=#5f87af guibg=#000000 gui=NONE " 用于关闭的折叠的行 
hi FoldColumn 	  ctermfg=67 ctermbg=16 cterm=NONE guifg=#5f87af guibg=#000000 gui=NONE " 用于关闭的折叠的列
" [比较模式]-----------------------------------------------------------------------------------------------------------------------------[比较模式] "
hi DiffAdd        ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#005f87 gui=NONE " 增加的行
hi DiffChange     ctermfg=181 ctermbg=239 cterm=NONE guifg=#d7afaf guibg=#4e4e4e gui=NONE " 改变的行
hi DiffDelete     ctermfg=125 ctermbg=233 cterm=NONE guifg=#af005f guibg=#121212 gui=NONE " 删除的行
hi DiffText       ctermfg=NONE ctermbg=102 cterm=bold guifg=NONE guibg=#878787 gui=bold " 改变行里的改动文本
hi SignColumn     ctermfg=118 ctermbg=235 cterm=NONE guifg=#87ff00 guibg=#262626 gui=NONE " 显示 |signs| 的列, 左侧边栏填充
hi Conceal        ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " 代替隐藏文本的填充字符
" [拼写相关]-----------------------------------------------------------------------------------------------------------------------------[拼写相关] "
hi SpellBad       ctermfg=DarkGrey ctermbg=52 cterm=reverse guifg=DarkGrey guibg=#5f0000 gui=reverse " 拼写检查器不能识别的单词
hi SpellCap       ctermfg=DarkGrey ctermbg=17 cterm=reverse guifg=DarkGrey guibg=#00005f gui=reverse " 应该大写字母开头的单词
hi SpellRare      ctermfg=DarkGrey ctermbg=17 cterm=reverse guifg=DarkGrey guibg=#00005f gui=reverse " 拼写检查器能识别但很少使用的单词
hi SpellLocal	    ctermfg=DarkGrey ctermbg=NONE cterm=reverse guifg=DarkGrey guibg=NONE gui=reverse " 拼写检查器能识别但只在其它区域使用的单词
" [菜单相关]-----------------------------------------------------------------------------------------------------------------------------[菜单相关] "
hi Pmenu          ctermfg=81 ctermbg=16 cterm=NONE guifg=#5fd7ff guibg=#000000 gui=NONE " 弹出菜单: 普通项目 补全提示行 
hi PmenuSel       ctermfg=255 ctermbg=242 cterm=inverse,bold guifg=#eeeeee guibg=#666666 gui=inverse,bold " 弹出菜单: 选中项目。 补全光标行
hi PmenuSbar      ctermfg=NONE ctermbg=232 cterm=NONE guifg=NONE guibg=#080808 gui=NONE " 弹出菜单: 滚动条
hi PmenuThumb     ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff guibg=NONE gui=NONE " 弹出菜单: 滚动条的拇指 (thumb)
" [标签相关]-----------------------------------------------------------------------------------------------------------------------------[标签相关] "
hi TabLine        ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " 非活动标签页标签
hi TabLineSel     ctermfg=Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE " 活动标签页标签
hi TabLineFill    ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 没有标签的地方
" [光标相关]-----------------------------------------------------------------------------------------------------------------------------[光标相关] "
hi CursorLine     ctermfg=NONE ctermbg=233 cterm=NONE guifg=#121212 guibg=NONE gui=NONE " 光标所在的屏幕行
hi CursorColumn   ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#303030 gui=NONE " 光标所在的屏幕列
hi ColorColumn    ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#303030 gui=NONE " 设置的列
" [状态栏]--------------------------------------------------------------------------------------------------------------------------------[状态栏] "
hi StatusLineTerm	ctermfg=Grey ctermbg=237 cterm=bold guifg=Grey guibg=#3a3a3a gui=bold " 窗口为当前窗口时的状态行
hi StatusLineTermNC ctermfg=DarkGrey ctermbg=237 cterm=bold guifg=DarkGrey guibg=#3a3a3a gui=bold " 窗口不为当前窗口时的状态行
" [文本]-----------------------------------------------------------------------------------------------------------------------------------[文本] "
hi Normal         ctermfg=252 ctermbg=NONE cterm=NONE guifg=#d0d0d0 guibg=NONE gui=NONE " 所有文本
hi Cursor         ctermfg=16  ctermbg=253 cterm=NONE guifg=#000000 guibg=#121212 gui=NONE " 光标所在字符


" 通用语法设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [搜索相关]-----------------------------------------------------------------------------------------------------------------------------[搜索相关] " 
hi MatchParen     ctermfg=233 ctermbg=208 cterm=reverse,bold guifg=#121212 guibg=#ff8700 gui=reverse,bold " 括号匹配
" [工具栏相关]--------------------------------------------------------------------------------------------------------------------------[工具栏相关] "
"hi ToolbarLine	
"hi ToolbarButton
" [段落相关]-----------------------------------------------------------------------------------------------------------------------------[段落相关] "
hi Comment        ctermfg=244 ctermbg=NONE cterm=NONE guifg=#808080 guibg=NONE gui=NONE " 文件头部文本
" [常数相关]-----------------------------------------------------------------------------------------------------------------------------[常数相关] "
hi Constant       ctermfg=141 ctermbg=NONE cterm=bold guifg=#af87ff guibg=NONE gui=bold " 任何常数
" [特殊字段]-----------------------------------------------------------------------------------------------------------------------------[特殊字段] "
hi Special        ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff guibg=NONE gui=NONE " 任何特殊字段
" [任何定义]-----------------------------------------------------------------------------------------------------------------------------[任何定义] "
hi Identifier     ctermfg=208 ctermbg=NONE cterm=NONE guifg=#ff8700 guibg=NONE gui=NONE " 任何定义
" [任何声明]-----------------------------------------------------------------------------------------------------------------------------[任何声明] "
hi Statement      ctermfg=197 ctermbg=NONE cterm=bold guifg=#ff005f guibg=NONE gui=bold " 任何声明
" [通用预处理命令]-------------------------------------------------------------------------------------------------------------------[通用预处理命令] "
hi PreProc        ctermfg=154 ctermbg=NONE cterm=bold guifg=#afff00 guibg=NONE gui=bold " 通用预处理命令
" [任何类型]-----------------------------------------------------------------------------------------------------------------------------[任何类型] "
hi Type           ctermfg=81 ctermbg=NONE cterm=bold guifg=#5fd7ff guibg=NONE gui=bold " 任何类型
" [链接]-----------------------------------------------------------------------------------------------------------------------------------[链接] "
hi Underlined     ctermfg=244 ctermbg=NONE cterm=underline guifg=#808080 guibg=NONE gui=underline " 需要突出的文本，HTML 链接 包括helpUnderlined
" [文件头部声明]----------------------------------------------------------------------------------------------------------------------[文件头部声明] "
hi Ignore         ctermfg=244 ctermbg=232 cterm=NONE guifg=#808080 guibg=#080808 gui=NONE " 文件头部声明
" [错误提示]-----------------------------------------------------------------------------------------------------------------------------[错误提示] "
hi Error          ctermfg=222 ctermbg=232 cterm=NONE guifg=#ffd787 guibg=#080808 gui=NONE " 错误提示 左侧栏 >>
" [TODO]----------------------------------------------------------------------------------------------------------------------------------[TODO] "
hi Todo           ctermfg=231 ctermbg=232 cterm=bold guifg=#ffffff guibg=#080808 gui=bold " 需要特殊注意的部分；主要是关键字 TODO FIXME 和 XX


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 单独字段语法
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [常量相关]----------------------------------------------------------------------------------------------------------------------------[常量相关] "
hi String         ctermfg=222 ctermbg=NONE cterm=NONE guifg=#ffd787 guibg=NONE gui=NONE " 字符串
hi Character      ctermfg=222 ctermbg=NONE cterm=NONE guifg=#ffd787 guibg=NONE gui=NONE " 字符
hi Number         ctermfg=141 ctermbg=NONE cterm=NONE guifg=#af87ff guibg=NONE gui=NONE " 数字
hi Boolean        ctermfg=141 ctermbg=NONE cterm=NONE guifg=#af87ff guibg=NONE gui=NONE " bool值
hi Float          ctermfg=141 ctermbg=NONE cterm=NONE guifg=#af87ff guibg=NONE gui=NONE " float值高亮
" [函数字段]----------------------------------------------------------------------------------------------------------------------------[函数字段] "
hi Function       ctermfg=154 ctermbg=NONE cterm=bold guifg=#afff00 guibg=NONE gui=bold " 函数名 (也包括: 类的方法名)
" [声明字段]-----------------------------------------------------------------------------------------------------------------------------[声明字段] "
hi Conditional    ctermfg=197 ctermbg=NONE cterm=bold guifg=#ff005f guibg=NONE gui=bold " if、then、else、endif、switch 等
hi Repeat         ctermfg=197 ctermbg=NONE cterm=bold guifg=#ff005f guibg=NONE gui=bold " for、do、while 等
hi Label          ctermfg=229 ctermbg=NONE cterm=bold guifg=#ffffaf guibg=NONE gui=bold " case、default 等
hi Operator       ctermfg=197 ctermbg=NONE cterm=bold guifg=#ff005f guibg=NONE gui=bold " \ sizeof、+、* 等
hi Keyword        ctermfg=197 ctermbg=NONE cterm=bold guifg=#ff005f guibg=NONE gui=bold " 其它关键字
hi Exception      ctermfg=154 ctermbg=NONE cterm=bold guifg=#afff00 guibg=NONE gui=bold " try、catch、throw
" [预处理命令]-------------------------------------------------------------------------------------------------------------------------[预处理命令] "
hi Include        ctermfg=214 ctermbg=NONE cterm=NONE guifg=#ffaf00 guibg=NONE gui=NONE " #include
hi Define         ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5fd7ff guibg=NONE gui=NONE " #define
hi Macro          ctermfg=193 ctermbg=NONE cterm=NONE guifg=#d7ffaf guibg=NONE gui=NONE " 宏
hi PreCondit      ctermfg=154 ctermbg=NONE cterm=bold guifg=#afff00 guibg=NONE gui=bold " makefile ifneq
" [类型字段]----------------------------------------------------------------------------------------------------------------------------[类型字段] "
hi StorageClass   ctermfg=208 ctermbg=NONE cterm=bold guifg=#ff8700 guibg=NONE gui=bold " static、register、volatile 等
hi Structure      ctermfg=81 ctermbg=NONE cterm=bold guifg=#5fd7ff guibg=NONE gui=bold " struct、union、enum 等
hi Typedef        ctermfg=81 ctermbg=NONE cterm=bold guifg=#5fd7ff guibg=NONE gui=bold " typedef
" [特殊字段]----------------------------------------------------------------------------------------------------------------------------[特殊字段] "
hi Tag            ctermfg=197 ctermbg=NONE cterm=bold guifg=#ff005f guibg=NONE gui=bold " 可以使用 CTRL-] 的项目
hi SpecialChar    ctermfg=81 ctermbg=NONE cterm=bold guifg=#5fd7ff guibg=NONE gui=bold " %s
hi Delimiter      ctermfg=241 ctermbg=NONE cterm=NONE guifg=#606060 guibg=NONE gui=NONE " 需要注意的字 分隔符<>
hi SpecialComment ctermfg=245 ctermbg=NONE cterm=bold guifg=#8a8a8a guibg=NONE gui=bold " 注释里的特殊部分
hi Debug          ctermfg=225 ctermbg=NONE cterm=bold guifg=#eeeeee guibg=NONE gui=bold " 调试语句
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
