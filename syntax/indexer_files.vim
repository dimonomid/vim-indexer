" Vim syntax file

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" shut case off
syn case ignore

syn match  indexer_filesLabel       "^.\{-}="
syn region indexer_filesHeader      start="^\[" end="\]"
syn region indexer_filesQuoted      start='\v^\"' end='\v^\"' 
syn match  indexer_filesComment     "\v^\#.*$"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_indexer_files_syntax_inits")
  if version < 508
    let did_indexer_files_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

   HiLink indexer_filesHeader    Special
   HiLink indexer_filesQuoted    String
   HiLink indexer_filesComment   Comment
   HiLink indexer_filesLabel     Type

  delcommand HiLink
endif

let b:current_syntax = "indexer_files"

" vim:ts=8
