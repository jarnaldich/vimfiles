" vim config file.
" While editing, press :source % to reload

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set foldmethod=manual

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

set ts=4
set expandtab
set ruler
if has("gui_running")
   set guifont=DejaVu\ Sans\ Mono:h12 
   set visualbell

   set showtabline=2 " Always show the tab line
   set number        " Show line numbers
   set guioptions-=T " Hide the toolbar
   set guioptions-=m " Hide the menu
end

set clipboard=unnamed

" Working with tabs
if version >= 700
    " always enable Vim tabs
    set showtabline=2
    " set tab features just like browser
    " open tab, close tab, next tab, previous tab 
    " (just like Chrome and Firefox keyboard shortcuts)
    map <C-t> <Esc>:tabnew<CR>
    map <C-F4> <Esc>:tabclose<CR>
    map <C-Tab> <Esc>:tabnext<CR>
    map <C-S-Tab> <Esc>:tabprev<CR>
endif
" Splits 
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>|
map <C-L> <C-W>l<C-W>|
map <C-=> <C-W>=
" Session options 
set sessionoptions+=resize
set sessionoptions+=winpos
set sessionoptions+=folds
set sessionoptions+=tabpages

" Change the directory to working directory of file in current buffer 
" http://vim.wikia.com/wiki/VimTip64
autocmd BufEnter * call CHANGE_CURR_DIR()
function! CHANGE_CURR_DIR()
        let _dir = expand("%:p:h")
        exec "cd " . _dir
        unlet _dir
endfunction

set encoding=utf-8 " Default encoding

" Plug 
call plug#begin('~/.vim/plugged')
    Plug 'tomasr/molokai'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'kien/ctrlp.vim'
    Plug 'tpope/vim-fugitive'
call plug#end()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

colorscheme molokai 
set lines=100 
set columns=100

" Leader key. Try to mimick spacemacs rocks!
let mapleader="\<Space>"
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>ff :e 
nnoremap <Leader>fed :e ~/vimfiles/jab-vimrc.vim<CR>
nnoremap <Leader><Tab> <C-6>
nnoremap <Leader>tt :NERDTreeToggle<CR>

