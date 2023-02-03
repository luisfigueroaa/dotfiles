autocmd FileType markdown,rmd set linebreak

autocmd FileType markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd FileType markdown,rmd inoremap ,n ---<Enter><Enter>
autocmd FileType markdown,rmd inoremap ,b ****<++><Esc>F*hi
autocmd FileType markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
autocmd FileType markdown,rmd inoremap ,e **<++><Esc>F*i
autocmd FileType markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
autocmd FileType markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
autocmd FileType markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
autocmd FileType markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd FileType markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd FileType markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd FileType markdown,rmd inoremap ,l --------<Enter>
autocmd FileType markdown,rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
autocmd FileType markdown,rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
autocmd FileType markdown,rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO
