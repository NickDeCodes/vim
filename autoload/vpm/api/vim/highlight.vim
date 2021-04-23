" vim api for highlight
" create by nickdecodes (nickdecodes@163.com)
let s:self = {}

function! s:self.hi(info) abort
    if empty(a:info) || get(a:info, 'name', '') ==# ''
        return
    endif
    exe 'hi clear ' . a:info.name
    let cmd = 'hi! ' .  a:info.name
    if !empty(a:info.ctermbg)
        let cmd .= ' ctermbg=' . a:info.ctermbg
    endif
    if !empty(a:info.ctermfg)
        let cmd .= ' ctermfg=' . a:info.ctermfg
    endif
    if !empty(a:info.guibg)
        let cmd .= ' guibg=' . a:info.guibg
    endif
    if !empty(a:info.guifg)
        let cmd .= ' guifg=' . a:info.guifg
    endif
    let style = []
    for sty in ['bold', 'italic', 'underline', 'reverse']
        if get(a:info, sty, '') ==# '1'
            call add(style, sty)
        endif
    endfor
    if !empty(style)
        let cmd .= ' gui=' . join(style, ',') . ' cterm=' . join(style, ',')
    endif
    try
        silent! exe cmd
    catch
    endtry
endfunction

function! vpm#api#vim#highlight#get() abort
    return deepcopy(s:self)
endfunction
