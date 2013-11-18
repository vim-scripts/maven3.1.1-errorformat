" Vim compiler file
" Compiler:	maven
" Maintainer:	Joseph H. Yao (hyao@sina.com)
" Last Change:	2013年11月11日 17:59:07

if exists("current_compiler")
  finish
endif
let current_compiler = "maven"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" default errorformat
CompilerSet errorformat=
            \[%tRROR]\ %#Malformed\ POM\ %f:\ %m@%l:%c%.%#,
            \[%tRROR]\ %#Non-parseable\ POM\ %f:\ %m\ %#\\@\ line\ %l\\,\ column\ %c%.%#,
            \%A[%t%[A-Z]%#]\ %f:[%l\\,%c]\ %m,
            \%A%f:[%l\\,%c]\ %m,
            \%-Z[%[A-Z]%#]\ %#-\>%.%#,
            \%-Z[%[A-Z]%#]\ %#Failed\ to\ execute\ goal%.%#,
            \%-Z[%[A-Z]%#]\ %#%.%#errors,
            \%C[%t%[A-Z]%#]\ %#%m,
            \%-G[%t%[A-Z]%#]\ %#%m,
" default make
CompilerSet makeprg=mvn\ -q
