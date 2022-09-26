" Default settings
set title number relativenumber numberwidth=1 nofoldenable mouse=a cursorline
set tabstop=4 shiftwidth=0 smartindent termbidi colorcolumn=+1 smartindent
set termbidi colorcolumn=+1
let &titlestring = "Neovim – %t%( %m%)"

" Global settings
let g:netrw_banner = 0 " Do not show the hideous netrw banner

autocmd filetype diff set nolist " No marking of tab and space characters
autocmd filetype diff,ebuild set nospell " No spell-checking
" Set the text width for the `gitcommit` file type and start in insert mode
autocmd filetype gitcommit set textwidth=72 colorcolumn=51,73 | startinsert

" Enable `termguicolors` if the terminal supports it
if $COLORTERM == "truecolor" | set termguicolors | endif

" Set the `spelllang` to the locale’s language if it is set
let lang = tolower($LANG[0:4])
if index([ "", lang ], $LANG) < 0 | let &spelllang = lang | endif

" Use `Control-Space` for omni completion
inoremap <c-space> <c-x><c-o>
" Use `Control-L` for line completion
inoremap <c-l> <c-x><c-l>

" Clipboard keybindings
nnoremap <leader>y <cmd>silent !xclip -r -i -selection clipboard %<return>
nnoremap <leader>p "+p
vnoremap Y "+y
vnoremap D "+d

" Keep the original `Up`, `Down`, and `Return` functionalities when the
" completion menu is visible
inoremap <expr> <up> pumvisible() ? "<c-e><up>" : "<up>"
inoremap <expr> <down> pumvisible() ? "<c-e><down>" : "<down>"
inoremap <expr> <return> pumvisible() ? "<c-e><return>" : "<return>"
