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

let g:colors_name='Default'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 全局设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [调色板palette]-------------------------------------------------------------------------------------------------------------------[调色板palette] "
let s:pal = {} " 定义一个字典配置调色板
let s:pal.none = ['NONE', 'NONE']

let s:pal.bg0  = ['#282828', 235] " 40-40-40
let s:pal.bg1  = ['#3c3836', 237] " 60-56-54
let s:pal.bg2  = ['#504945', 239] " 80-73-69
let s:pal.bg3  = ['#665c54', 241] " 102-92-84
let s:pal.bg4  = ['#7c6f64', 243] " 124-111-100

let s:pal.fg0 = ['#fbf1c7', 229] " 253-244-193
let s:pal.fg1 = ['#ebdbb2', 223] " 235-219-178
let s:pal.fg2 = ['#d5c4a1', 250] " 213-196-161
let s:pal.fg3 = ['#bdae93', 248] " 189-174-147
let s:pal.fg4 = ['#a89984', 246] " 168-153-132

let s:pal.red     = ['#fb4934', 167] " 251-73-52
let s:pal.green   = ['#b8bb26', 142] " 184-187-38
let s:pal.yellow  = ['#fabd2f', 214] " 250-189-47
let s:pal.blue    = ['#83a598', 109] " 131-165-152
let s:pal.purple  = ['#d3869b', 175] " 211-134-155
let s:pal.aqua    = ['#8ec07c', 108] " 142-192-124
let s:pal.orange  = ['#fe8019', 208] " 254-128-25
let s:pal.gray    = ['#928374', 245] " 146-131-116

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [强调emphasis]--------------------------------------------------------------------------------------------------------------------[强调emphasis] "
let s:emp = {} " 设置一个强调字典
let s:emp.none = ''
let s:emp.bold = 'bold,' " 加粗
let s:emp.italic = 'italic,' " 斜体 
let s:emp.underline = 'underline,' " 下划线
let s:emp.undercurl = 'undercurl,' " 下划当前 
let s:emp.inverse = 'inverse,' " 逆透 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [高亮函数]------------------------------------------------------------------------------------------------------------------------------[高亮函数] "
function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:pal.none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  execute join(histring, ' ')
endfunction

" [高亮函数]------------------------------------------------------------------------------------------------------------------------------[高亮函数] "
" [设置默认高亮组]--------------------------------------------------------------------------------------------------------------------[设置默认高亮组] "
call s:HL('DefaultBg0', s:pal.bg0)
call s:HL('DefaultBg1', s:pal.bg1)
call s:HL('DefaultBg2', s:pal.bg2)
call s:HL('DefaultBg3', s:pal.bg3)
call s:HL('DefaultBg4', s:pal.bg4)

call s:HL('DefaultFg0', s:pal.fg0)
call s:HL('DefaultFg1', s:pal.fg1)
call s:HL('DefaultFg2', s:pal.fg2)
call s:HL('DefaultFg3', s:pal.fg3)
call s:HL('DefaultFg4', s:pal.fg4)

call s:HL('DefaultRed',     s:pal.red)
call s:HL('DefaultGreen',   s:pal.green)
call s:HL('DefaultYellow',  s:pal.yellow)
call s:HL('DefaultBlue',    s:pal.blue)
call s:HL('DefaultPurple',  s:pal.purple)
call s:HL('DefaultAqua',    s:pal.aqua)
call s:HL('DefaultOrange',  s:pal.orange)
call s:HL('DefaultGray',    s:pal.gray)

call s:HL('DefaultRedBold',     s:pal.red,      s:pal.none,     s:emp.bold)
call s:HL('DefaultGreenBold',   s:pal.green,    s:pal.none,     s:emp.bold)
call s:HL('DefaultYellowBold',  s:pal.yellow,   s:pal.none,     s:emp.bold)
call s:HL('DefaultBlueBold',    s:pal.blue,     s:pal.none,     s:emp.bold)
call s:HL('DefaultPurpleBold',  s:pal.purple,   s:pal.none,     s:emp.bold)
call s:HL('DefaultAquaBold',    s:pal.aqua,     s:pal.none,     s:emp.bold)
call s:HL('DefaultOrangeBold',  s:pal.orange,   s:pal.none,     s:emp.bold)

