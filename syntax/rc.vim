" Vim syntax file
" Language: Android Init Language
" Maintainer: Chris McClellan

if exists("b:current_syntax")
  finish
endif

syn match rcComment '#.*'
syn keyword rcImport import

" Order matters here. 
" We must declatre the identifier region after the operators in order to get the identifier highlight.
" The matchgroup allows the operators to not be over-riden by the region while still allowing the end match.
syn match rcInterpolator '${'
syn match rcInterpolator '}'
syn region rcInterpolate matchgroup=rcInterpolator start='${' end='}' contains=rcInterpolator

hi def link rcComment Comment
hi def link rcImport Include
hi def link rcInterpolator Operator
hi def link rcInterpolate Identifier

let b:current_syntax = "rc"
