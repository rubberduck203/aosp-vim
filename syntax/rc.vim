" Vim syntax file
" Language: Android Init Language
" Maintainer: Chris McClellan

if exists("b:current_syntax")
  finish
endif

syn match rcComment '#.*'
syn keyword rcImport import
syn keyword rcKeyword on
                    \ service

" options are modifiers to services
syn keyword rcOption 
                    \ console
                    \ critical
                    \ disabled
                    \ setenv
                    \ socket
                    \ file
                    \ user
                    \ group
                    \ capabilities
                    \ setrlimit
                    \ seclabel
                    \ oneshot
                    \ class
                    \ onrestart
                    \ writepid
                    \ priority
                    \ namespace
                    \ oom_score_adjust 
                    \ shutdown

"no args, so can be end of line
syn match rcOption /\sanimation class[\s\n]/
"these have value args, so can't be end of line
syn match rcOption /\smemcg.swappiness\s/
syn match rcOption /\smemcg.soft_limit_in_bytes\s/
syn match rcOption /\smemcg.limit_in_bytes\s/

" discovered by grepping init.rc for the word trigger
" keywords struggle with non-alph characters, so we match instead
syn match rcTrigger /\scharger[\s\n]/
syn match rcTrigger /\sinit[\s\n]/ 
syn match rcTrigger /\searly-init[\s\n]/
syn match rcTrigger /\slate-init[\s\n]/
syn match rcTrigger /\searly-fs[\s\n]/
syn match rcTrigger /\spost-fs-data[\s\n]/
syn match rcTrigger /\spost-fs[\s\n]/
syn match rcTrigger /\slate-fs[\s\n]/
syn match rcTrigger /\sfs[\s\n]/
syn match rcTrigger /\szygote-start[\s\n]/
syn match rcTrigger /\sload_persist_props_action[\s\n]/
syn match rcTrigger /\sfirmware_mounts_complete[\s\n]/
syn match rcTrigger /\searly-boot[\s\n]/
syn match rcTrigger /\sboot[\s\n]/

" Order matters here. 
" We must declatre the identifier region after the operators in order to get the identifier highlight.
" The matchgroup allows the operators to not be over-riden by the region while still allowing the end match.
syn match rcInterpolator '${'
syn match rcInterpolator '}'
syn region rcInterpolate matchgroup=rcInterpolator start='${' end='}' contains=rcInterpolator

syn match rcPropertyTrigger '='
syn match rcPropertyTrigger 'property:'
syn region rcProperty matchgroup=rcPropertyTrigger start='property:' end='=' contains=rcPropertyTrigger

hi def link rcComment Comment
hi def link rcImport Include
hi def link rcKeyword Statement
hi def link rcOption Statement
hi def link rcTrigger Type



hi def link rcInterpolator Operator
hi def link rcInterpolate Identifier
hi def link rcPropertyTrigger Operator
hi def link rcProperty  Identifier

let b:current_syntax = "rc"
