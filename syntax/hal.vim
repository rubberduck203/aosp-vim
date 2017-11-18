" Vim syntax file
" Language: Android Hardware Interface Description Language (HIDL)
" Maintainer: Chris McClellan

if exists("b:current_syntax")
  finish
endif

syn keyword hidlKeywords interface package extends import generates

syn keyword hidlType uint8_t int8_t uint16_t int16_t 
syn keyword hidlType uint32_t int32_t uint64_t int64_t
syn keyword hidlType float double bool string
syn match hidlType "vec<.*>" contains=hidlPrimitiveType

"single line
syn match hidlComment '//.*'
"multi-line
syn region hidlComment start='/\*' end='\*/'

"syn match hidlParameterslessFunction '\w\+()'
"syn match hidlFunction '\w\+(\w\+\s\+\w\+)' contains=hidlPrimitiveType,hidlVector

hi def link hidlKeywords Keyword
hi def link hidlType Type
hi def link hidlComment Comment
