" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

  runtime bundle/tpope-vim-pathogen/autoload/pathogen.vim
  call pathogen#infect()
  call pathogen#helptags()

  
  " ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink

set autoread                    "Reload files changed outside vim

" automatically resize splits
set winheight=20
set winminheight=3

set rtp+=~/.vim/bundle/vundle/
   call vundle#rc()

 " let Vundle manage Vundle
 " required! 
    Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
    Bundle 'tpope/vim-fugitive'
    Bundle 'Lokaltog/vim-easymotion'

 "   Bundle 'Valloric/YouCompleteMe'

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

set gfn=Meslo\ LG\ L\ DZ:h14
set guifont=Meslo\ LG\ L\ DZ:h14
map <F2> :NERDTreeToggle<CR>
syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
  set transparency=5
endif

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Search Settings  =================
set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works in MacVim (gui) mode.
if has('gui_running')
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================
set autoindent
"set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

nnoremap j gj
nnoremap k gk
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

filetype plugin on
filetype indent on
filetype plugin indent on

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*

set mouse=a
set ruler
set laststatus=2

"

" ================ Scrolling ========================

set scrolloff=2         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

