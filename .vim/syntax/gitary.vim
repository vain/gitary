" Vim syntax file
" Language:		Gitary (Diary with Git)
" Maintainer:	Vain <scm@uninformativ.de>
" Last Change:	2009 Sept 01

" Partially copied from other syntax files such as "config.vim" or
" "mail.vim".

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" define the syntax
syn region  giaheader    start="=== " end=" ==="
syn region  giacode      matchgroup=giacodetags start="^[[:space:]]*---8<---$" end="^[[:space:]]*---8<---$"
syn match   giaref       "^-- "
syn match   giaref2      `^\[[[:digit:]]\+\] `
syn match   giatags      "^tags:"
syn match   giasep       "^#####.*$"

" Include other syntax files for foreign code
let b:is_bash = 1
syn include @codesh syntax/sh.vim
unlet b:current_syntax
syn region giacodesh matchgroup=giacodetags start="^[[:space:]]*---8<---bash$" end="^[[:space:]]*---8<---$" contains=@codesh

syn include @codepython syntax/python.vim
unlet b:current_syntax
syn region giacodepython matchgroup=giacodetags start="^[[:space:]]*---8<---python$" end="^[[:space:]]*---8<---$" contains=@codepython

syn include @coderuby syntax/ruby.vim
unlet b:current_syntax
syn region giacoderuby matchgroup=giacodetags start="^[[:space:]]*---8<---ruby$" end="^[[:space:]]*---8<---$" contains=@coderuby

syn include @codejava syntax/java.vim
unlet b:current_syntax
syn region giacodejava matchgroup=giacodetags start="^[[:space:]]*---8<---java$" end="^[[:space:]]*---8<---$" contains=@codejava

syn include @codec syntax/c.vim
unlet b:current_syntax
syn region giacodec matchgroup=giacodetags start="^[[:space:]]*---8<---c$" end="^[[:space:]]*---8<---$" contains=@codec

syn include @codevim syntax/vim.vim
unlet b:current_syntax
syn region giacodevim matchgroup=giacodetags start="^[[:space:]]*---8<---vim$" end="^[[:space:]]*---8<---$" contains=@codevim

syn include @codelua syntax/lua.vim
unlet b:current_syntax
syn region giacodelua matchgroup=giacodetags start="^[[:space:]]*---8<---lua$" end="^[[:space:]]*---8<---$" contains=@codelua

syn include @codediff syntax/diff.vim
unlet b:current_syntax
syn region giacodediff matchgroup=giacodetags start="^[[:space:]]*---8<---diff$" end="^[[:space:]]*---8<---$" contains=@codediff

syn include @codeasm syntax/asm.vim
unlet b:current_syntax
syn region giacodediff matchgroup=giacodetags start="^[[:space:]]*---8<---asm$" end="^[[:space:]]*---8<---$" contains=@codeasm

" The following stuff is from "mail.vim":
syn match   mailURL      `\v<(((https?|ftp|gopher)://|(mailto|file|news):)[^' 	<>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^' 	<>"]+)[a-z0-9/]`
syn match   mailEmail    "\v[_=a-z\./+0-9-]+\@[a-z0-9._-]+\a{2}"

" Make sure quote markers in regions (header / signature) have correct color
syn match mailQuoteExp1	"\v^(\> ?)"
syn match mailQuoteExp2	"\v^(\> ?){2}"
syn match mailQuoteExp3	"\v^(\> ?){3}"
syn match mailQuoteExp4	"\v^(\> ?){4}"
syn match mailQuoteExp5	"\v^(\> ?){5}"
syn match mailQuoteExp6	"\v^(\> ?){6}"

" Even and odd quoted lines. order is imporant here!
syn match mailQuoted1 "^\([a-z]\+>\|[]|}>]\).*$"
syn match mailQuoted2 "^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{2}.*$"
syn match mailQuoted3 "^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{3}.*$"
syn match mailQuoted4 "^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{4}.*$"
syn match mailQuoted5 "^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{5}.*$"
syn match mailQuoted6 "^\(\([a-z]\+>\|[]|}>]\)[ \t]*\)\{6}.*$"


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_gia_syntax_inits")
	if version < 508
		let did_gia_syntax_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def link <args>
	endif

	HiLink giatags          Keyword
	HiLink giaheader        String
	HiLink giaref           Type
	HiLink giaref2          Type
	HiLink giacode          Comment
	HiLink giacodetags      Comment
	HiLink giasep           Type

	HiLink mailEmail        PreProc
	HiLink mailURL          PreProc

	HiLink mailQuoted1		Comment
	HiLink mailQuoted3		mailQuoted1
	HiLink mailQuoted5		mailQuoted1
	HiLink mailQuoted2		Identifier
	HiLink mailQuoted4		mailQuoted2
	HiLink mailQuoted6		mailQuoted2
	HiLink mailQuoteExp1	mailQuoted1
	HiLink mailQuoteExp2	mailQuoted2
	HiLink mailQuoteExp3	mailQuoted3
	HiLink mailQuoteExp4	mailQuoted4
	HiLink mailQuoteExp5	mailQuoted5
	HiLink mailQuoteExp6	mailQuoted6

	delcommand HiLink
endif

" Avoid wrong syntax highlighting (may happen when using very long code
" snippets).
syn sync clear
syn sync fromstart

let b:current_syntax = "gitary"
