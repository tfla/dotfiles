" vim>vi
set nocompatible

" syntax highlight on
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" sane tabstop (for Python and other insane languages)
:set tabstop=4

" sane shiftwidth
:set shiftwidth=4

" autoindent
:set autoindent

" line numbers
:se nu

" lame color scheme
:colorscheme darkblue

" match parentheses
:set showmatch

" colored errors and searches
:au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Java specific stuff
let java_highlight_all=1
let java_highlight_debug=1

let java_ignore_javadoc=1
let java_highlight_functions=1
let java_mark_braces_in_parens_as_errors=1

" highlight strings inside C comments
let c_comment_strings=1
