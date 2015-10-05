set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" For Ansible formatting
Bundle 'chase/vim-ansible-yaml'

" For Ruby/eRuby formatting
Bundle 'vim-ruby/vim-ruby'

" For Puppet formatting based on the latest Puppetlabs Style Guide
Bundle 'rodjek/vim-puppet'

" For automatic text alignment e.g. hash-rockets (=>) of a hash
Bundle 'godlygeek/tabular'

" Git wrapper for vim
Bundle 'tpope/vim-fugitive'

" NERD tree allows you to explore your filesystem and open files and
" directories
Bundle 'scrooloose/nerdtree'

" For syntax checking of several languages including Ruby, R, Python, Puppet
" and many more. (For puppet, the executable needs to be available)
"Bundle 'scrooloose/syntastic'

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

set clipboard=unnamed

" The following applies different settings of tab width according to filetypes
"set expandtab         " Convert tabs to spaces
"set tabstop=4         " Insert 4 spaces for a tab
"set shiftwidth=4      " Number of space characters inserted for indentation 
"set softtabstop=4	   " makes the spaces feel like real tabs 
autocmd BufEnter *.py,*.sh,*.groovy set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set softtabstop=4|set expandtab
"autocmd FileType ruby set tabstop=2|set shiftwidth=4|set expandtab
autocmd BufEnter *.rb,*.pp,*.yaml,*.yml,*.html set tabstop=2|set shiftwidth=2|set expandtab
autocmd BufEnter Gemfile,Rakefile,Guardfile set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab

" Highlight column 
set colorcolumn=80
" Set color of column (1=DarkRed, 5=DarkMagenta, 7=LightGrey)
highlight colorcolumn ctermbg=5

" To turn off expandtab for editing makefiles
autocmd FileType make setlocal noexpandtab

set autoindent      " Use previous lines indentation when starting a new line

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"" Syntastic plugin recommended settings
"" start:syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"" end:syntastic

"set listchars=trail:·
"set list

"autocmd BufWritePre *.rb,*.py,*.yml :%s/\s\+$//e
