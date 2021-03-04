nnoremap <C-p> :FZF<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
" does ripgrep on files, ignoring case, including hidden files and excluding
" .git, node_modules, and other specified file path patterns
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor,coverage}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" color plus syntax highlighting if bat is installed
let $FZF_DEFAULT_OPTS='--ansi --height 40% --border --preview "bat --style=numbers --color=always --line-range :500 {}"'
" if bat is not installed, uncomment this line that reads file with cat
" let $FZF_DEFAULT_OPTS='--ansi --height 40% --border --preview "cat {}"'

"searching for term in files
nnoremap <silent> <Leader>f :Rg<CR>
"uses ripgrep (rg) searching will look only in files and ignore file names as
"results

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" toggle preview window with ctrl+/
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

"colors
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

