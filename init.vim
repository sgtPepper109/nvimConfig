call plug#begin('C:/Users/arsha/AppData/Local/nvim/plugged')

"Plug 'feline-nvim/feline.nvim'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'p00f/cphelper.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
"Plug 'kdheepak/tabline.nvim'
"Plug 'nvim-lualine/lualine.nvim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'preservim/tagbar'
Plug 'ervandew/supertab'
Plug 'psilwka/vim-smoothie'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'psliwka/vim-smoothie'
Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdcommenter'
Plug 'crusoexia/vim-monokai'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'kshenoy/vim-signature'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jacoborus/tender.vim'
Plug 'sjl/badwolf'
Plug 'kyoz/purify'
"Plug 'startup-nvim/startup.nvim'
Plug 'anuvyklack/pretty-fold.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'akinsho/toggleterm.nvim', { 'tag' : 'v2.*' }
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'Mofiqul/vscode.nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'Shatur/neovim-ayu'

call plug#end()

lua require('config')

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='distinguished'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-\><C-\> :NERDTreeToggle<CR>
"nnoremap <C-\><C-\> :NvimTreeToggle<CR>

nnoremap <C-a> :ALEToggle<CR>
nmap <F8> :TagbarToggle<CR>

let g:SuperTabContextDefaultCompletionType = "<c-n>"

set termguicolors
syntax enable

lua require('ayu').colorscheme()
lua require('ayu').setup({ mirage = false, overrides = {}, })
colorscheme gruvbox

autocmd ColorScheme * call TransparentBackground()

filetype plugin indent on
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set foldmethod=manual
set autoindent
set smartindent
set cursorline

highlight Normal guibg=none
highlight NonText guibg=none

set t_Co=256
let g:startify_custom_header = [
 \ '',
 \ '                                                       _.oo.',
 \ '                               _.u[[/;:,.         .odMMMMMM`',
 \ '                            .o888UU[[[/;:-.  .o@P^    MMM^',
 \ '                           oN88888UU[[[/;::-.        dP^',
 \ '                          dNMMNN888UU[[[/;:--.   .o@P^',
 \ '                         ,MMMMMMN888UU[[/;::-. o@^',
 \ '                         NNMMMNN888UU[[[/~.o@P^',
 \ '                         888888888UU[[[/o@^-..',
 \ '                        oI8888UU[[[/o@P^:--..',
 \ '                     .@^  YUU[[[/o@^;::---..',
 \ '                   oMP     ^/o@P^;:::---..',
 \ '                .dMMM    .o@^ ^;::---...',
 \ '               dMMMMMMM@^`       `^^^^',
 \ '              YMMMUP^',
 \ '              ^^',
 \ '',
 \ '',
 \ '           ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 \ '           ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 \ '           ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 \ '           ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 \ '           ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 \ '           ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
 \ '                 - NIGHTLY',
 \]

highlight CocUnusedHighlight ctermbg=NONE guibg=#000000
:nmap <space>e <Cmd>CocCommand explorer<CR>

"autocmd VimEnter *
            "\   if !argc()
            "\ |   Startify
            "\ |   NERDTree
            "\ |   wincmd w
            "\ | endif

autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ |   wincmd w
            \ | endif

let g:ale_sign_error = '❗'
let g:ale_sign_warning = ''
let g:ale_sign_warning = '💡'
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

lua require('toggleterm').setup({ open_mapping = [[<c-\>]], direction="float", shell=vim.o.shell,})

autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end
