" Vim color file
" create by NickDeCodes (NickDeCodes@163.com)

set background=dark
set t_Co=256
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xcodelight"
" 初始化
hi Normal         ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE " 普通文本 
hi Boolean        ctermfg=DarkMagenta ctermbg=NONE cterm=NONE guifg=DarkMagenta guibg=NONE gui=NONE " bool值高亮
hi Cursor         ctermfg=NONE ctermbg=NONE cterm=inverse guifg=Cyan guibg=Cyan gui=inverse " 光标所在的字符
hi CursorLine     ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline " 光标当前行
hi CursorLineNr   ctermfg=Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE " 光标当前行
hi CursorColumn   ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 光标当前列
hi ColorColumn    ctermfg=Red ctermbg=Red cterm=NONE guifg=Red guibg=Red gui=NONE " 颜色列
hi Character      ctermfg=Blue ctermbg=NONE cterm=NONE guifg=Blue guibg=NONE gui=NONE " 字符高亮
hi Comment        ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=italic " 文件头部声明
hi Constant       ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " 任何常数
hi Conditional    ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " if、then、else、endif、switch 等
hi Debug          ctermfg=Yellow ctermbg=Red cterm=NONE guifg=Yellow guibg=Red gui=NONE " 调试语句
hi Define         ctermfg=Brown ctermbg=NONE cterm=NONE guifg=Brown guibg=NONE gui=NONE " 预处理命令 #define
hi Directory      ctermfg=Green ctermbg=NONE cterm=NONE guifg=Green guibg=NONE gui=NONE " 目录名 (还有列表里的其它特殊名字)
hi Delimiter      ctermfg=Black ctermbg=NONE cterm=NONE guifg=Black guibg=NONE gui=NONE " 需要注意的字 分隔符<>
hi DiffAdd        ctermfg=Grey ctermbg=Red cterm=NONE guifg=Grey guibg=Red gui=NONE " diff 模式: 增加的行 |diff.txt|
hi DiffDelete     ctermfg=Red ctermbg=Cyan cterm=NONE guifg=Red guibg=Cyan gui=NONE " diff 模式: 删除的行 |diff.txt|
hi DiffChange     ctermfg=Cyan ctermbg=Cyan cterm=NONE guifg=Cyan guibg=Cyan gui=NONE " diff 模式: 改变的行 |diff.txt|
hi DiffText       ctermfg=Yellow ctermbg=Cyan cterm=NONE guifg=Yellow guibg=Cyan gui=bold " diff 模式: 改变行里的改动文本 |diff.txt|
hi Error          ctermfg=Red ctermbg=NONE cterm=NONE guifg=Red guibg=NONE gui=NONE " 错误左侧>>
hi ErrorMsg       ctermfg=Red ctermbg=NONE cterm=NONE guifg=Red guibg=NONE gui=NONE " 命令行中的错误提示
hi Exception      ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " try、catch、throw
hi EndOfBuffer    ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE
hi Folded         ctermfg=Green ctermbg=NONE cterm=NONE guifg=Green guibg=NONE gui=NONE " 折叠行高亮 
hi FoldColumn 	  ctermfg=Green ctermbg=NONE cterm=NONE guifg=Green guibg=NONE gui=NONE " 用于关闭的折叠的列
hi Float          ctermfg=Blue ctermbg=NONE cterm=NONE guifg=Blue guibg=NONE gui=NONE " float值高亮
hi Function       ctermfg=Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE " 函数名 (也包括: 类的方法名)
hi Include        ctermfg=94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE " 预处理命令 #include
hi IncSearch      ctermfg=Yellow ctermbg=Black cterm=NONE guifg=Yellow guibg=Black gui=NONE " 高亮；也用于被 ":s///c" 替换的文本
hi Identifier     ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 任何变量名
hi Keyword        ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " 其它关键字
hi LineNr         ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " 左侧行号
hi Label          ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " case、default 等
hi Menu           ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 当前菜单的字体、背景色和前景色。也包括工具栏。可用的高亮参数: font、guibg、guifg。
hi Macro          ctermfg=94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE " 宏
hi MatchParen     ctermfg=Yellow ctermbg=Black cterm=inverse guifg=Yellow guibg=Black gui=inverse " 括号匹配
hi ModeMsg 		    ctermfg=Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE " 模式高亮
hi MoreMsg 		    ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 输入栏提示
hi NonText        ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " 非文本区（控制字符和一些特殊字符和编辑器空白区等）
hi Number         ctermfg=Blue ctermbg=NONE cterm=NONE guifg=Blue guibg=NONE gui=NONE " 数字
hi Operator       ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " "sizeof"、"+"、"*" 等
hi Pmenu          ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE "弹出菜单: 普通项目 补全提示行 
hi PmenuSel       ctermfg=27 ctermbg=Black cterm=inverse guifg=#005fff guibg=Black gui=inverse " 弹出菜单: 选中项目。 补全光标行
hi PmenuSbar      ctermfg=Red ctermbg=Green cterm=inverse guifg=Red guibg=Green gui=inverse " 弹出菜单: 滚动条
hi PmenuThumb     ctermfg=Cyan ctermbg=Green cterm=inverse guifg=Cyan guibg=Green gui=inverse " 弹出菜单: 滚动条的拇指 (thumb)
hi PreProc        ctermfg=94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE " 通用预处理命令
hi PreCondit      ctermfg=94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE " 预处理命令makefile ifneq
hi Question 		  ctermfg=Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=bold " |hit-enter| 提示和 yes/no 问补全时下方的提示信息1/5
hi Repeat         ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " for、do、while 等
hi StatusLine     ctermfg=231 ctermbg=59 cterm=bold guifg=#ffffff guibg=#5f5f5f gui=bold " 当前窗口的状态行
hi StatusLineNC   ctermfg=231 ctermbg=59 cterm=bold guifg=#ffffff guibg=#5f5f5f gui=bold " 非当前窗口的状态行
hi Search         ctermfg=Yellow ctermbg=Black cterm=reverse guifg=Yellow guibg=Black gui=reverse " 查找高亮
hi Special        ctermfg=DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE " python#注释
hi SpecialChar    ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE " %s
hi SpecialKey     ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " ^[]
hi Statement      ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " 任何语句
hi StorageClass   ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " static、register、volatile 等
hi SignColumn     ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE " 显示 |signs| 的列
hi Structure      ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " struct、union、enum等
hi String         ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE " 字符串
hi SpellBad       term=reverse ctermbg=9 gui=undercurl guisp=Red " 拼写检查器不能识别的单词。|spell|它会和本来应该使用的高亮进行组合
hi SpellCap       term=reverse ctermbg=12 gui=undercurl guisp=Blue " 拼写检查器能识别但只在其它区域使用的单词
hi SpellRare      ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE " 拼写检查器能识别但很少使用的单词
hi Scrollbar      ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 主窗口滚动条的当前背景和前景色。可用的高亮参数: guibg、guifg。
hi SpecialComment ctermfg=Cyan ctermbg=Blue cterm=NONE guifg=Cyan guibg=Blue gui=NONE " 注释里的特殊部分
hi Tag            ctermfg=Green ctermbg=Blue cterm=NONE guifg=Green guibg=Blue gui=NONE " 可以使用 CTRL-] 的项目
hi Todo           ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=inverse,bold,italic " 需要特殊注意的部分；主要是关键字 TODO FIXME 和 XX
hi Type           ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " int、void、bool、char等声明语法高亮
hi Title          ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=bold " ":set all"、":autocmd" 等输出的标题 markdown标题
hi Tooltip	      ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 当前工具提示的字体、背景色和前景色。也包括工具栏。可用的高亮参数: font、guibg、guifg。
hi Typedef        ctermfg=DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold " typedef 定义
hi TabLine        ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 标签页行，非活动标签页标签
hi TabLineFill    ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 标签页行，没有标签的地方
hi TabLineSel     ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 标签页行，活动标签页标签
hi Underlined     ctermfg=Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE " 需要突出的文本，HTML 链接
hi Visual         ctermfg=NONE ctermbg=LightCyan cterm=NONE guifg=NONE guibg=LightCyan gui=NONE " 可视模式的选择区
hi VertSplit      ctermfg=NONE ctermbg=Grey cterm=NONE guifg=NONE guibg=Grey gui=NONE " 分离垂直分割窗口的列
hi VisualNOS      ctermfg=Yellow ctermbg=Grey cterm=NONE guifg=Yellow guibg=Grey gui=NONE " Vim 是 "选择区的非拥有者" 时，可视模式的选择区
hi WildMenu 		  ctermfg=Blue ctermbg=Grey cterm=NONE guifg=Blue guibg=Grey gui=NONE " 'wildmenu' 补全的当前匹配
hi WarningMsg     ctermfg=Yellow ctermbg=NONE cterm=NONE guifg=Yellow guibg=NONE gui=NONE " 命令行中的警告提示
