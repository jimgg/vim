":filetype plugin on
":filetype indent on

set nocompatible
set autoindent
set shiftwidth=4
set tabstop=4
set noexpandtab
set backspace=indent,eol,start
set ruler
set showcmd
set hlsearch
set incsearch
set number
set encoding=utf8
set fdm=indent
set fdl=20
syntax on

"if has("gui_macvim")
"    macmenu &File.New\ Tab key=<nop>
"    map <D-t> :CommandT<CR>
"endif

let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let tlist_php_settings='php;f:function'
map <F2> <ESC>:NERDTreeToggle<RETURN>
map <F3> <ESC>:Tlist<RETURN>
map <F4> <ESC>:cs add _cscope.out<RETURN>
map <F5> <ESC>:cs kill _cscope.out<RETURN>
"map <F8> <ESC>:source ~/myvim_runtime/vimfiles/xdebug/debugger.vim<RETURN>
"au BufRead *.xaml setf xml

let mapleader=","
map <leader>f :!grep -nri <C-R>=expand("<cword>")<CR> %<CR>
"map <leader>s :!grep -nri <C-R>=expand("<cword>")<CR> *<CR>

nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"
"au VimLeave * exe 'if strlen(v:this_session) | exe "wviminfo! " . v:this_session . ".viminfo" | else | exe "wviminfo! " . "~/.vim/session/" . g:myfilename . ".session.viminfo" | endif'
"au VimLeave * exe 'if strlen(v:this_session) | exe "mksession! " . v:this_session | else | exe "mksession! " . "~/.vim/session/" . g:myfilename . ".session" | endif'

:autocmd FileType php noremap <C-M> :w!<CR>:!$HOME/local/php/bin/php %<CR>
:autocmd FileType php noremap <C-L> :!$HOME/local/php/bin/php -l %<CR>
:autocmd FileType java noremap <C-M> :!make && make run<CR>
:autocmd FileType java noremap <C-L> :w!<CR>:!make<CR>
au FileType php setlocal dict+=$HOME/myvim_runtime/vimfiles/dict/phpfunclist.txt
au FileType php se complete+=k


" go last active tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

color oceandeep
