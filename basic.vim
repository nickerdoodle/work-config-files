let mapleader=" "
inoremap jj <Esc>
set termguicolors
syntax on
" syntax enable
" open new split panes to right and below
set splitright
set splitbelow

set mouse=a
augroup centerOnInsert
	autocmd!
	autocmd InsertEnter * normal zz
augroup END

" lets you tab when through options and show list
" when on the : commands
set wildmode=longest,list,full
" keeps indent sections highlighted
vnoremap > >gv
vnoremap < <gv


" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
"split resizing
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Down> :resize +2<CR>
nnoremap <Up> :resize -2<CR>

" use leader +hjkl to move between split/vsplit panels
" tnoremap <leader>h <C-\><C-n><C-w>h
" tnoremap <leader>j <C-\><C-n><C-w>j
" tnoremap <leader>k <C-\><C-n><C-w>k
" tnoremap <leader>l <C-\><C-n><C-w>l
tnoremap <leader>h <SPACE>h
tnoremap <leader>j <SPACE>j
tnoremap <leader>k <SPACE>k
tnoremap <leader>l <SPACE>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
" start terminal in insert mode
" au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n;
" uses zsh instead of bash
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

set number relativenumber
set ignorecase
" indents
filetype indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" TODO decide if wanting these four sets
"set autoindent
"set nobackup
"set showcmd
"set showmatch
"
"highlight LineNr term=bold cterm=NONE ctermfg=LightBlue ctermbg=NONE gui=NONE guifg=LightBlue guibg=NONE
highlight LineNr term=bold cterm=bold ctermfg=LightGreen ctermbg=NONE gui=bold guifg=LightGreen guibg=NONE
" highlight StatusLine term=bold cterm=bold ctermfg=LightGreen ctermbg=LightGreen gui=bold guifg=LightGreen guibg=LightGreen
"allow highlighting
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

highlight Normal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE
" not working: highlight Cursor ctermbg=Green
"
:highlight Comment ctermfg=DarkGreen
"will highlight next match while typing search
set incsearch

set cursorline "highlights line cursor is on

"command to reload vim file without closing
nnoremap <leader>ec :source $MYVIMRC<CR>
nnoremap <leader>ee :vs $MYVIMRC<CR>

"resizing windows in buffer
" to set normally, use
" :res 20 to say resize window to 20 lines height
" for width, use :vertical resize 20
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" switching tabs
"
nnoremap <silent> <Leader>t :tabn<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

"-----------------------------------
"Status Line Config
"-----------------------------------
"adds status line since 2 windows are needed to show
" set laststatus=2
" function! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfunction
"
" function! StatuslineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfunction
"
" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\
"
" set title
"-------------------------------------
"-----------------------------------
"Status Line Config
"-----------------------------------
