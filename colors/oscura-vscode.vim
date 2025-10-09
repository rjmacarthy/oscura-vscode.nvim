" ============================================================================
" Oscura-VSCode – Dark Plus inspired with true-black background
" Author: rjmacarthy
" ============================================================================

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
" ============================================================================
" Oscura VSCode – Dark Plus style, true black background
" Author: rjmacarthy
" ============================================================================

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'oscura-vscode'

" --- Palette -----------------------------------------------------------------
let s:bg           = '#000000'      " true black
let s:fg           = '#C2C2C2'      " main text
let s:cursor       = '#4A88C7'      " blue accent
let s:visual       = '#094770'      " selection highlight
let s:selection    = '#094770'
let s:search       = '#4A88C7'
let s:matchbracket = '#4A88C7'

" Editor chrome
let s:linenum      = '#3A3A3A'
let s:linenum_act  = '#FFFFFF'
let s:inactive     = '#2D2D2D'
let s:border       = '#323232'
let s:statusbg     = '#1E1E1E'

" Syntax
let s:comment      = '#6E6F7A'
let s:keyword      = '#569CD6'
let s:function     = '#DCDCAA'
let s:string       = '#CE9178'
let s:number       = '#B5CEA8'
let s:constant     = '#D7BA7D'
let s:type         = '#5ADBB0'
let s:special      = '#9CDCFE'
let s:attr         = '#54C0A3'
let s:link         = '#4A88C7'
let s:error        = '#FF5C5C'
let s:warning      = '#D7BA7D'

" Diff
let s:diffadd      = '#1E2721'
let s:diffdelete   = '#2D1D22'
let s:diffchange   = '#1E2721'
let s:difftext     = '#303030'

" --- helper ------------------------------------------------------------------
function! s:h(group, fg, bg, attr)
  if a:fg !=# ''
    exe 'hi ' . a:group . ' guifg=' . a:fg
  endif
  if a:bg !=# ''
    exe 'hi ' . a:group . ' guibg=' . a:bg
  endif
  if a:attr !=# ''
    exe 'hi ' . a:group . ' gui=' . a:attr
  endif
endfunction

" --- LazyVim / Neo-tree / Terminal integration -------------------------------
hi! NormalNC         guibg=#000000 guifg=#C2C2C2
hi! NormalFloat      guibg=#000000 guifg=#C2C2C2
hi! FloatBorder      guibg=#000000 guifg=#323232
hi! WinSeparator     guibg=#000000 guifg=#323232
hi! TermNormal       guibg=#000000 guifg=#C2C2C2
hi! TermNormalNC     guibg=#000000 guifg=#C2C2C2

" Neo-tree
hi! NeoTreeNormal    guibg=#000000 guifg=#C2C2C2
hi! NeoTreeNormalNC  guibg=#000000 guifg=#C2C2C2
hi! NeoTreeEndOfBuffer guibg=#000000 guifg=#000000
hi! NeoTreeDirectoryName guifg=#4EC9B0
hi! NeoTreeDirectoryIcon guifg=#4EC9B0
hi! NeoTreeFileName  guifg=#C2C2C2
hi! NeoTreeGitAdded  guifg=#6A9955
hi! NeoTreeGitDeleted guifg=#F14C4C
hi! NeoTreeGitModified guifg=#D7BA7D
hi! NeoTreeTitleBar  guibg=#000000 guifg=#4EC9B0

" --- Editor UI ---------------------------------------------------------------
call s:h('Normal', s:fg, s:bg, '')
call s:h('Cursor', s:bg, s:cursor, 'bold')
call s:h('CursorLine', '', '#0A0A0A', 'none')
call s:h('LineNr', s:linenum, '', '')
call s:h('CursorLineNr', s:linenum_act, '', 'bold')
call s:h('VertSplit', s:border, s:bg, '')
call s:h('StatusLine', s:fg, s:statusbg, 'none')
call s:h('Visual', '', s:visual, '')
call s:h('Search', s:bg, s:search, '')
call s:h('MatchParen', '', s:matchbracket, 'bold')
call s:h('Error', s:error, '', '')
call s:h('WarningMsg', s:warning, '', '')
call s:h('DiffAdd', '', s:diffadd, '')
call s:h('DiffDelete', s:diffdelete, s:diffdelete, '')
call s:h('DiffChange', '', s:diffchange, '')
call s:h('DiffText', '', s:difftext, '')

" --- Syntax ------------------------------------------------------------------
call s:h('Comment', s:comment, '', 'italic')
call s:h('Constant', s:constant, '', '')
call s:h('String', s:string, '', '')
call s:h('Number', s:number, '', '')
call s:h('Identifier', s:fg, '', '')
call s:h('Function', s:function, '', '')
call s:h('Statement', s:keyword, '', '')
call s:h('Operator', s:keyword, '', '')
call s:h('Keyword', s:keyword, '', '')
call s:h('Type', s:type, '', '')
call s:h('Special', s:special, '', '')
call s:h('Tag', s:attr, '', '')
call s:h('Underlined', s:link, '', 'underline')

" --- Treesitter links --------------------------------------------------------
if has('nvim')
  hi! link @variable Identifier
  hi! link @constant Constant
  hi! link @function Function
  hi! link @keyword Keyword
  hi! link @type Type
  hi! link @string String
  hi! link @number Number
  hi! link @comment Comment
endif

" --- Terminal colors ---------------------------------------------------------
if has('nvim')
  let g:terminal_color_0 = s:bg
  let g:terminal_color_1 = s:error
  let g:terminal_color_2 = s:function
  let g:terminal_color_3 = s:number
  let g:terminal_color_4 = s:special
  let g:terminal_color_5 = s:keyword
  let g:terminal_color_6 = s:attr
  let g:terminal_color_7 = s:fg
endif

" --- Final UI tweaks ---------------------------------------------------------
hi! link Directory Tag
hi! link Title Keyword
hi! link Todo WarningMsg
" ============================================================================

