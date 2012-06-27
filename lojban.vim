" Vim syntax file
" Language: lojban
" Maintainer: Devyn Cairns <devyn.cairns@gmail.com>
" Latest Revision: 26 June 2012

if exists("b:current_syntax")
	finish
endif

if version >= 600
	setlocal iskeyword+=',.,,
endif

syn case ignore

syn match jbo_cmevla "\<[abcdefgijklmnoprstuvxyz,.']\+[bcdfgjklmnprstvxz]\.\=\>"

syn match jbo_fuhivla "\<[abcdefgijklmnoprstuvxz,']\{-,3}[bcdfgjklmnprstvxz]\{2}[abcdefgijklmnoprstuvxz,']*[aoeui]\>"

syn match   jbo_numeric  "ci'i\|ka'o\|no'o\|pai\|te'o\|tu'o\|dau\|fei\|gai\|jau\|rei\|vai\|xei\|\(xo\|no\|pa\|re\|ci\|vo\|mu\|xa\|ze\|bi\|so\)['aoeuiy]\@!" contained
syn match   jbo_numeric  "[0-9]" contained
syn match   jbo_num_oper "ce'i\|fi'u\|ki'o\|ma'u\|me'i\|ni'u\|pi'e\|ra'e\|za'u\|da'a\|du'e\|ji'i\|mo'a\|so'a\|so'e\|so'i\|so'o\|so'u\|su'e\|su'o\|rau\|\(pi\|ro\)['aoeuiy]\@!" contained
syn match   jbo_special  "ni'o\|no'i\|\(\<\|\.\)i['aoeuiy]\@!" contained

syn match jbo_gismu "\<[bcdfgjklmnprstvxz]\([aoeui][bcdfgjklmnprstvxz]\|[bcdfgjklmnprstvxz][aoeui]\)[bcdfgjklmnprstvxz][aoeui]\>"

syn match jbo_lujvo "\<\([bcdfgjklmnprstvxz][bcdfgjklmnprstvxz][aoeui]\|[bcdfgjklmnprstvxz][aoeui]\([bcdfgjklmnprstvxz]y\=\|[aoeui][rn]\=\|'[aoeui][rn]\=\)\|[bcdfgjklmnprstvxz]\([aoeui][bcdfgjklmnprstvxz]\|[bcdfgjklmnprstvxyz[aoeui]\)[bcdfgjklmnprstvxz]y\)\+\([bcdfgjklmnprstvxz][bcdfgjklmnprstvxz][aoeui]\|[bcdfgjklmnprstvxz][aoeui]\([bcdfgjklmnprstvxz]\|[aoeui]\|'[aoeui]\)\|[bcdfgjklmnprstvxz]\([aoeui][bcdfgjklmnprstvxz]\|[bcdfgjklmnprstvxyz][aoeui]\)[bcdfgjklmnprstvxz][aoeui]\)\>"

syn match jbo_cmavo "\<\(y\('y\)\=\|[aoeui]'[aoeui]\|[aoeui][aoeui]\=\)\(\.y\('y\)\=\|\.[aoeui]'[aoeui]\|\.[aoeui][aoeui]\=\|[bcdfgjklmnprstvxz]\(y\|[aoeui]\('[aoeui]\)\=[aoeui]\=\)\)*\>" contains=jbo_numeric,jbo_num_oper,jbo_special
syn match jbo_cmavo "\<\([0-9]\|\.y\('y\)\=\|\.[aoeui]'[aoeui]\|\.[aoeui][aoeui]\=\|[bcdfgjklmnprstvxz]\(y\|[aoeui]\('[aoeui]\)\=[aoeui]\=\)\)\+\>" contains=jbo_numeric,jbo_num_oper,jbo_special

syn match jbo_cmavo "\<zo'oi\>" nextgroup=jbo_quote_single skipwhite
syn match jbo_cmavo "\<la'oi\>" nextgroup=jbo_quote_single skipwhite
syn match jbo_cmavo "\<me'oi\>" nextgroup=jbo_quote_single skipwhite

syn region jbo_zoi start="\<\(zoi\|la'o\)\s\+\.\=\z([^[:space:]]\+\)\.\=\>" end="\<\.\=\z1\.\=\>" fold

syn match jbo_quote_single "[^[:space:]]\+" contained

syn sync minlines=5 maxlines=300

let b:current_syntax = "lojban"

hi link jbo_cmavo        Operator
hi link jbo_lujvo        Statement
hi link jbo_gismu        Statement
hi link jbo_fuhivla      Statement
hi link jbo_zoi          String
hi link jbo_quote_single Constant
hi link jbo_numeric      Number
hi link jbo_num_oper     Delimiter
hi link jbo_special      Function
hi link jbo_cmevla       Identifier