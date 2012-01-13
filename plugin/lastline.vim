autocmd BufReadPost * 
    \ if expand("<afile>:p:h") !=? $TEMP | 
    \   if line("'\"") > 0 && line("'\"") <= line("$") | 
    \     exe "normal g`\"" | 
    \     let b:doopenfold = 1 | 
    \   endif | 
    \ endif 
autocmd BufWinEnter * 
    \ if exists("b:doopenfold") | 
    \   unlet b:doopenfold | 
    \   exe "normal zv" | 
    \ endif 
