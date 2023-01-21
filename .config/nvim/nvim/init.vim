syntax enable

" sets
    set guicursor=
    set number
    set hlsearch
    set smartcase
    set shiftwidth=4
    set softtabstop=4
    set nu
    set ruler
    set cursorline
    "set background=dark
    set wildmenu
    "set wildmode=longest,list,full
    "set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
    set incsearch
    set termguicolors
    "set noswapfile
    "set nospell
    set pastetoggle=<F2>
    set rnu
    set colorcolumn=81
    set shortmess-=S
    set shortmess+=c
    set nohlsearch
    set path+=** " like fuzzy finder
    set clipboard+=unnamedplus
    "set termguicolors
    set laststatus=1
    set statusline=
    "set signcolumn=yes

" my maplead
    let mapleader = " "

" netrw config
    let g:netrw_banner=0
    let g:netrw_liststyle=3
    let g:netrw_winsize = 25
    let g:netrw_browse_split = 0
    "let g:netrw_altv = 1

" save state of currentline
"    if has("autocmd")
"	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"    endif

" plugins
    call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'vim-voom/voom'
    Plug 'rakr/vim-one'
    Plug 'junegunn/goyo.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'ap/vim-css-color'

    call plug#end()

" color scheme
    colorscheme one
    hi Normal guibg=NONE ctermbg=NONE

" goyo
    let g:goyo_width=81
    function! s:goyo_leave()
	 hi Normal guibg=NONE ctermbg=NONE
    endfunction
    autocmd! User GoyoLeave nested call <SID>goyo_leave()

" statusbar
    "source ~/.config/nvim/plugconfig/statusbar.vim

" vimairline
    let g:airline_symbols_ascii = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_theme='onedark'
    let g:airline#extensions#wordcount#enabled = 0
    let g:airline_section_x = "%{&filetype}"
    let g:airline_section_y = ""
    let g:airline_section_z = "P:%p%% L:%l/%L C:%c"
    let g:airline_section_error = ""
    let g:airline_section_warning = ""
    let g:airline#extensions#tabline#show_splits = 0
    let g:airline#extensions#tabline#show_tab_count = 0
    let g:airline#extensions#tabline#show_tab_type = 0
    let g:airline#extensions#tabline#buf_label_first = 0
    let g:airline#extensions#tabline#tab_nr_type = 1
    let g:airline#extensions#tabline#fnamemod = ':t:.'
    let g:airline#extensions#tabline#show_close_button = 0
    let g:airline#extensions#tabline#tab_min_count = 2
    let g:airline#extensions#tabline#show_buffers = 0
    "autocmd VimEnter * set laststatus=0
    let s:hidden_all = 0
    function! ToggleHiddenAll()
	if s:hidden_all  == 0
	    let s:hidden_all = 1
	    set laststatus=0
	else
	    let s:hidden_all = 0
	    set laststatus=2
	endif
    endfunction
    nnoremap <silent><S-h> :call ToggleHiddenAll()<CR>

" nerdtree
    let NERDTreeMinimalUI=1

" autocomplete
    autocmd Filetype tex 
		\   setlocal dict+=$HOME/.config/nvim/dictionaries/latex
    autocmd Filetype bib 
		\   setlocal dict+=$HOME/.config/nvim/dictionaries/bibtex
    set completeopt=menuone,longest,preview
    set complete+=k
    
" Runs a script that cleans out tex build files whenever I close out of a .tex file.
    autocmd VimLeave *.tex !texclean %

" global maps
    " compiler
    nnoremap <leader>co :w \| !compiler "<c-r>%"<CR>
    " open outpur
    nnoremap <leader>op :!opout <C-R>%<CR><CR>
    "nnoremap c "_c
    map <silent><F3> :set rnu! \| set nu! <CR>
    map <F6> :setlocal spell! spelllang=es,en<CR>
    nnoremap Q gq
    " fuzzy
    nnoremap <leader>f :find<space>
    " change to buffers
    nnoremap <leader>b :b<space>
    nnoremap <leader>vr :vertical resize 25<CR><space>
    nnoremap <leader>ex :Ex<CR>
    nnoremap <leader>sex :Sex!<CR>
    nnoremap <leader>n :NERDTreeToggle<CR>
    nnoremap <leader>+ :vertical resize +5<CR>
    nnoremap <leader>- :vertical resize -5<CR>
    map <silent><F4> :Goyo \| set linebreak<CR>
    nnoremap <leader>cd :cd %:h<CR>:pwd<CR>
    nnoremap <leader>r :registers<CR>
    nnoremap <leader>i :set ignorecase!<CR>:set ignorecase?<CR>
    nnoremap <leader>h :set hlsearch!<CR>:set hlsearch?<CR>
    " uppercase first letter of a line
    nnoremap <leader>se :s/\v<(.)(\w*)/\u\1\L\2/g

" snippets

" Shortcutting split navigation, saving a keypress:
    "map <C-h> <C-w>h
    "map <C-j> <C-w>j
    "map <C-k> <C-w>k
    "map <C-l> <C-w>l
    
" Navigating with guides
    inoremap ,<tab> <Esc>/<++><Enter>"_c4l
    vnoremap <leader><tab> <Esc>/<++><Enter>"_c4l
    map <leader><tab> <Esc>/<++><Enter>"_c4l