call s:HL('DefaultRedSign',     s:pal.red,      s:pal.bg1,      s:emp.inverse)
call s:HL('DefaultGreenSign',   s:pal.green,    s:pal.bg1,      s:emp.inverse)
call s:HL('DefaultYellowSign',  s:pal.yellow,   s:pal.bg1,      s:emp.inverse)
call s:HL('DefaultBlueSign',    s:pal.blue,     s:pal.bg1,      s:emp.inverse)
call s:HL('DefaultPurpleSign',  s:pal.purple,   s:pal.bg1,      s:emp.inverse)
call s:HL('DefaultAquaSign',    s:pal.aqua,     s:pal.bg1,      s:emp.inverse)
call s:HL('DefaultOrangeSign',  s:pal.orange,   s:pal.bg1,      s:emp.inverse)

" 通用设置 适用任何情况
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call s:HL('Normal', s:pal.none)
hi! link SpecialKey DefaultBg2 " -------------------------------------------------------[^[]":map" 一般的: 和实际内容显示上有差异的文本] "
hi! link NonText DefaultBg2 " ----------------------------------------------------------[非文本区（控制字符和一些特殊字符和编辑器空白区等）] "
hi! link Directory DefaultGreenBold " --------------------------------------------------[目录名 (还有列表里的其它特殊名字)] "
call s:HL('ErrorMsg', s:pal.bg0, s:pal.red, s:emp.bold) " ------------------------------[命令行上的错误信息] "
call s:HL('IncSearch', s:pal.orange, s:pal.bg0, s:emp.inverse) " -----------------------[高亮；也用于被 ":s///c" 替换的文本] "
call s:HL('Search', s:pal.yellow, s:pal.bg0, s:emp.inverse) " --------------------------[查找高亮,包含QuickFixLine] "
hi! link MoreMsg DefaultYellowBold " ---------------------------------------------------[使用 |set showcmd| 时输入栏提示] "
hi! link ModeMsg DefaultYellowBold " ---------------------------------------------------[模式提示 (例如，"-- INSERT --")] "
call s:HL('LineNr', s:pal.bg4, s:pal.none) " -------------------------------------------[置位 'number' 或 'relativenumber' 选项时的行号] "
call s:HL('CursorLineNr', s:pal.yellow, s:pal.bg1) " -----------------------------------[置位 'number' 或 'relativenumber' 选项时的光标行号] "
hi! link LineNrAbove LineNr " ----------------------------------------------------------[置位 'relativenumber' 选项时，光标上方的行号] "
hi! link LineNrBelow LineNr " ----------------------------------------------------------[置位 'relativenumber' 选项时，光标下方的行号] "
hi! link Question DefaultOrangeBold " --------------------------------------------------[|hit-enter| 提示和 yes/no 问补全时下方的提示信息1/5] "
call s:HL('StatusLine', s:pal.bg2, s:pal.fg1, s:emp.inverse) " -------------------------[当前窗口的状态行] "
call s:HL('StatusLineNC', s:pal.bg1, s:pal.fg4, s:emp.inverse) " -----------------------[非当前窗口的状态行] "
call s:HL('VertSplit', s:pal.bg3, s:pal.bg0) " -----------------------------------------[分离垂直分割窗口的列] "
hi! link Title DefaultGreenBold " ------------------------------------------------------[\ ":set all"、":autocmd" 等输出的标题 markdown标题] "
call s:HL('Visual', s:pal.none, s:pal.bg3) " -------------------------------------------[可视模式的选择区] "
hi! link VisualNOS Visual " ------------------------------------------------------------[Vim 是选择区的非拥有者时，可视模式的选择区] "
hi! link WarningMsg DefaultRedBold " ---------------------------------------------------[警告消息] "
call s:HL('WildMenu', s:pal.blue, s:pal.bg2, s:emp.bold) " -----------------------------[补全的当前匹配] "
call s:HL('Folded', s:pal.gray, s:pal.bg1, s:emp.italic) " -----------------------------[用于关闭的折叠的行] "
call s:HL('FoldColumn', s:pal.gray, s:pal.bg1) " ---------------------------------------[用于关闭的折叠的列] "
call s:HL('DiffAdd', s:pal.green, s:pal.bg0, s:emp.inverse) " --------------------------[增加的行] "
call s:HL('DiffChange', s:pal.aqua, s:pal.bg0, s:emp.inverse) " ------------------------[改变的行] "
call s:HL('DiffDelete', s:pal.red, s:pal.bg0, s:emp.inverse) " -------------------------[删除的行] "
call s:HL('DiffText', s:pal.yellow, s:pal.bg0, s:emp.inverse) " ------------------------[改变行里的改动文本] "
call s:HL('SignColumn', s:pal.none, s:pal.bg1) " ---------------------------------------[显示 |signs| 的列, 左侧边栏填充] "
call s:HL('Conceal', s:pal.blue, s:pal.none) " -----------------------------------------[代替隐藏文本的填充字符 \lambda → λ] "
call s:HL('SpellCap', s:pal.green, s:pal.none, s:emp.bold . s:emp.italic) " ------------[应该大写字母开头的单词] "
hi! link SpellBad DefaultRedSign " -----------------------------------------------------[拼写检查器不能识别的单词] "
hi! link SpellLocal DefaultBlueSigncall " ----------------------------------------------[拼写检查器能识别但只在其它区域使用的单词] "
hi! link SpellRare DefaultPurpleSigncall " ---------------------------------------------[拼写检查器能识别但很少使用的单词] "
call s:HL('Pmenu', s:pal.fg1, s:pal.bg2) " ---------------------------------------------[弹出菜单: 普通项目 补全提示行 ] "
call s:HL('PmenuSel', s:pal.bg2, s:pal.blue, s:emp.bold) " -----------------------------[弹出菜单: 选中项目 补全光标行] "
call s:HL('PmenuSbar', s:pal.none, s:pal.bg2) " ----------------------------------------[弹出菜单: 滚动条] "
call s:HL('PmenuThumb', s:pal.none, s:pal.bg4) " ---------------------------------------[弹出菜单: 滚动条的拇指 (thumb)] "
call s:HL('TabLineSel', s:pal.green, s:pal.bg1, s:emp.inverse) " -----------------------[活动标签页标签] "
call s:HL('TabLineFill', s:pal.bg4, s:pal.bg1) " ---------------------------------------[没有标签的地方] "
hi! link TabLine TabLineFill " ---------------------------------------------------------[非活动标签页标签] "
call s:HL('CursorLine', s:pal.none, s:pal.bg1) " ---------------------------------------[光标所在的屏幕行] "
hi! link CursorColumn CursorLine " -----------------------------------------------------[光标所在的屏幕列] "
call s:HL('ColorColumn', s:pal.none, s:pal.bg1) " --------------------------------------[设置屏幕列] "
call s:HL('Cursor', s:pal.none, s:pal.none, s:emp.inverse) " ---------------------------[光标所在字符] "
hi! link vCursor Cursor " --------------------------------------------------------------[可视化模式光标所在字符] "
hi! link iCursor Cursor " --------------------------------------------------------------[插入模式光标所在字符] "
hi! link lCursor Cursor " --------------------------------------------------------------[语言模式光标所在字符] "
call s:HL('MatchParen', s:pal.none, s:pal.aqua, s:emp.bold) " --------------------------[括号匹配] "
call s:HL('Comment', s:pal.gray, s:pal.none, s:emp.italic) " ---------------------------[文件头部文本] "
hi! link Constant DefaultPurple " ------------------------------------------------------[任何常数] "
call s:HL('String', s:pal.green, s:pal.none, s:emp.none) " -----------------------------[字符串] "
hi! link Character DefaultPurple " -----------------------------------------------------[字符] "
hi! link Number DefaultPurple " --------------------------------------------------------[数字] "
hi! link Boolean DefaultPurple " -------------------------------------------------------[bool值] "
hi! link Float DefaultPurple " ---------------------------------------------------------[float值高亮] "
hi! link Special DefaultOrange " -------------------------------------------------------[特殊字段] "
hi! link Tag DefaultGreen " ------------------------------------------------------------[可以使用 CTRL-] 的项目] "
hi! link SpecialChar DefaultRed " ------------------------------------------------------[%s] "
hi! link Delimiter Normal " ------------------------------------------------------------[需要注意的字 分隔符<>] "
hi! link SpecialComment Normal " -------------------------------------------------------[注释里的特殊部分] "
hi! link Debug Normal " ----------------------------------------------------------------[调试语句] "
hi! link Identifier DefaultBlue " ------------------------------------------------------[任何定义] "
hi! link Function DefaultGreenBold " ---------------------------------------------------[函数名 (也包括: 类的方法名)] "
hi! link Statement DefaultRed " --------------------------------------------------------[任何声明] "
hi! link Conditional DefaultRed " ------------------------------------------------------[if、then、else、endif、switch 等] "
hi! link Repeat DefaultRed " -----------------------------------------------------------[for、do、while 等] "
hi! link Label DefaultRed " ------------------------------------------------------------[case、default 等] "
hi! link Operator DefaultPurple " ------------------------------------------------------[\ sizeof、+、* 等] "
hi! link Keyword DefaultRed " ----------------------------------------------------------[其它关键字] "
hi! link Exception DefaultRed " --------------------------------------------------------[try、catch、throw] "
hi! link PreProc DefaultAqua " ---------------------------------------------------------[通用预处理命令] "
hi! link Include DefaultAqua " ---------------------------------------------------------[#include] "
hi! link Define DefaultAqua " ----------------------------------------------------------[#define] "
hi! link Macro DefaultAqua " -----------------------------------------------------------[宏] "
hi! link PreCondit DefaultAqua " -------------------------------------------------------[makefile ifneq] "
hi! link Type DefaultYellow " ----------------------------------------------------------[任何类型] "
hi! link StorageClass DefaultOrange " --------------------------------------------------[static、register、volatile 等] "
hi! link Structure DefaultAqua " -------------------------------------------------------[struct、union、enum 等] "
hi! link Typedef DefaultYellow " -------------------------------------------------------[typedef] "
call s:HL('Underlined', s:pal.blue, s:pal.none, s:emp.underline) " ---------------------[需要突出的文本，HTML 链接 包括helpUnderlined] "
hi! link Ignore Comment " --------------------------------------------------------------[文件头部声明] "
call s:HL('Error', s:pal.red, s:pal.none, s:emp.bold . s:emp.inverse) " ----------------[错误提示 左侧栏 >>] "
call s:HL('Todo', s:pal.none, s:pal.none, s:emp.bold . s:emp.italic) " -----------------[需要特殊注意的部分；主要是关键字 TODO FIXME 和 XX] "

