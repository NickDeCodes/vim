" Vim color file
" create by nickdecodes (nickdecodes@163.com)

set background=dark
set t_Co=256
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "vpmcolor"
let s:scheme = {}
let s:scheme.dark = (&background ==# 'dark')
let s:scheme.high = vpm#api#import('vim#highlight')
let s:scheme.color = vpm#api#import('color')

let s:scheme.palette = {
  \ 'dark' : [
  " [item                 , ctermfg,     ctermbg,    cterm,      gui]
    \ ['Normal'           , NONE,        NONE,       NONE,       NONE], " 普通文本 
    \ ['Boolean'          , DarkMagenta , NONE,       NONE,       NONE], " bool值高亮
    \ ['Cursor'           , NONE, ctermbg=NONE cterm=inverse guifg=Cyan guibg=Cyan gui=inverse], " 光标所在的字符
    \ ['CursorLine'       , NONE, ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline], " 光标当前行
    \ ['CursorLineNr'     , Cyan, ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE], " 光标当前行
    \ ['CursorColumn'     , NONE,        ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE], " 光标当前列
    \ ['ColorColumn'      , Red,         ctermbg=Red cterm=NONE guifg=Red guibg=Red gui=NONE], " 颜色列
    \ ['Character'        , Blue,        ctermbg=NONE cterm=NONE guifg=Blue guibg=NONE gui=NONE], " 字符高亮
    \ ['Comment'          , DarkGrey,    ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=italic], " 文件头部声明
    \ ['Constant'         , DarkMagenta, ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " 任何常数
    \ ['Conditional'      , DarkMagenta, ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " if、then、else、endif、switch 等
    \ ['Debug'            , Yellow,      ctermbg=Red cterm=NONE guifg=Yellow guibg=Red gui=NONE], " 调试语句
    \ ['Define'           , Brown,       ctermbg=NONE cterm=NONE guifg=Brown guibg=NONE gui=NONE], " 预处理命令 #define
    \ ['Directory'        , Green,       ctermbg=NONE cterm=NONE guifg=Green guibg=NONE gui=NONE], " 目录名 (还有列表里的其它特殊名字)
    \ ['Delimiter'        , Black,       ctermbg=NONE cterm=NONE guifg=Black guibg=NONE gui=NONE], " 需要注意的字 分隔符<>
    \ ['DiffAdd'          , Grey,        ctermbg=Red cterm=NONE guifg=Grey guibg=Red gui=NONE], " diff 模式: 增加的行 |diff.txt|
    \ ['DiffDelete'       , Red,         ctermbg=Cyan cterm=NONE guifg=Red guibg=Cyan gui=NONE], " diff 模式: 删除的行 |diff.txt|
    \ ['DiffChange'       , Cyan,        ctermbg=Cyan cterm=NONE guifg=Cyan guibg=Cyan gui=NONE], " diff 模式: 改变的行 |diff.txt|
    \ ['DiffText'         , Yellow ctermbg=Cyan cterm=NONE guifg=Yellow guibg=Cyan gui=bold], " diff 模式: 改变行里的改动文本 |diff.txt|
    \ ['Error'            , Red ctermbg=NONE cterm=NONE guifg=Red guibg=NONE gui=NONE], " 错误左侧>>
    \ ['ErrorMsg'         , Red ctermbg=NONE cterm=NONE guifg=Red guibg=NONE gui=NONE], " 命令行中的错误提示
    \ ['Exception'        , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " try、catch、throw
    \ ['EndOfBuffer'      , DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE],
    \ ['Folded'           , Green ctermbg=NONE cterm=NONE guifg=Green guibg=NONE gui=NONE], " 折叠行高亮 
    \ ['FoldColumn' 	    , Green ctermbg=NONE cterm=NONE guifg=Green guibg=NONE gui=NONE], " 用于关闭的折叠的列
    \ ['Float'            , Blue ctermbg=NONE cterm=NONE guifg=Blue guibg=NONE gui=NONE], " float值高亮
    \ ['Function'         , Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE], " 函数名 (也包括: 类的方法名)
    \ ['Include'          , 94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE], " 预处理命令 #include
    \ ['IncSearch'        , Yellow ctermbg=Black cterm=NONE guifg=Yellow guibg=Black gui=NONE], " 高亮；也用于被 ":s///c" 替换的文本
    \ ['Identifier'       , NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE], " 任何变量名
    \ ['Keyword'          , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " 其它关键字
    \ ['LineNr'           , DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE], " 左侧行号
    \ ['Label'            , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " case、default 等
    \ ['Menu'             , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 当前菜单的字体、背景色和前景色。也包括工具栏。可用的高亮参数: font、guibg、guifg。
    \ ['Macro'            , 94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE], " 宏
    \ ['MatchParen'       , Yellow ctermbg=Black cterm=inverse guifg=Yellow guibg=Black gui=inverse], " 括号匹配
    \ ['ModeMsg' 		      , Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=NONE], " 模式高亮
    \ ['MoreMsg' 		      , NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE], " 输入栏提示
    \ ['NonText'          , DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE], " 非文本区（控制字符和一些特殊字符和编辑器空白区等）
    \ ['Number'           , Blue ctermbg=NONE cterm=NONE guifg=Blue guibg=NONE gui=NONE], " 数字
    \ ['Operator'         , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " \"sizeof"、"+"、"*" 等
    \ ['Pmenu'            , DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE], " 弹出菜单: 普通项目 补全提示行 
    \ ['PmenuSel'         , 27 ctermbg=Black cterm=inverse guifg=#005fff guibg=Black gui=inverse], " 弹出菜单: 选中项目。 补全光标行
    \ ['PmenuSbar'        , Red ctermbg=Green cterm=inverse guifg=Red guibg=Green gui=inverse], " 弹出菜单: 滚动条
    \ ['PmenuThumb'       , Cyan ctermbg=Green cterm=inverse guifg=Cyan guibg=Green gui=inverse], " 弹出菜单: 滚动条的拇指 (thumb)
    \ ['PreProc'          , 94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE], " 通用预处理命令
    \ ['PreCondit'        , 94 ctermbg=NONE cterm=NONE guifg=#875f00 guibg=NONE gui=NONE], " 预处理命令makefile ifneq
    \ ['Question' 		    , Cyan ctermbg=NONE cterm=NONE guifg=Cyan guibg=NONE gui=bold], " |hit-enter| 提示和 yes/no 问补全时下方的提示信息1/5
    \ ['Repeat'           , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " for、do、while 等
    \ ['StatusLine'       , 231 ctermbg=59 cterm=bold guifg=#ffffff guibg=#5f5f5f gui=bold], " 当前窗口的状态行
    \ ['StatusLineNC'     , 231 ctermbg=59 cterm=bold guifg=#ffffff guibg=#5f5f5f gui=bold], " 非当前窗口的状态行
    \ ['Search'           , Yellow ctermbg=Black cterm=reverse guifg=Yellow guibg=Black gui=reverse], " 查找高亮
    \ ['Special'          , DarkGrey ctermbg=NONE cterm=NONE guifg=DarkGrey guibg=NONE gui=NONE], " python#注释
    \ ['SpecialChar'      , 203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE], " %s
    \ ['SpecialKey'       , NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE], " ^[]
    \ ['Statement'        , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " 任何语句
    \ ['StorageClass'     , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " static、register、volatile 等
    \ ['SignColumn'       , NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE], " 显示 |signs| 的列
    \ ['Structure'        , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " struct、union、enum等
    \ ['String'           , 203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE], " 字符串
    \ ['SpellBad'         , erse ctermbg=9 gui=undercurl guisp=Red], " 拼写检查器不能识别的单词。|spell|它会和本来应该使用的高亮进行组合
    \ ['SpellCap'         , erse ctermbg=12 gui=undercurl guisp=Blue], " 拼写检查器能识别但只在其它区域使用的单词
    \ ['SpellRare'        , 203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=NONE], " 拼写检查器能识别但很少使用的单词
    \ ['Scrollbar'        , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 主窗口滚动条的当前背景和前景色。可用的高亮参数: guibg、guifg。
    \ ['SpecialComment'   , Cyan ctermbg=Blue cterm=NONE guifg=Cyan guibg=Blue gui=NONE], " 注释里的特殊部分
    \ ['Tag'              , Green ctermbg=Blue cterm=NONE guifg=Green guibg=Blue gui=NONE], " 可以使用 CTRL-] 的项目
    \ ['Todo'             , 203 ctermbg=NONE cterm=NONE guifg=#ff5f5f guibg=NONE gui=inverse,bold,italic], " 需要特殊注意的部分；主要是关键字 TODO FIXME 和 XX
    \ ['Type'             , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " int、void、bool、char等声明语法高亮
    \ ['Title'            , NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=bold], " \":set all"、":autocmd" 等输出的标题 markdown标题
    \ ['Tooltip'	        , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 当前工具提示的字体、背景色和前景色。也包括工具栏。可用的高亮参数: font、guibg、guifg。
    \ ['Typedef'          , DarkMagenta ctermbg=NONE cterm=bold guifg=DarkMagenta guibg=NONE gui=bold], " typedef 定义
    \ ['TabLine'          , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 标签页行，非活动标签页标签
    \ ['TabLineFill'      , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 标签页行，没有标签的地方
    \ ['TabLineSel'       , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 标签页行，活动标签页标签
    \ ['Underlined'       , Cyan ctermbg=Grey cterm=NONE guifg=Cyan guibg=Grey gui=NONE], " 需要突出的文本，HTML 链接
    \ ['Visual'           , NONE ctermbg=LightCyan cterm=NONE guifg=NONE guibg=LightCyan gui=NONE], " 可视模式的选择区
    \ ['VertSplit'        , NONE ctermbg=Grey cterm=NONE guifg=NONE guibg=Grey gui=NONE], " 分离垂直分割窗口的列
    \ ['VisualNOS'        , Yellow ctermbg=Grey cterm=NONE guifg=Yellow guibg=Grey gui=NONE], " Vim 是 "选择区的非拥有者" 时，可视模式的选择区
    \ ['WildMenu' 		    , Blue ctermbg=Grey cterm=NONE guifg=Blue guibg=Grey gui=NONE], " 'wildmenu' 补全的当前匹配
    \ ['WarningMsg'       , Yellow ctermbg=NONE cterm=NONE guifg=Yellow guibg=NONE gui=NONE], " 命令行中的警告提示
  \ ],
  \ 'light' : [
  \ ],
}   

function! s:scheme.hi(item, ctermbg, ctermfg, cterm, gui) abort
  call self.high(
    \ {
    \ 'name' : a:item,
    \ 'ctermbg' : a:ctermbg,
    \ 'ctermfg' : a:ctermfg,
    \ 'guibg' : self.color.nr2str(a:ctermbg),
    \ 'guifg' : self.color.nr2str(a:ctermfg),
    \ 'cterm' : a:cterm,
    \ 'gui' : a:gui,
    \ }
  \ )
endfunction

let item = []
for item in s:scheme.palette[] 
  call call('s:scheme.hi', item)
endfor
unlet item

if s:scheme.dark
  set background=dark
endif