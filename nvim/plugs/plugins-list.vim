call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'folke/tokyonight.nvim'
  Plug 'rust-lang/rust.vim'
  " For tree icons
  Plug 'kyazdani42/nvim-web-devicons'
  " For tree
  Plug 'kyazdani42/nvim-tree.lua'
  " Tab-bar
  Plug 'romgrk/barbar.nvim'
  " lightline
  Plug 'itchyny/lightline.vim'
  " For fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'psliwka/vim-smoothie'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