" 插件高亮配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Signify: {{{
hi! link SignifySignAdd DefaultGreenSign
hi! link SignifySignChange DefaultAquaSign
hi! link SignifySignDelete DefaultRedSign
" }}}
" Syntastic: {{{
call s:HL('SyntasticError', s:pal.none, s:pal.none, s:emp.undercurl, s:pal.red)
call s:HL('SyntasticWarning', s:pal.none, s:pal.none, s:emp.undercurl, s:pal.yellow)
hi! link SyntasticErrorSign DefaultRedSign
hi! link SyntasticWarningSign DefaultYellowSign
" }}}
" NERDTree: {{{
hi! link NERDTreeDir DefaultAqua
hi! link NERDTreeDirSlash DefaultAqua
hi! link NERDTreeOpenable DefaultOrange
hi! link NERDTreeClosable DefaultOrange
hi! link NERDTreeFile DefaultFg1
hi! link NERDTreeExecFile DefaultYellow
hi! link NERDTreeUp DefaultGray
hi! link NERDTreeCWD DefaultGreen
hi! link NERDTreeHelp DefaultFg1
hi! link NERDTreeToggleOn DefaultGreen
hi! link NERDTreeToggleOff DefaultRed
" " }}}

" Filetype specific
" Diff: {{{
hi! link diffAdded DefaultGreen
hi! link diffRemoved DefaultRed
hi! link diffChanged DefaultAqua
hi! link diffFile DefaultOrange
hi! link diffNewFile DefaultYellow
hi! link diffLine DefaultBlue
" }}}
" Html: {{{
hi! link htmlTag DefaultBlue
hi! link htmlEndTag DefaultBlue
hi! link htmlTagName DefaultAquaBold
hi! link htmlArg DefaultAqua
hi! link htmlScriptTag DefaultPurple
hi! link htmlTagN DefaultFg1
hi! link htmlSpecialTagName DefaultAquaBold
call s:HL('htmlLink', s:pal.fg4, s:pal.none, s:emp.underline)
hi! link htmlSpecialChar DefaultOrange
call s:HL('htmlBold', s:pal.none, s:pal.none, s:emp.bold)
call s:HL('htmlBoldUnderline', s:pal.none, s:pal.none, s:emp.bold . s:emp.underline)
call s:HL('htmlBoldItalic', s:pal.none, s:pal.none, s:emp.bold . s:emp.italic)
call s:HL('htmlBoldUnderlineItalic', s:pal.none, s:pal.none, s:emp.bold . s:emp.underline . s:emp.italic)
call s:HL('htmlUnderline', s:pal.none, s:pal.none, s:emp.underline)
call s:HL('htmlUnderlineItalic', s:pal.none, s:pal.none, s:emp.underline . s:emp.italic)
call s:HL('htmlItalic', s:pal.none, s:pal.none, s:emp.italic)
" }}}
" Xml: {{{
hi! link xmlTag DefaultBlue
hi! link xmlEndTag DefaultBlue
hi! link xmlTagName DefaultBlue
hi! link xmlEqual DefaultBlue
hi! link docbkKeyword DefaultAquaBold
hi! link xmlDocTypeDecl DefaultGray
hi! link xmlDocTypeKeyword DefaultPurple
hi! link xmlCdataStart DefaultGray
hi! link xmlCdataCdata DefaultPurple
hi! link dtdFunction DefaultGray
hi! link dtdTagName DefaultPurple
hi! link xmlAttrib DefaultAqua
hi! link xmlProcessingDelim DefaultGray
hi! link dtdParamEntityPunct DefaultGray
hi! link dtdParamEntityDPunct DefaultGray
hi! link xmlAttribPunct DefaultGray
hi! link xmlEntity DefaultOrange
hi! link xmlEntityPunct DefaultOrange
" }}}
" Vim: {{{
call s:HL('vimCommentTitle', s:pal.fg4, s:pal.none, s:emp.bold . s:emp.italic)
hi! link vimNotation DefaultOrange
hi! link vimBracket DefaultOrange
hi! link vimMapModKey DefaultOrange
hi! link vimFuncSID DefaultFg3
hi! link vimSetSep DefaultFg3
hi! link vimSep DefaultFg3
hi! link vimContinue DefaultFg3
" }}}
" C: {{{
hi! link cOperator DefaultPurple
hi! link cStructure DefaultOrange
" }}}
" Python: {{{
hi! link pythonBuiltin DefaultOrange
hi! link pythonBuiltinObj DefaultOrange
hi! link pythonBuiltinFunc DefaultOrange
hi! link pythonFunction DefaultAqua
hi! link pythonDecorator DefaultRed
hi! link pythonInclude DefaultBlue
hi! link pythonImport DefaultBlue
hi! link pythonRun DefaultBlue
hi! link pythonCoding DefaultBlue
hi! link pythonOperator DefaultRed
hi! link pythonException DefaultRed
hi! link pythonExceptions DefaultPurple
hi! link pythonBoolean DefaultPurple
hi! link pythonDot DefaultFg3
hi! link pythonConditional DefaultRed
hi! link pythonRepeat DefaultRed
hi! link pythonDottedName DefaultGreenBold
" }}}
" CSS: {{{
hi! link cssBraces DefaultBlue
hi! link cssFunctionName DefaultYellow
hi! link cssIdentifier DefaultOrange
hi! link cssClassName DefaultGreen
hi! link cssColor DefaultBlue
hi! link cssSelectorOp DefaultBlue
hi! link cssSelectorOp2 DefaultBlue
hi! link cssImportant DefaultGreen
hi! link cssVendor DefaultFg1
hi! link cssTextProp DefaultAqua
hi! link cssAnimationProp DefaultAqua
hi! link cssUIProp DefaultYellow
hi! link cssTransformProp DefaultAqua
hi! link cssTransitionProp DefaultAqua
hi! link cssPrintProp DefaultAqua
hi! link cssPositioningProp DefaultYellow
hi! link cssBoxProp DefaultAqua
hi! link cssFontDescriptorProp DefaultAqua
hi! link cssFlexibleBoxProp DefaultAqua
hi! link cssBorderOutlineProp DefaultAqua
hi! link cssBackgroundProp DefaultAqua
hi! link cssMarginProp DefaultAqua
hi! link cssListProp DefaultAqua
hi! link cssTableProp DefaultAqua
hi! link cssFontProp DefaultAqua
hi! link cssPaddingProp DefaultAqua
hi! link cssDimensionProp DefaultAqua
hi! link cssRenderProp DefaultAqua
hi! link cssColorProp DefaultAqua
hi! link cssGeneratedContentProp DefaultAqua
" }}}
" JavaScript: {{{
hi! link javaScriptBraces DefaultFg1
hi! link javaScriptFunction DefaultAqua
hi! link javaScriptIdentifier DefaultRed
hi! link javaScriptMember DefaultBlue
hi! link javaScriptNumber DefaultPurple
hi! link javaScriptNull DefaultPurple
hi! link javaScriptParens DefaultFg3
" }}}
" TypeScript: {{{
hi! link typeScriptReserved DefaultAqua
hi! link typeScriptLabel DefaultAqua
hi! link typeScriptFuncKeyword DefaultAqua
hi! link typeScriptIdentifier DefaultOrange
hi! link typeScriptBraces DefaultFg1
hi! link typeScriptEndColons DefaultFg1
hi! link typeScriptDOMObjects DefaultFg1
hi! link typeScriptAjaxMethods DefaultFg1
hi! link typeScriptLogicSymbols DefaultFg1
hi! link typeScriptDocSeeTag Comment
hi! link typeScriptDocParam Comment
hi! link typeScriptDocTags vimCommentTitle
hi! link typeScriptGlobalObjects DefaultFg1
hi! link typeScriptParens DefaultFg3
hi! link typeScriptOpSymbols DefaultFg3
hi! link typeScriptHtmlElemProperties DefaultFg1
hi! link typeScriptNull DefaultPurple
hi! link typeScriptInterpolationDelimiter DefaultAqua
" }}}
" Ruby: {{{
hi! link rubyStringDelimiter DefaultGreen
hi! link rubyInterpolationDelimiter DefaultAqua
" }}}
" ObjectiveC: {{{
hi! link objcTypeModifier DefaultRed
hi! link objcDirective DefaultBlue
" }}}
" Go: {{{
hi! link goDirective DefaultAqua
hi! link goConstants DefaultPurple
hi! link goDeclaration DefaultRed
hi! link goDeclType DefaultBlue
hi! link goBuiltins DefaultOrange
" }}}
" Lua: {{{
hi! link luaIn DefaultRed
hi! link luaFunction DefaultAqua
hi! link luaTable DefaultOrange
" }}}
" Java: {{{
hi! link javaAnnotation DefaultBlue
hi! link javaDocTags DefaultAqua
hi! link javaCommentTitle vimCommentTitle
hi! link javaParen DefaultFg3
hi! link javaParen1 DefaultFg3
hi! link javaParen2 DefaultFg3
hi! link javaParen3 DefaultFg3
hi! link javaParen4 DefaultFg3
hi! link javaParen5 DefaultFg3
hi! link javaOperator DefaultOrange
hi! link javaVarArg DefaultGreen
" }}}
" Markdown: {{{
call s:HL('markdownItalic', s:pal.fg3, s:pal.none, s:emp.italic)
hi! link markdownH1 DefaultGreenBold
hi! link markdownH2 DefaultGreenBold
hi! link markdownH3 DefaultYellowBold
hi! link markdownH4 DefaultYellowBold
hi! link markdownH5 DefaultYellow
hi! link markdownH6 DefaultYellow
hi! link markdownCode DefaultAqua
hi! link markdownCodeBlock DefaultAqua
hi! link markdownCodeDelimiter DefaultAqua
hi! link markdownBlockquote DefaultGray
hi! link markdownListMarker DefaultGray
hi! link markdownOrderedListMarker DefaultGray
hi! link markdownRule DefaultGray
hi! link markdownHeadingRule DefaultGray
hi! link markdownUrlDelimiter DefaultFg3
hi! link markdownLinkDelimiter DefaultFg3
hi! link markdownLinkTextDelimiter DefaultFg3
hi! link markdownHeadingDelimiter DefaultOrange
hi! link markdownUrl DefaultPurple
hi! link markdownUrlTitleDelimiter DefaultGreen
call s:HL('markdownLinkText', s:pal.gray, s:pal.none, s:emp.underline)
hi! link markdownIdDeclaration markdownLinkText
" }}}
" Json: {{{
hi! link jsonKeyword DefaultGreen
hi! link jsonQuote DefaultGreen
hi! link jsonBraces DefaultFg1
hi! link jsonString DefaultFg1
" }}}