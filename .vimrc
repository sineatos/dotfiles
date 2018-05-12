" Sineatos's Vim configure

" Need: git


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 
set nocompatible              	" be iMproved, required
filetype off                  		" required

" set the runtime path to include Vundle and initialize
if has('win32')
	" set runtime path in Windows
	set rtp+=$VIM/vimfiles/bundle/Vundle.vim
	call vundle#begin('$VIM/vimfiles/bundle/')
else
	" set runtime path in Linux,Unix and Mac
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERD tree
Plugin 'scrooloose/nerdtree'

" L9 vim-script libiary
Plugin 'L9'

" vim-airline
Plugin 'bling/vim-airline'

" vim-go (golang)
Plugin 'fatih/vim-go'

" jedi-vim (python)
Plugin 'davidhalter/jedi-vim'

" vim-javacpmplete2 (java)
Plugin 'artur-shaik/vim-javacomplete2'

" ale
Plugin 'w0rp/ale'

" NERD commenter
"Plugin 'aluriak/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting of NERD Tree
" show/hide NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" show line number
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" show hidden file
let NERDTreeShowHidden=1
" show book mark
let NERDTreeShowBookmarks=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting of vim-airline
" allow show status bar
set laststatus=2

" full color in windows xshell
set t_Co=256

" enable the tabline on the top
let g:airline#extensions#tabline#enabled = 1

" Setting of vim-go
" vim-go need vim7.4+,this setting make go run under 7.4
" let g:go_version_warning = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting of vim-javacomplete2
augroup initJavaSetting
	autocmd FileType java setlocal omnifunc=javacomplete#Complete

	" To enable smart (trying to guess import option) inserting class imports with F4
	autocmd FileType java nmap <buffer> <F4> <Plug>(JavaComplete-Imports-AddSmart)
	autocmd FileType java imap <buffer> <F4> <Plug>(JavaComplete-Imports-AddSmart)

	" To enable usual (will ask for import option) inserting class imports with F5
	autocmd FileType java nmap <buffer> <F5> <Plug>(JavaComplete-Imports-Add)
	autocmd FileType java imap <buffer> <F5> <Plug>(JavaComplete-Imports-Add)

	" To add all missing imports with F6
	autocmd FileType java nmap <buffer> <F6> <Plug>(JavaComplete-Imports-AddMissing)
	autocmd FileType java imap <buffer> <F6> <Plug>(JavaComplete-Imports-AddMissing)

	" To remove all unused imports with F7
	autocmd FileType java nmap <buffer> <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
	autocmd FileType java imap <buffer> <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

	" Default mappings
	autocmd FileType java nmap <buffer> <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
	autocmd FileType java nmap <buffer> <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
	autocmd FileType java nmap <buffer> <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
	autocmd FileType java nmap <buffer> <leader>jii <Plug>(JavaComplete-Imports-Add)

	autocmd FileType java imap <buffer> <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
	autocmd FileType java imap <buffer> <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
	autocmd FileType java imap <buffer> <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
	autocmd FileType java imap <buffer> <C-j>ii <Plug>(JavaComplete-Imports-Add)

	autocmd FileType java nmap <buffer> <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

	autocmd FileType java imap <buffer> <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

	autocmd FileType java nmap <buffer> <leader>jA <Plug>(JavaComplete-Generate-Accessors)
	autocmd FileType java nmap <buffer> <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
	autocmd FileType java nmap <buffer> <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
	autocmd FileType java nmap <buffer> <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
	autocmd FileType java nmap <buffer> <leader>jts <Plug>(JavaComplete-Generate-ToString)
	autocmd FileType java nmap <buffer> <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
	autocmd FileType java nmap <buffer> <leader>jc <Plug>(JavaComplete-Generate-Constructor)
	autocmd FileType java nmap <buffer> <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

	autocmd FileType java imap <buffer> <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
	autocmd FileType java imap <buffer> <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
	autocmd FileType java imap <buffer> <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

	autocmd FileType java vmap <buffer> <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
	autocmd FileType java vmap <buffer> <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
	autocmd FileType java vmap <buffer> <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

	autocmd FileType java nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
	autocmd FileType java nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting of ale
" always open flag column
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" customize error and warning label
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

" integrate ale into vim statusline(airline support default)
let g:ale_statusline_format = ['X %d','! %d','V OK']

" show linter's name and error & warning
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

" in normal mode, sp: prep E&W info; sn: next E&W info
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)

" <Leader>s gamma check on/off
"nmap <Leader>s :ALEToggle<CR>
" <Leader>d E&W detail information
"nmap <Leader>d :ALEDetail<CR>
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting of NERD commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sineatos's settings
set number
set tabline=4
set tabstop=4
syntax on
let mapleader=','

" shortcut of tab switch
nmap <C-b>n :bnext<CR>
nmap <C-b>p :bprev<CR>
"imap <C-b>n <esc>:bnext<CR>i
"imap <C-b>p <esc>:bprev<CR>i