" latex
    let g:tex_flavor = "latex"
    " navigation
    "autocmd FileType tex nnoremap j gj
    "autocmd FileType tex nnoremap k gk
    "autocmd FileType tex vnoremap j gj
    "autocmd FileType tex vnoremap k gk
    " others
    autocmd FileType tex set wrap
    autocmd FileType tex set linebreak
    "let g:tex_fold_enabled=1
    autocmd FileType tex nnoremap <leader>to :g/\\.*section{/#<CR>:
    "autocmd FileType tex nnoremap <leader>to :VimtexTocToggle<CR>
    autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
    autocmd FileType tex nnoremap <leader>up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
    autocmd FileType tex nnoremap <silent><leader>vo :VoomToggle latex<ENTER>
    autocmd FileType tex inoremap ,fi \begin{figure}[H]<ENTER>\centering<ENTER>\includegraphics[width=1\linewidth]{}%<ENTER>\caption{<++>}<ENTER>\end{figure}<CR><CR><++><ESC>4kt}a<C-X><C-F>
    autocmd FileType tex inoremap ,bf \textbf{}<++><ESC>T{i
    autocmd FileType tex inoremap ,tt \texttt{}<++><ESC>T{i
    autocmd FileType tex inoremap ,it \textit{}<++><ESC>T{i
    " special characters
    autocmd FileType tex inoremap ,qu ``''<++><ESC>T`i
    autocmd FileType tex inoremap ,bs \textbackslash<Space>
    autocmd FileType tex inoremap ,cen \begin{center}<ENTER><ENTER>\end{center}<ESC>ki<TAB>
    autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
    autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
    autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
    " unordered and ordered lists
    autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
    autocmd FileType tex inoremap ,li <ENTER>\item<Space>
    " coding
    autocmd FileType tex inoremap ,lst \begin{lstlisting}[language=<++>,caption=<++>]<ENTER>\end{lstlisting}<ESC>ko
    autocmd FileType tex inoremap ,hr \href{}{}<ESC>F}i
    " equations
    "autocmd FileType tex inoremap ,mat \begin{math}<ENTER>\end{math}<ESC>O
    " inline equation
    autocmd FileType tex inoremap ,ieq $$<++><ESC>2T$i
    " display equation
    autocmd FileType tex inoremap ,deq \[<CR>\]<Esc>O
    " display numbered equation
    autocmd FileType tex inoremap ,neq \begin{equation}<CR><++><CR>\end{equation}
    autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
    " equations in multiple lines centered
    autocmd FileType tex inoremap ,gat \begin{gather*}<ENTER>\end{gather*}<ESC>ko
    " templates
    autocmd FileType tex inoremap ,pl1 <Esc>:-1read $HOME/Plantillas/article.tex<CR>
    autocmd FileType tex inoremap ,ucsm <Esc>:-1read $HOME/Plantillas/article-ucsm.tex<CR>
    " tables
    autocmd FileType tex inoremap ,ta \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
    autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
    autocmd FileType tex inoremap ,tab \begin{table}[H]<ENTER>\centering<ENTER>\begin{tabular}<ENTER><++><ENTER>\end{tabular}<ENTER>\end{table}<ENTER><ENTER><++><ESC>5kA{}<ESC>i
    autocmd FileType tex inoremap ,rf \ref{}<++><Esc>T{i
    autocmd FileType tex inoremap ,ct \cite{}<++><Esc>T{i
    autocmd FileType tex inoremap ,lb \label{}<++><Esc>T{i
    autocmd FileType tex inoremap ,a \href{}{<++>}<++><Esc>2T{i
    autocmd FileType tex inoremap ,vr \verb\|\|<++><Esc>2T\|i

    " tildes y otros
    "autocmd FileType tex inoremap á \'a
    "autocmd FileType tex inoremap é \'e
    "autocmd FileType tex inoremap í \'i
    "autocmd FileType tex inoremap ó \'o
    "autocmd FileType tex inoremap ú \'u
    " compile latex
    "augroup latex
    "    autocmd BufWritePost main.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!
    "augroup end

" .bib
    autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>=Gi
    autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>=Gi
    autocmd FileType bib inoremap ,m @misc{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>url<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>=Gi
    autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>=Gi

"MARKDOWN
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
    autocmd FileType rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
    autocmd FileType rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
    autocmd FileType rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

"HTML
    autocmd FileType html inoremap ,pl1 <Esc>:-1read /home/luis/Plantillas/index.html<CR>
    autocmd FileType html nnoremap <leader>co :silent !brave-browser --new-window % &<CR>
    autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
    autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
    autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
    autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
    autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
    autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
    autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
    autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
    autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
    autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
    autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
    autocmd FileType html inoremap ,ol <ol><Enter><li><++></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
    autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
    autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
    autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
    autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
    autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
    autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
    autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
    autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
    autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
    autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
    autocmd FileType html inoremap ,hu {{<  >}}<Esc>F<a<Space>
    autocmd FileType html inoremap &<space> &amp;<space>
    autocmd FileType html inoremap á &aacute;
    autocmd FileType html inoremap é &eacute;
    autocmd FileType html inoremap í &iacute;
    autocmd FileType html inoremap ó &oacute;
    autocmd FileType html inoremap ú &uacute;
    autocmd FileType html inoremap ä &auml;
    autocmd FileType html inoremap ë &euml;
    autocmd FileType html inoremap ï &iuml;
    autocmd FileType html inoremap ö &ouml;
    autocmd FileType html inoremap ü &uuml;
    autocmd FileType html inoremap ã &atilde;
    autocmd FileType html inoremap ẽ &etilde;
    autocmd FileType html inoremap ĩ &itilde;
    autocmd FileType html inoremap õ &otilde;
    autocmd FileType html inoremap ũ &utilde;
    autocmd FileType html inoremap ñ &ntilde;
    autocmd FileType html inoremap à &agrave;
    autocmd FileType html inoremap è &egrave;
    autocmd FileType html inoremap ì &igrave;
    autocmd FileType html inoremap ò &ograve;
    autocmd FileType html inoremap ù &ugrave;
