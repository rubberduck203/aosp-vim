" Vim syntax file
" Language: Android Hardware Interface Description Language (HIDL)
" Maintainer: Chris McClellan

if exists("b:current_syntax")
  finish
endif

syn keyword hidlKeywords interface package extends import generates
syn keyword hidlPrimitiveType uint8_t int8_t uint16_t int16_t 
syn keyword hidlPrimitiveType uint32_t int32_t uint64_t int64_t
syn keyword hidlPrimitiveType float double bool string
syn match hidlVector "vec<.*>" contains=hidlPrimitiveType

syn match hidlComment /\/\/.*/
syn region hidlMultiLineComment start=/\/\*/ end=/*\//

"syn match hidlParameterslessFunction '\w\+()'
"syn match hidlFunction '\w\+(\w\+\s\+\w\+)' contains=hidlPrimitiveType,hidlVector

hi def link hidlKeywords Keyword
hi def link hidlPrimitiveType Type
hi def link hidlVector Type
hi def link hidlComment Comment
hi def link hidlMultiLineComment Comment
hi def link hidlFunction Function
hi def link hidlParameterslessFunction Function
