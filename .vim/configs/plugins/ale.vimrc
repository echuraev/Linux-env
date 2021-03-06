let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_set_highlights = 1

function! LinterStatus() abort
    if ("*ale#statusline#Count")
        let l:counts = ale#statusline#Count(bufnr(''))

        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors

        return l:counts.total == 0 ? '' : printf(
        \   '[%dW %dE]',
        \   all_non_errors,
        \   all_errors
        \)
    endif
    return ''
endfunction
