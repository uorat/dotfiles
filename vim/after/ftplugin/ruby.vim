" Ruby syntax checker
" [Deprecation] instead scrooloose/syntastic' (Powerful SyntaxCheck Plugin)
"
"if &filetype != 'ruby'
"  finish
"endif
"
"compiler ruby
"augroup RubySyntaxCheck
"  autocmd!
"  autocmd BufWritePost <buffer> silent make -c %|redraw!
"augroup END
