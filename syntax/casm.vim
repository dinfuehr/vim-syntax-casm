" Vim syntax file
" Language: casm
" Maintainer: Dominik
" Last Change: 2012-07-01
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
syn keyword casmKeyword if then else print debuginfo push into pop
syn keyword casmKeyword from forall do call case default of endcase
syn keyword casmKeyword initially function static controlled derived
syn keyword casmKeyword enum rule use init option CoreASM symbol

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

highlight link casmConstant Constant
highlight link casmKeyword Keyword
highlight link casmOperator Operator
highlight link casmCommentL Comment
highlight link casmComment Comment
highlight link casmType Type
highlight link casmString String
highlight link casmTodo Todo

