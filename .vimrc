set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8
set fileencoding=utf-8
set splitbelow

"""""" Other plugins not included in Vundle
set runtimepath^=~/.vim/bundle/vim-easy-align/plugin/easy_align.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin list here :
source ~/.vim/bundles.vim


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Remapings
let mapleader = "§"
"  <ESC> key on jj :
inoremap jj <ESC>
"  Switch tab with <F3>/<F4>
map <F3> :tabp<CR>
map <F4> :tabn<CR>

" Folding (using space)
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

syntax on
colorscheme monokai
colorscheme monokai
set expandtab!
set shiftwidth=4
set tabstop=4
set relativenumber
set number

" EasyAlign configuration
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Gundo remap
" nnoremap <F5> :GundoToggle<CR>

" Syntastic options
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall'
let g:syntastic_python_checkers=['python']
let g:syntastic_java_javac_classpath = './:./lib/*.jar:./src'

"YCM options
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" delimitmate
let delimitMate_expand_cr = 1

" vim-ipython
source ~/.vim/bundle/vim-ipython/ftplugin/python/ipy.vim

