" Vim syntax file
" Language: Sophia
" Maintainer: Yinka Enoch Adedokun <adedokunyinkaenoch@gmail.com>

if exists("b:current_syntax")
  finish
endif

syn keyword sophiaCommentTodo   TODO XXX FIXME NOTE
syn match sophiaLineComment     "\/\/.*" contains=sophiaCommentTodo,@Spell
syn match sophiaCommentSkip     "^[ \t]*\*\($\|[ \t]\+\)"
syn region sophiaComment         start="/\*"  end="\*/" contains=@Spell,sophiaCommentTodo

syn keyword sophiaConditional   if else elif switch
syn keyword sophiaBoolean       true false
syn keyword sophiaLabel         Some None
syn keyword sophiaMessage       abort require
syn keyword sophiaGlobal        contract namespace import include compiler

syn keyword sophiaFunc          function entrypoint
syn match sophiaBraces          "[{}\[\]]"
syn match sophiaParens          "[()]"
syn match sophiaSpecialChars    "[!%^&*-+=|<>]"

" 2
syn match sophiaNumber          "\v<\d+>"
" 2.0
syn match sophiaNumber          "\v<\d+\.\d+>"

syn match sophiaString          "\v\"(\w.*)\""

syn keyword sophiaKeyword       let mod type private payable stateful datatype public

syntax keyword sophiaType       int address bool bits bytes string list tuple
      \ record map option state event hash signature oracle oracle_query


syntax keyword sophiaPrimitiveFunc Chain Call Contract Oracle AENS put


" Set highlights
hi def link sophiaKeyword         Keyword
hi def link sophiaType            Type
hi def link sophiaPrimitiveFunc   Operator
hi def link sophiaImports         Include
hi def link sophiaStructure       Structure
hi def link sophiaNumber          Number
hi def link sophiaBoolean         Boolean
hi def link sophiaString          String
hi def link sophiaComment         Comment
hi def link sophiaLineComment     Comment
hi def link sophiaCommentTodo     Todo
hi def link sophiaFunc            Function
hi def link sophiaBraces          Function
hi def link sophiaParens          Type
hi def link sophiaConditional     Conditional
hi def link sophiaOperator        Operator
hi def link sophiaLabel           Label
hi def link sophiaMessage         Keyword
hi def link sophiaGlobal          Keyword
hi def link sophiaToken           Statement
hi def link sophiaSpecialChars    Operator
