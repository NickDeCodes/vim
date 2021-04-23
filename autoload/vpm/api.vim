" vpm api
" create by nickdecodes (nickdecodes@163.com)
let s:apis = {}

" import api from apis
function! vpm#api#import(name) abort
  if has_key(s:apis, a:name)
    return deepcopy(s:apis[a:name])
  endif
  let p = {}
  try
    let p = vpm#api#{a:name}#get()
    let s:apis[a:name] = deepcopy(p)
  catch /^Vim\%((\a\+)\)\=:E117/
  endtry
  return p
endfunction

" export api to apis
function! vpm#api#export(name, api) abort
  if !empty(vpm#api#import(a:name))
    echoerr '[vim api] api : ' . a:name . ' already existed!'
  else
    let s:apis[a:name] = deepcopy(a:api)
  endif
endfunction
