nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires silversearcher-ag
" used to ignore gitignore files
"let FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
" let FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
let FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor,coverage}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
let FZF_DEFAULT_OPTS='--ansi --preview-window --height 40% --layout=reverse --border'
" let FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
" let FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
" end nerdtree

" Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)


"searching for term in files
nnoremap <silent> <Leader>f :Rg<CR>
"uses ripgrep (rg) searching will look only in files and ignore file names as
"results
"set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
			"\ --follow
"--color=always\ --column\ --line-number
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

