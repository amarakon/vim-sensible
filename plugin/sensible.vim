" Default settings
set fileencoding=utf-8 title number relativenumber numberwidth=1 foldlevel=1
set mouse=a listchars=tab:──,space:· list cursorline tabstop=4 softtabstop=-1
set shiftwidth=0 smartindent termbidi colorcolumn=+1
let &titlestring = "Neovim – %t%( %m%)"

let g:netrw_banner = 0 " Do not show the hideous netrw banner

autocmd filetype diff set nolist " No marking of tab and space characters
autocmd filetype diff,ebuild set nospell " No spell-checking
" Set the text width for the `gitcommit` file type and start in insert mode
autocmd filetype gitcommit set textwidth=50 | startinsert

" Enable `termguicolors` if the terminal supports it
if $COLORTERM == "truecolor" | set termguicolors | endif

" Set the `spelllang` to the locale’s language if it is set
if $LANG != ''
	let &spelllang = tolower(trim(trim($LANG, ".utf8"), ".iso88591"))
endif

" Use `Control-Space` for omni completion
inoremap <c-space> <c-x><c-o>
" Use `Control-L` for line completion
inoremap <c-l> <c-x><c-l>

" Clipboard keybindings
nnoremap <c-y> <cmd>silent !xclip -r -i -selection clipboard %<return>
nnoremap <c-p> "+p
vnoremap Y "+y
vnoremap D "+d

" Keep the original `Up`, `Down`, and `Return` functionalities when the
" completion menu is visible
inoremap <expr> <up> pumvisible() ? "<c-e><up>" : "<up>"
inoremap <expr> <down> pumvisible() ? "<c-e><down>" : "<down>"
inoremap <expr> <return> pumvisible() ? "<c-e><return>" : "<return>"
