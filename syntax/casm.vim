" Vim syntax file
" Language: casm
" Maintainer: Dominik Inführ <dominik.infuehr@gmail.com>
" Last Change: 2012-07-02
" Version: 0.1

if exists( "b:current_syntax" )
  finish
endif

" match cases
syn case match

" Constants
syn keyword casmConstant true false self undef

" Keywords
syn keyword casmKeyword assure assert diedie straceon straceoff
syn keyword casmKeyword skip seqblock endseqblock par endpar let in
syn keyword casmKeyword print debuginfo push into pop
syn keyword casmKeyword from do call case default of endcase
syn keyword casmKeyword initially function static controlled derived
syn keyword casmKeyword enum use option symbol

syn keyword casmKeyword rule init nextgroup=casmRuleName skipwhite
syn match casmRuleName contained "[a-zA-Z_][a-zA-Z0-9\_]*"

syn match casmRuleRef "@" nextgroup=casmRuleName skipwhite

syn keyword casmKeyword CoreASM nextgroup=casmProgramName skipwhite
syn match casmProgramName contained "[a-zA-Z_][a-zA-Z0-9\_]*"

syn keyword casmConditional if then else forall

" Numbers
syn match casmNumber "\d+"

" Types
syn keyword casmType Boolean Int String RuleRef List

" Operator
syn keyword casmOperator and or div

" Comments
syn region casmCommentL start="//" end="$" keepend contains=casmTodo
syn region casmComment start="/\*" end="\*/" contains=casmTodo

" Strings
syn region casmString start=+"+ end=+"+ end=+$+

" Todos
syn keyword casmTodo contained TODO FIXME XXX NOTE

" Connect to Syntax Groups
highlight link casmConstant Constant
highlight link casmKeyword Keyword
highlight link casmConditional Conditional
highlight link casmOperator Operator
highlight link casmCommentL Comment
highlight link casmComment Comment
highlight link casmType Type
highlight link casmString String
highlight link casmTodo Todo
highlight link casmNumber Number
highlight link casmProgramName Special
highlight link casmRuleName Function
highlight link casmRuleRef Function
