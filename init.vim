call plug#begin()
    "   - Vim (Linux/macOS): '~/.vim/plugged'
    "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

    Plug 'junegunn/vim-easy-align'

    "intelisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "clap
    Plug 'liuchengxu/vim-clap'

    "call plug#begin('~/.vim/plugged')

    "Plug 'lukas-reineke/indent-blankline.nvim'
    "call plug#end()all plug#begin('~/.vim/plugged')

    Plug 'lukas-reineke/indent-blankline.nvim'
    "call plug#end()
    Plug 'folke/lsp-colors.nvim'
    Plug 'folke/trouble.nvim'

    "dahboard
    Plug 'glepnir/dashboard-nvim'

    " vim bar"
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "bar for errores
    "Plug 'neomake/neomake'

"colorscheme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'zeis/vim-kolor'
Plug 'sainnhe/sonokai'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

"python
Plug 'vim-python/python-syntax'
Plug 'tell-k/vim-autopep8'
Plug 'fs111/pydoc.vim'

"synthastic
Plug 'vim-syntastic/syntastic'

"tree
Plug 'mbbill/undotree'

"extensions
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

"tabes
Plug 'romgrk/barbar.nvim'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
set guifont=FiraCode\ Nerd\ Font:h12
set nu 
"colorscheme zellner 
"let g:airline_theme='base16_isotope'

 " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " The configuration options should be placed before `colorscheme sonokai`.
        "let g:sonokai_style = 'andromeda'
        "let g:sonokai_style = 'default'
        "let g:sonokai_enable_italic = 1
        "let g:sonokai_disable_italic_comment = 1
	"let g:sonokai_diagnostic_line_highlight = 1       
	"colorscheme sonokai

        let g:tokyonight_style = 'Night'
	colorscheme ayu 

" Barbar config
set encoding=UTF-8 
let g:airline_theme='sonokai'
"let g:airline_theme='base16'

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:true

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:false

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:false

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:true

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null

set nowrap

let g:python_host_prog = '/usr/bin/python3.10'
let g:airline#extensions#nerdtree_statusline = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
    
let g:neovide_transparency=0.90

set tabstop=4
set shiftwidth=4
set expandtab

"source $HOME/.config/nvim/plug-config/coc.vim
set pyx=3

cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'ez')?('q'):('ez'))


