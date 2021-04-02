"=============================================================================
" FILE: vpm.vim
" AUTHOR: NickDeCodes
" License: MIT license
"=============================================================================
" Lazy loading
if exists('g:loaded_vpm')
  finish
endif
let g:loaded_vpm = 1
" Continue, avoid the secondary effect should be
let s:cpo_save = &cpo
set cpo&vim

"=============================================================================
" vpm class
let g:vpm = {}
let g:vpm.describe = 'vim plugin manager'
let g:vpm.home = ''
let g:vpm.git = ''
let g:vpm.svn = ''
let g:vpm.gitee = ''
let g:vpm.windows = 0
let g:vpm.nvim = 0
let g:vpm.vim8 = 0
let g:vpm.ngui = 0
let g:vpm.mac_gui = 0
" plugin class of vpm class
let g:vpm.plugin = {}
let g:vpm.loaded = get(g:vpm, 'loaded', {})
let g:vpm.trigger = get(g:vpm, 'trigger', {})
let g:vpm.thread = get(g:vpm, 'thread', 16)
let g:vpm.table = get(g:vpm, 'table', -1)
let g:vpm.buffer = get(g:vpm, 'buffer', -1)
let g:vpm.plugin_order = []
let g:vpm.format_option = { 'branch': '', 'frozen': 0 }
let g:vpm.type = { 'string': type(''), 'list': type([]), 'dict': type({}), 'fnref': type(function('call')) }

function! g:vpm.init() abort
  " check support for windows
  if has('win32') || has('win64') || has('win95') || has('win16')
    let self.windows = 1
  endif

  " check support for vim8
  if (v:version >= 800 || has('patch-7.4.1829')) && (!has('nvim'))
    if has('job') && has('channel') && has('timers')
      let self.vim8 = 1
    endif
  " check support for nvim
  elseif has('nvim')
    let self.nvim = 1
  endif

  " check is gui loaded in neovim
  if has('nvim')
    if exists('self.ngui')
      if self.ngui == 0
        let self.ngui = 1
      endif
    elseif exists('*nvim_list_uis') && len(nvim_list_uis()) > 0
      let self.ngui = get(nvim_list_uis()[0], 'ext_termcolors', 0) ? 0 : 1
    elseif exists("+termguicolors") && (&termguicolors) != 0
      let self.ngui = 1
    endif
  endif

  " check support for mac_gui
  if has('gui_macvim') && has('gui_running')
    let self.mac_gui = 1
  endif
  " set default value
  let self.home = '~/.vim/bundles/'
  let self.git = 'https://github.com'
  let self.gitee = 'https://gitee.com'
  let self.svn = 'https://www.alisvn.com'
endfunction




" Continue, avoid the secondary effect should be
let &cpo = s:cpo_save
unlet s:cpo_save
