"Start it up
silent! call pathogen#infect()
silent! call pathogen#helptags()

" turn on syntax highlight
if has("syntax")
        syntax enable
        set background=light
        let g:solarized_termtrans = 1
        let g:solarized_underline = 0
        silent! colorscheme solarized
endif

" Backups Skip backup entirely.
set nobackup
if has("writebackup")
    set nowritebackup
endif

filetype plugin indent on

"Highlight the first column after the text width
set colorcolumn=+1

set nocompatible

"exec perltidy in current file when press control + F in command mode
"nmap <press Ctrl-F> :%! perltidy<CR> 
set autoindent 			"Preserve current indent on new lines
set textwidth=78 		"Wrap at this column
set backspace=indent,eol,start  "Make backspaces delete sensibly
set tabstop=4
set softtabstop=4		"Indentation levels every four columns 
set expandtab			"Convert all tabs typed to spaces
set shiftwidth=4                "Indent/outdent by four columns
set shiftround                  "Indent/outdent to nearest tabstop
set matchpairs+=<:>             "Allow % to bounce between angles too
" display indentation guides
set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
set number " line numbers
set ruler "show the line num on the bar

if has("mouse")
    set mouse=a
endif

map <ScrollWheelUp> <C-Y>
map <ScrollWeelDown <C-E>

"Let vim using clipboard when yanking
set clipboard=unnamed

"Syntastic command conflig with :E
cmap E<CR> Ex<CR>

"syntastic enable
"
"On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }

" Use jshint
let g:systastic_javascript_checkers=['jshint']

" Enable signs
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" Check on buffer open
let g:syntastic_check_on_open = 1

"NODETree
autocmd vimenter * if !argc() | NERDTree | endif
