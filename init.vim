set number
set cursorline
syntax on

set background=dark


"Setting tab character
set tabstop=4              " 
set shiftwidth=4            " 
set expandtab
set listchars=tab:\¦\ 

                    



"Setting using powershell to Floaterm
set shell=powershell
set shellcmdflag=-command
set shellquote=\"
set shellxquote=


" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif



call plug#begin('C:\Users\Tung\AppData\Local\nvim\plugged')

    "Theme
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'dracula/vim', { 'as': 'dracula' }




    "File browser
    Plug 'preservim/nerdtree'                       "File browser
    Plug 'Xuyuanp/nerdtree-git-plugin'              "Git status plugin
    Plug 'ryanoasis/vim-devicons'                   "Icon
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "Highlight syntax 

    "Code syntax 
    Plug 'uiiaoo/java-syntax.vim'                   "Java syntax    

    "File search plugin
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   "Fuzzy finder 
    Plug 'junegunn/fzf.vim'
    
    "Terminal
    Plug 'voldikss/vim-floaterm'                "Terminal plugin

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    "Code intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'



call plug#end()

"set theme to
"colorscheme catppuccin
colorscheme dracula


let nvim_settings_dir = 'C:\Users\Tung\AppData\Local\nvim\settings'

execute 'source '.nvim_settings_dir.'\nerdtree.vim'
execute 'source '.nvim_settings_dir.'\coc.vim'
execute 'source '.nvim_settings_dir.'\floaterm.vim'

