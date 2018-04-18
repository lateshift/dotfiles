syntax on
set smartindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
set showmatch
set incsearch
set hlsearch

let g:airline#extensions#tabline#enabled = 0 
let g:airline#extensions#branch#enabled = 1 
" set laststatus=2 " for airline

map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>
map <C-b> :NERDTreeToggle<CR>

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

filetype plugin indent on
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Alt-B or Alt-Shift-B to navigate buffers in insert mode and normal mode
imap <D-B> <C-O>:BufMRUPrev<CR>
imap <D-b> <C-O>:BufMRUNext<CR>
map <D-B> :BufMRUPrev<CR>
map <D-b> :BufMRUNext<CR>
nmap <Esc>B :BufMRUPrev<CR>
nmap <Esc>b :BufMRUNext<CR>

map <C-y> :bp!<CR>

execute pathogen#infect()
call pathogen#helptags()
" color darkblue
color dracula

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif
