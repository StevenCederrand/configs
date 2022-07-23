" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use control + shift + lrup to resize windows
nnoremap <C-S-Down> :resize -2<CR>
nnoremap <C-S-Up> :resize +2<CR>
nnoremap <C-S-Left> :vertical resize -2<CR>
nnoremap <C-S-Right> :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Search
inoremap <C-f> <Esc>/

" Save
inoremap <C-z> <Esc>:w<CR>a
nnoremap <C-z> :w <CR>
" Remove all trailing whitespaces
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" NerdTree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" fzf
nnoremap <S-f> :Files <CR>
" Ripgrep
nnoremap <S-p> :Rg <CR>
" Remove search highlight
nnoremap <esc> :noh <CR>

" Tab buffers
nnoremap <leader>w :BufferClose<CR>
nnoremap <leader>1 :BufferGoto 1<CR>
nnoremap <leader>2 :BufferGoto 2<CR>
nnoremap <leader>3 :BufferGoto 3<CR>
nnoremap <leader>4 :BufferGoto 4<CR>
nnoremap <leader>5 :BufferGoto 5<CR>
nnoremap <leader>6 :BufferGoto 6<CR>
nnoremap <leader>7 :BufferGoto 7<CR>
nnoremap <leader>8 :BufferGoto 8<CR>

" Vertical split
nnoremap <leader>v :vsp<CR>
" Horizontal split
nnoremap <leader>h :sp<CR>

" jump to next error
nmap <leader>j :call CocAction('diagnosticNext')<cr>
nmap <leader>k :call CocAction('diagnosticPrevious')<cr>

" terminal mappings
tnoremap <Esc> <C-\><C-n>
nmap <leader>t :term <cr>
