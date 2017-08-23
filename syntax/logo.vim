" Vim syntax file
" Language: LOGO
" Maintainer: Dr Owain Kenway (github.com/owainkenwayucl)
" Last Change: August 23rd, 2017

if exists("b:current_syntax")
  finish
endif

syn case ignore

" Constructors
syn keyword logoKeyword word list sentence se fput lput array mdarray
syn keyword logoKeyword listtoarray arraytolist combine reverse gensym

" Selectors
syn keyword logoKeyword first firsts last butfirst bf butfirsts bfs
syn keyword logoKeyword butlast bl item mditem pick remove remdup quoted

" Mutators
syn keyword logoKeyword setitem mdsetitem setfirst push pop queue dequeue
syn match logoKeyword ".setbf"
syn match logoKeyword ".setitem"

" Predicates
syn keyword logoCond wordp listp arrayp emptyp equalp notequalp beforep
syn keyword logoCond memberp substringp numberp vbarredp backslashedp
syn keyword logoCond lessp greaterp lessequalp greaterequalp
syn match logoCond "word?"
syn match logoCond "list?"
syn match logoCond "array?"
syn match logoCond "empty?"
syn match logoCond "equal?"
syn match logoCond "="
syn match logoCond "notequal?"
syn match logoCond "<>"
syn match logoCond "before?"
syn match logoCond ".eq"
syn match logoCond "member?"
syn match logoCond "substring?"
syn match logoCond "number?"
syn match logoCond "vbarred?"
syn match logoCond "backslashed?"
syn match logoCond "less?"
syn match logoCond "<"
syn match logoCond "greater?"
syn match logoCond ">"
syn match logoCond "lessequal?"
syn match logoCond "greaterequal?"

" Queries
syn keyword logoKeyword count ascii rawascii char member lowercase 
syn keyword logoKeyword uppercase standout parse runparse

" Transmitters
syn keyword logoKeyword print pr type show 

" Receivers
syn keyword logoKeyword readlist rl readword rw readrawline readchar rc
syn keyword logoKeyword readchars rcs shell 

" File access
syn keyword logoKeyword setprefix prefix openread openwrite openappend
syn keyword logoKeyword openupdate close allopen closeall erasefile erf
syn keyword logoKeyword dribble nodribble setread setwrite reader writer
syn keyword logoKeyword setreadpos setwritepos readpos writepos
syn keyword logoCond eofp filep
syn match logoCond "eof?"
syn match logoCond "file?"

" Terminal access
syn keyword logoCond keyp
syn match logoCond "key?"
syn keyword logoKeyword cleartext ct setcursor cursor setmargins
syn keyword logoKeyword settextcolor setc increasefont decreasefont
syn keyword logoKeyword settextsize textsize setfont font form

" Numeric operations
syn keyword logoOperate sum difference quotient minus product remainder
syn keyword logoOperate modulo int round sqrt power exp log10 ln sin
syn keyword logoOperate radsin cos radcos arctan radarctan iseq rseq
syn match logoOperate "+\|-\|/\|*"

" Random numbers
syn keyword logoKeyword random rerandom

" Bitwise operators
syn keyword logoOperate bitand bitor bitxor bitnot ashift lshift

" Logical
syn keyword logoCond if not and or

" Graphic
syn keyword logoDraw forward fd back bk left lt right rt setpos setxy
syn keyword logoDraw setx sety setheading seth home arc pos xcor ycor
syn keyword logoDraw heading towards scrunch showturtle st hideturtle ht
syn keyword logoDraw clean clearscreen cs wrap window fence fill filled
syn keyword logoDraw label setlabelheight textscreen ts fullscreen fs
syn keyword logoDraw splitscreen ss setscrunch refresh norefresh
syn keyword logoCond shownp pendownp
syn match logoCond "shown?"
syn match logoCond "pendown?"
syn keyword logoDraw screenmode turtlemode labelsize pendown penup pd pu
syn keyword logoDraw penpaint pp penerase pe penreverse px setpencolor
syn keyword logoDraw setpc setpalette setpensize setpenpattern setpen
syn keyword logoDraw setbackground setbg penmode pencolor pc palette
syn keyword logoDraw pensize penpattern pen background bg
syn keyword logoDraw savepict loadpict epspict

