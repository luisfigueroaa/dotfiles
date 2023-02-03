" clean tex files
autocmd VimLeave *.tex !texclean %

" set tex flavor
let g:tex_flavor = "latex"

autocmd FileType tex set wrap
autocmd FileType tex set linebreak

autocmd FileType tex nnoremap <leader>to :g/\\.*section{/#<cr>:
autocmd FileType tex inoremap ,up <esc>/usepackage<enter>o\usepackage{}<esc>i
autocmd FileType tex nnoremap <leader>up <esc>/usepackage<enter>o\usepackage{}<esc>i
autocmd FileType tex nnoremap <silent><leader>vo :VoomToggle latex<enter>
autocmd FileType tex inoremap ,fi \begin{figure}[H]<enter>\centering<enter>\includegraphics[width=1\linewidth]{}%<enter>\caption{<++>}<enter>\end{figure}<cr><cr><++><esc>4kt}a<C-X><C-F>
autocmd FileType tex inoremap ,bf \textbf{}<++><esc>T{i
autocmd FileType tex inoremap ,tt \texttt{}<++><esc>T{i
autocmd FileType tex inoremap ,it \textit{}<++><esc>T{i
autocmd FileType tex inoremap ,qu ``''<++><esc>T`i
autocmd FileType tex inoremap ,bs \textbackslash<Space>
autocmd FileType tex inoremap ,cen \begin{center}<enter><enter>\end{center}<esc>ki<TAB>
autocmd FileType tex inoremap ,beg \begin{DELRN}<enter><++><enter>\end{DELRN}<enter><enter><++><esc>4k0fR:MultipleCursorsFind<Space>DELRN<enter>c
autocmd FileType tex inoremap ,chap \chapter{}<enter><enter><++><esc>2kf}i
autocmd FileType tex inoremap ,sec \section{}<enter><enter><++><esc>2kf}i
autocmd FileType tex inoremap ,ssec \subsection{}<enter><enter><++><esc>2kf}i
autocmd FileType tex inoremap ,sssec \subsubsection{}<enter><enter><++><esc>2kf}i
autocmd FileType tex inoremap ,ul \begin{itemize}<enter><enter>\end{itemize}<enter><enter><++><esc>3kA\item<Space>
autocmd FileType tex inoremap ,ol \begin{enumerate}<enter><enter>\end{enumerate}<enter><enter><++><esc>3kA\item<Space>
autocmd FileType tex inoremap ,li <enter>\item<Space>
autocmd FileType tex inoremap ,lst \begin{lstlisting}[language=<++>,caption=<++>]<enter>\end{lstlisting}<esc>ko
autocmd FileType tex inoremap ,hr \href{}{}<esc>F}i
autocmd FileType tex inoremap ,ieq $$<++><esc>2T$i
autocmd FileType tex inoremap ,deq \[<cr>\]<esc>O
autocmd FileType tex inoremap ,neq \begin{equation}<cr><++><cr>\end{equation}
autocmd FileType tex inoremap ,col \begin{columns}[T]<enter>\begin{column}{.5\textwidth}<enter><enter>\end{column}<enter>\begin{column}{.5\textwidth}<enter><++><enter>\end{column}<enter>\end{columns}<esc>5kA
autocmd FileType tex inoremap ,gat \begin{gather*}<enter>\end{gather*}<esc>ko
autocmd FileType tex inoremap ,pl <esc>:-1read $HOME/.local/share/latex/article.tex<cr>
autocmd FileType tex inoremap ,plb <esc>:-1read $HOME/.local/share/latex/beamer.tex<cr>
autocmd FileType tex inoremap ,plu <esc>:-1read $HOME/.local/share/latex/article-ucsm.tex<cr>
autocmd FileType tex inoremap ,ta \begin{tabular}<enter><++><enter>\end{tabular}<enter><enter><++><esc>4kA{}<esc>i
autocmd FileType tex inoremap ,ot \begin{tableau}<enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><enter><++><enter>\end{tableau}<enter><enter><++><esc>5kA{}<esc>i
autocmd FileType tex inoremap ,tab \begin{table}[H]<enter>\centering<enter>\begin{tabular}<enter><++><enter>\end{tabular}<enter>\end{table}<enter><enter><++><esc>5kA{}<esc>i
autocmd FileType tex inoremap ,rf \ref{}<++><esc>T{i
autocmd FileType tex inoremap ,ct \cite{}<++><esc>T{i
autocmd FileType tex inoremap ,lb \label{}<++><esc>T{i
autocmd FileType tex inoremap ,a \href{}{<++>}<++><esc>2T{i
autocmd FileType tex inoremap ,vr \verb\|\|<++><esc>2T\|i
autocmd FileType tex inoremap ,fr \begin{frame}<enter>\frametitle{}<enter><enter><++><enter><enter>\end{frame}<enter><enter><++><esc>6kf}i
autocmd FileType tex inoremap ,col \begin{columns}[T]<enter>\begin{column}{.5\textwidth}<enter><enter>\end{column}<enter>\begin{column}{.5\textwidth}<enter><++><enter>\end{column}<enter>\end{columns}<esc>5kA
