call plug#begin('~/.vim/plugged')

" Code Completion {{{ "
if !has('win32')
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
    Plug 'OmniSharp/omnisharp-vim', { 'do': 'git submodule update --init --recursive && cd server && xbuild' }         " C# completion
    Plug 'wellle/tmux-complete.vim'                       " Add completion for text from tmux panel
endif
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'       " Snippets
" }}} Code Completion "
" Fuzzy Finder {{{ "
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" }}} Fuzzy Finder "
" Git {{{ "
Plug 'tpope/vim-fugitive'                " Git plugin
Plug 'tpope/vim-unimpaired'              " Fast navigation by commits for fugitive
Plug 'airblade/vim-gitgutter'            " Extencion for git
Plug 'gregsexton/gitv', {'on': ['Gitv']} " Gitk for vim
" }}} Git "
" Project {{{ "
Plug 'tpope/vim-dispatch'             " Project compiling
Plug 'osyo-manga/vim-over'            " Replace highlighter
Plug 'dkprice/vim-easygrep'           " Easy grep
Plug 'editorconfig/editorconfig-vim'  " Editor configuration for a project
" }}} Project "
" File Tree {{{ "
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
Plug 'Shougo/unite.vim' | Plug 'shougo/vimfiler.vim'
Plug 'lpenz/vimcommander'
" }}} File Tree "
" Common {{{ "
Plug 'terryma/vim-multiple-cursors'   " Plugin for multiple cursors
Plug 'mhinz/vim-startify'             " Nice start screen
Plug 'vim-syntastic/syntastic'        " Syntax checking plugin
Plug 'chrisbra/vim-diff-enhanced'     " Diff viewer
Plug 'jiangmiao/auto-pairs'           " Add auto-pairs
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'              " Tagbar
Plug 'zefei/vim-wintabs'              " Separate tabs for windows
if !has('win32')
    Plug 'vim-scripts/Conque-GDB', { 'on': 'ConqueGdb' }         " Conque GDB
endif
" }}} Common "
" View {{{ "
Plug 'yggdroot/indentline'            " Displaying thin vertical lines at each indentation level
Plug 'sjl/gundo.vim'                  " Visualize vim undo tree
Plug 'vim-scripts/xoria256.vim'       " Color scheme
"Plug 'nanotech/jellybeans.vim'
" }}} View "
" Syntax highlight {{{ "
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }   " C++ highlighting
Plug 'petRUShka/vim-opencl', { 'for': 'opencl' }            " OpenCL syntax highlight
Plug 'tpope/vim-git'                  " git syntax highlight
Plug 'OrangeT/vim-csharp', { 'for': 'cs' }                  " C# highlighting
Plug 'pearance/vim-tmux', { 'for': 'tmux' }                 " Tmux configuration highlight
"Plug 'Superbil/llvm.vim', { 'for': ['llvm', 'tablegen'] }   " llvm and opencl syntax highlight
" }}} Syntax highlight "
" LaTeX {{{ "
if !has('win32')
    Plug 'vim-latex/vim-latex'            " Plugin for editing LaTeX files
    Plug 'xuhdev/vim-latex-live-preview'  " Plugin preview for LaTeX
endif
" }}} LaTeX "
" Other {{{ "
if g:personalConfig == 1 || g:extendedConfig == 1
    Plug 'wakatime/vim-wakatime'          " Time tracking
endif
Plug 'itchyny/calendar.vim'           " Calendar in VIM
Plug 'vimwiki/vimwiki'                " Organize notes
"Plug 'Shougo/vimproc.vim', {'do' : 'make'} | Plug 'shougo/vimshell.vim'       " Vim shell
" }}} Other "

call plug#end()

let g:plug_threads = 8
