" Vim syntax file
" Language: Android Init Language
" Maintainer: Chris McClellan

if exists("b:current_syntax")
  finish
endif

syn match rcComment '#.*'
syn keyword rcImport import


hi def link rcComment Comment
hi def link rcImport Include

let b:current_syntax = "rc"
