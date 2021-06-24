call plug#begin('~/.config/nvim/plugged')
"Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Theme
Plug 'gruvbox-community/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

"Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}

"Floatterm
Plug 'voldikss/vim-floaterm'

"Lightline
Plug 'itchyny/lightline.vim'
call plug#end()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

let mapleader = " "

" Move selection up and down
vnoremap <S-Up> :m '<-2<CR>gv=gv
vnoremap <S-Down> :m '>+1<CR>gv=gv