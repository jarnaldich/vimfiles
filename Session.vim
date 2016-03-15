let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
map! <S-Insert> *
map  h
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
map <NL> j_
map  k_
map  l
nnoremap <silent>  :CtrlP
snoremap  "_c
map  :tabnew
vmap  "*d
nnoremap    :CtrlPMixed
nnoremap  wc 
nnoremap  ws 
nnoremap  ww 
nnoremap  sf :so Session.vim
nnoremap  ss :mksession!
nnoremap  ep :lprev
nnoremap  en :lnext
nnoremap  bd :bdelete
nnoremap  tt :NERDTreeToggle
nnoremap  	 
nnoremap  fed :e ~/vimfiles/jab-vimrc.vim
nnoremap  ff :e 
nnoremap  fs :w
map Q gq " Don't use Ex mode, use Q for formatting
nmap gx <Plug>NetrwBrowseX
map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
map <C-Tab> :tabnext
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
snoremap <silent> <Del> c
snoremap <silent> <BS> c
nnoremap <SNR>34_: :=v:count ? v:count : ''
map <C-=> =
map <C-S-Tab> :tabprev
map <C-F4> :tabclose
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set balloonexpr=SyntasticBalloonsExprNotifier()
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=DejaVu\ Sans\ Mono:h12
set guioptions=egt
set helplang=Ca
set hidden
set history=50
set hlsearch
set incsearch
set ruler
set runtimepath=~/vimfiles,~\\.vim\\plugged\\molokai,~\\.vim\\plugged\\syntastic,~\\.vim\\plugged\\ctrlp.vim,~\\.vim\\plugged\\vim-fugitive,~\\.vim\\plugged\\ultisnips,E:\\Public\\Vim/vimfiles,E:\\Public\\Vim\\vim74,E:\\Public\\Vim/vimfiles/after,~\\.vim\\plugged\\ultisnips\\after,~/vimfiles/after
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos
set showtabline=2
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*%#warningmsg#%{SyntasticStatuslineFlag()}%*
set tabstop=4
set visualbell
set wildignore=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.*~
set window=41
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\vimfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +14 \temp\ungeotiff.py
badd +11 UltiSnips\python.snippets
badd +115 \git2\orthoenvironment_v2\lib\utilities\tiffs.py
badd +45 \temp\gdal_edit.py
badd +3 \git2\orthoenvironment_v2\lib\utilities\.gitignore
badd +140 jab-vimrc.vim
badd +24 \git\digitalglobe\errors.sql
badd +16 \git\digitalglobe\model\products_qc_view.py
badd +16 \git\digitalglobe\create_db.py
badd +21 \git\digitalglobe\model\digitalglobe_order_views.py
badd +41 \git\digitalglobe\model\cq_views.py
badd +63 \git\digitalglobe\model\config.py
badd +19 \git\digitalglobe\model\cq_annotation.py
badd +79 \git\digitalglobe\model\product.py
badd +1 \git2\orthoenvironment_v2\lib\utilities\app_base.py
badd +5 \git\digitalglobe\rebuild_db.bat
badd +33 \git\dbtool\dbtool.rkt
badd +1 \git\digitalglobe\model\rebuild_db.bat
badd +59 \git\digitalglobe\main.py
silent! argdel *
set lines=42 columns=153
winpos 78 16
edit jab-vimrc.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
set foldcolumn=3
setlocal foldcolumn=3
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
108
normal! zo
131
normal! zo
150
normal! zo
161
normal! zo
183
normal! zo
let s:l = 206 - ((37 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
206
normal! 030|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
