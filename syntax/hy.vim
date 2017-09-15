" Vim syntax file
" Language: hy
" Maintainer: Dr Owain Kenway (github.com/owainkenwayucl)
" Last Change: September 15th, 2017

if exists("b:current_syntax")
  finish
endif

syn keyword hyKeyword setv print len 

syn keyword hyIter for range

syn keyword hyDeref import

syn match hyLiteral "\.[a-zA-Z\-\_0-9]*"

syn match hyCond "="
syn match hyCond "!="
syn match hyCond "<"
syn match hyCond ">"

syn match hyOperate "+\|-\|/\|*"

syn keyword hyCond if not and or

syn region hyComment start=";" end="$" 
syn region hyShebang start="\#\!\/" end="$" 

syn region hyString start="\"" end="\""

syn match hyInt "\<\d\+\>"
syn match hyFloat "\<\d\+\.\d*\>"
syn match hyFloat "\.\d\+\>"

syn match hyBrace +\[\|\]\|(\|)+

" Map colors to our types
hi def link hyComment Comment
hi def link hyShebang PreProc
hi def link hyOperate Operator
hi def link hyCond Conditional
hi def link hyKeyword Function
hi def link hyDraw Function
hi def link hyIter Repeat
hi def link hyLiteral StorageClass
hi def link hyDeref Label
hi def link hyFloat Float
hi def link hyInt Number
hi def link hyBrace PreProc
hi def link hyList Type
hi def link hyMacro PreProc
hi def link hySpecial Special
hi def link hyEsc Special
hi def link hyString String

let b:current_syntax = "hy"
 
