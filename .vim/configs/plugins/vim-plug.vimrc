call plug#begin('~/.vim/plugged')

" Code Completion {{{ "
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable', 'on': [] }
Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py --clang-completer' }
if !g:isWindows
    Plug 'OmniSharp/omnisharp-vim', { 'do': 'git submodule update --init --recursive && cd server && xbuild' }         " C# completion
    Plug 'wellle/tmux-complete.vim'                       " Add completion for text from tmux panel
else
    " For enable msbuild add to path variable path to .NET framework. E.g.: C:\Windows\Microsoft.NET\Framework\v4.0.30319
    Plug 'OmniSharp/omnisharp-vim', { 'do': 'git submodule update --init --recursive && cd server && msbuild' }         " C# completion
endif
" For working it is necessary to have python3 installed
" On Windows you have to have the same architecture (32 or 64 bits) versions of vim and python
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'   " Snippets.
" }}} Code Completion "
" Fuzzy Finder {{{ "
" Plugin outside ~/.vim/plugged with post-update hook
" On windows download binaries from the github
if !g:isWindows
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
else
    Plug 'junegunn/fzf'
endif
Plug 'junegunn/fzf.vim'
" }}} Fuzzy Finder "
" Git {{{ "
Plug 'tpope/vim-fugitive'                " Git plugin
Plug 'airblade/vim-gitgutter'            " Extencion for git
Plug 'gregsexton/gitv', {'on': ['Gitv']} " Gitk for vim
" }}} Git "
" Search {{{ "
Plug 'osyo-manga/vim-over'            " Replace highlighter
Plug 'dkprice/vim-easygrep'           " Easy grep
Plug 'mileszs/ack.vim'                " Run ack in vim
Plug 'mhinz/vim-grepper'              " Asynchronous search
" }}} Search "
" Project {{{ "
Plug 'tpope/vim-dispatch'             " Project compiling
Plug 'LucHermitte/lh-vim-lib'         " Dependency of local_vimrc
Plug 'LucHermitte/local_vimrc'        " Local vimrc files for projects
if !g:isWindows
    Plug 'editorconfig/editorconfig-vim'  " Editor configuration for a project
endif
" }}} Project "
" File Tree {{{ "
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
"Plug 'Shougo/unite.vim' | Plug 'shougo/vimfiler.vim'
" }}} File Tree "
" Text manipulation {{{ "
Plug 'wellle/targets.vim'             " Add various text objects to VIM
Plug 'terryma/vim-multiple-cursors'   " Plugin for multiple cursors
Plug 'tmhedberg/matchit'              " Extend behavior of %
Plug 'tpope/vim-repeat'               " Extend behavior of .
Plug 'tpope/vim-surround'             " Work with surroundings in pairs.
Plug 'junegunn/vim-easy-align'        " Vim alignment plugin
" }}} Text manipulation "
" Common {{{ "
Plug 'mhinz/vim-startify'             " Nice start screen
Plug 'vim-syntastic/syntastic'        " Syntax checking plugin
Plug 'chrisbra/vim-diff-enhanced'     " Diff viewer
Plug 'will133/vim-dirdiff'            " Dir diff viewer
Plug 'jiangmiao/auto-pairs'           " Add auto-pairs
Plug 'tpope/vim-unimpaired'           " Fast navigation
Plug 'majutsushi/tagbar'              " Tagbar
Plug 'zefei/vim-wintabs'              " Separate tabs for windows
Plug 'easymotion/vim-easymotion'      " Easy motion in files
Plug 'lyokha/vim-xkbswitch'           " Automatically switch keyboard layout to English in normal mode
" Dependency of vim-xkbswitch {{{ "
if g:isLinux
    Plug 'ierton/xkb-switch', { 'do': 'mkdir build && cd build && cmake .. -DCMAKE_INSTALL_PREFIX:PATH=../install && make && make install' }
endif
if g:isMac
    Plug 'vovkasm/input-source-switcher', { 'do': 'mkdir build && cd build && cmake .. -DCMAKE_INSTALL_PREFIX:PATH=../install && make && make install' }
endif
if g:isWindows
    Plug 'DeXP/xkb-switch-win'
endif
" }}} Dependency of vim-xkbswitch "
if !g:isWindows
    Plug 'vim-scripts/Conque-GDB', { 'on': 'ConqueGdb' }         " Conque GDB
endif
" }}} Common "
" View {{{ "
Plug 'yggdroot/indentline'            " Displaying thin vertical lines at each indentation level
Plug 'ntpeters/vim-better-whitespace' " Highlight whitespaces
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
Plug 'vim-latex/vim-latex'            " Plugin for editing LaTeX files
Plug 'xuhdev/vim-latex-live-preview'  " Plugin preview for LaTeX
" }}} LaTeX "
" Markdown {{{ "
Plug 'plasticboy/vim-markdown'
" }}} Markdown "
" Other {{{ "
if g:personalConfig == 1 || g:extendedConfig == 1
    Plug 'wakatime/vim-wakatime'          " Time tracking
endif
Plug 'itchyny/calendar.vim'           " Calendar in VIM
Plug 'vimwiki/vimwiki'                " Organize notes
if !g:isWindows
    Plug 'tbabej/taskwiki'                " Taskwarior for vimwiki
endif
"Plug 'Shougo/vimproc.vim', {'do' : 'make'} | Plug 'shougo/vimshell.vim'       " Vim shell
" }}} Other "

call plug#end()

let g:plug_threads = 8
