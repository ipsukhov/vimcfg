set nocompatible
set pastetoggle=<F2>
set clipboard=unnamed
set mouse=a
let mapleader = ";"
map <Leader>j <esc>:tabnext<CR>
map <Leader>k <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnew<CR>
noremap <Leader>s <esc>:update<CR>
" vnoremap <Leader>S <esc>:sort<CR> " FIXME
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv

" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

color painbow

set history=1000
set undolevels=1000

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set shiftround
set expandtab

""" Bundles
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" Airline
set laststatus=2

" Ctrlp
let g:ctrlp_maxheight = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*/env/*

" NerdTree
nnoremap <F12> :NERDTreeToggle<CR>

" Python-mode
" let g:pymode_rope=1
let g:ropevim_enable_shortcuts=1
let g:pymode_rope_goto_def_newwin="vnew"
let g:pymode_rope_extended_complete=1
let g:pymode_breakpoint=0
let g:pymode_syntax=1
let g:pymode_syntax_builtin_objs=0
let g:pymode_syntax_builtin_funcs=0

noremap <Leader>b Oimport ipdb; ipdb.set_trace() #  <-- bReAk<C-c>

" omnicomplete on j/k
function! OmniPopup(action)
    if pumvisible()
         if a:action == 'j'
             return "\<C-N>"
         elseif a:action == 'k'
             return "\<C-P>"
         endif
    endif
    return a:action
endfunction

inoremap <silent>j <C-R>=OmniPopup('j')<CR>
inoremap <silent>k <C-R>=OmniPopup('k')<CR>

" Folding
set nofoldenable


""" Rewriting bundle settings
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=79
highlight ColorColumn ctermbg=cyan guibg=cyan

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

