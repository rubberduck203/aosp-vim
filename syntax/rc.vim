" Vim syntax file
" Language: Android Init Language
" Maintainer: Chris McClellan

if exists("b:current_syntax")
  finish
endif

syn match rcComment '#.*'
syn keyword rcImport import
syn region rcInterpolate start='${' end='}' 

hi def link rcComment Comment
hi def link rcImport Include
hi def link rcInterpolate Identifier

let b:current_syntax = "rc"