" Mouse
syn keyword logoDraw mousepos clickpos button
syn keyword logoCond buttonp
syn match logoCond "button?"

" Workspace
syn keyword logoOperate to define text fulltext make op output end thing
syn keyword logoOperate copydef name local localmake global
syn keyword logoKeyword pprop gprop remprop plist 
syn keyword logoCond procedurep primitivep definedp namep plistp
syn match logoCond "procedure?"
syn match logoCond "primitive?"
syn match logoCond "defined?"
syn match logoCond "name?"
syn match logoCond "plist?"
syn keyword logoKeyword contents buried traced stepped procedures 
syn keyword logoKeyword primitives name plists namelist pllist arity
syn keyword logoKeyword nodes printout po poall pops pons popls pon
syn keyword logoKeyword popl pot pots erase er erall erps ern erpls ern
syn keyword logoKeyword erpl bury buryall buryname unbury unburyall
syn keyword logoKeyword unburyname trace untrace unstep step edit ed 
syn keyword logoKeyword editfile edall edps edns edpls edn edpl save savel
syn keyword logoKeyword load cslsload help seteditor setliblocpath
syn keyword logoKeyword sethelplocpath setcslslocpath settemplocpath gc
syn match logoKeyword ".setsegmentsize"
syn keyword logoCond buriedp tracedp steppedp
syn match logoCond "buried?"
syn match logoCond "traced?"
syn match logoCond "stepped?"

" Control structures
syn keyword logoIter run runresult repeat forever repcount foreach
syn keyword logoIter pause continue co wait goto tag ignore for while
syn keyword logoIter while until apply invoke map filter find reduce
syn keyword logoIter crossmap cascade transfer
syn match logoIter "do.while"
syn match logoIter "do.until"
syn match logoIter "map.se"
syn match logoIter "cascade.2"
syn keyword logoCond if ifelse test iftrue ift iffalse iff catcha case cond
syn keyword logoOperator stop throw error bye
syn match logoOperator ".maybeoutput"

" Macros
syn match logoMacro ".macro"
syn match logoMacro ".defmacro"
syn keyword logoMacro macrop
syn match logoMacro "macro?"
syn keyword logoMacro macroexpand

" Special
syn keyword logoSpecial allowgetset buttonact caseignoredp commandline
syn keyword logoSpecial erract fullprintp keyact loadnoisily 
syn keyword logoSpecial printdepthlimit printwidthlimit redefp startup
syn keyword logoSpecial unburyonedit usealternatenames logoversion
syn keyword logoSpecial logoplatform

" Comments
syn region logoComment start=";" end="$" 

" Accessing variables
syn match logoLiteral +"[a-zA-Z_.][a-zA-Z0-9_.]*+
syn match logoDeref +:[a-zA-Z_][a-zA-Z0-9_]*+

" Numbers
syn match logoInt "\<\d\+\>"
syn match logoFloat "\<\d\+\.\d*\>"
syn match logoFloat "\.\d\+\>"

" Brace
syn match logoBrace +\[\|\]\|(\|)+

" Escaped text
syn match logoEsc "\\[\[\]()_+-=/:\ ]" 
syn region logoEsc start="|" end="|" 

" Map colors to our types
hi def link logoComment Comment
hi def link logoOperate Special
hi def link logoCond Conditional
hi def link logoKeyword Function
hi def link logoDraw Function
hi def link logoIter Repeat
hi def link logoLiteral Constant
hi def link logoDeref Label
hi def link logoFloat Float
hi def link logoInt Number
hi def link logoBrace Type
hi def link logoList Type
hi def link logoMacro PreProc
hi def link logoSpecial Special
hi def link logoEsc Special

let b:current_syntax = "logo"
 
