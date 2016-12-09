let s:CONF_DIRECTORY = expand('<sfile>:p:h')
let s:vim_configuration_files = [
\ 'vim-plug.vimrc',
\ 'airline.vimrc',
\ 'syntastic.vimrc',
\ 'youcompleteme.vimrc',
\ 'nerdtree.vimrc',
\ 'diff.vimrc',
\]

for file in s:vim_configuration_files
  execute('source ' . s:CONF_DIRECTORY . '/' . file)
endfor
