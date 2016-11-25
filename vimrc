filetype plugin off
filetype plugin on
filetype indent on
syntax on

set nocompatible
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set ruler
set showcmd
set hlsearch
set incsearch
set number
set encoding=utf8
set fdm=indent
set fdl=20
set completeopt=menu
set mouse=a
set fileencodings=utf8,gb18030,gbk,gb2312,cp936

call pathogen#infect('~/vim_runtime/vimfiles/bundle')

let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
map <F2> <ESC>:NERDTreeToggle<RETURN>
" let tlist_php_settings='php;f:function'
" map <F3> <ESC>:Tlist<RETURN>
map <F3> <ESC>:TagbarToggle<RETURN>
map <F4> <ESC>:cs add _cscope.out<RETURN>
map <F5> <ESC>:cs kill _cscope.out<RETURN>

let mapleader=","
map <leader>f :!grep -nri <C-R>=expand("<cword>")<CR> %<CR>

nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>o :tabfind **/<C-R>=expand("<cword>")<CR>.html<CR>
nmap <leader>j :syn sync fromstart<CR>
nmap <leader>n :tabnew<CR>

au VimLeave * exe 'if strlen(v:this_session) | exe "wviminfo! " . v:this_session . ".viminfo" | else | exe "wviminfo! " . "~/.vim/session/" . g:myfilename . ".session.viminfo" | endif'
au VimLeave * exe 'if strlen(v:this_session) | exe "mksession! " . v:this_session | else | exe "mksession! " . "~/.vim/session/" . g:myfilename . ".session" | endif'

":autocmd FileType php noremap <C-M> :w!<CR>:!$HOME/local/php/bin/php %<CR>
":autocmd FileType php noremap <C-L> :!$HOME/local/php/bin/php -l %<CR>
:autocmd FileType python noremap <C-M> :w!<CR>:!python %<CR>
:autocmd FileType python noremap <C-L> :w!<CR>:PymodeLint<CR>
au FileType python se fdm=indent

let g:xmledit_enable_html=1
let g:pymode_options_max_line_length=160
let g:NERDTreeMouseMode=2
" let g:pymode_rope = 0

" go last active tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

set background=dark
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termcolors=256
" colorscheme solarized
" colorscheme dracula
colorscheme oceandeep

" fix webpack-dev-server watch
" :set backupcopy=yes
"

" let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
" let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
" let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
" let g:ycm_complete_in_comments = 1 " Completion in comments
" let g:ycm_complete_in_strings = 1 " Completion in string

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
