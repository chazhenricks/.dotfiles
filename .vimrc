set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype plugin indent on
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set ruler

" Colorscheme
 colorscheme colorsbox-material 




" Set Cursor Style For Different Modes
" Insert mode: blinking bar
let &t_SI = "\<Esc>]50;CursorShape=1\x7"

" Replace Mode: solid underscore
let &t_SR = "\<Esc>]50;CursorShape=2\x7"

" Normal Mode: blinking block
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" RUBY SPECIFIC
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
