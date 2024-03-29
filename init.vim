call plug#begin("~/.vim/plugged")

	if exists('g:vscode')
		" VS Code extension
	Plug 'haya14busa/vim-easymotion'
	Plug 'roxma/nvim-completion-manager'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'tpope/vim-surround'
	else

  " Theme
	Plug 'gruvbox-community/gruvbox'
	Plug 'tomasiser/vim-code-dark'
	" Plug 'dracula/vim'
	" Plug 'kyoz/purify', { 'rtp': 'vim' }
	" Plug 'mhartington/oceanic-next'
	"recommended when using oceanic
	" Plug 'herringtondarkholme/yats.vim'
  " TypeScript Highlighting
	Plug 'leafgarland/typescript-vim'
	" Plug 'peitalin/vim-jsx-typescript'

  " Language Client
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

  " auto close for ([{
  " Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
	" using pear instead until can fix because typing {} with space doesn't keep
	" closing
	Plug 'tmsvg/pear-tree'

  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " File Search
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'epmatsw/ag.vim'

	" Commenting
 	Plug 'preservim/nerdcommenter'
	" StatusLine
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" surround
	Plug 'tpope/vim-surround'

	" angular syntax testing
	Plug 'curist/vim-angular-template'
	Plug 'digitaltoad/vim-pug'

	" better syntax and loading times
	Plug 'sheerun/vim-polyglot'

	endif

	call plug#end()

	source $HOME/.config/nvim/basic.vim

	if exists('g:vscode')
		" VS Code extension
	else

	source $HOME/.config/nvim/coc.vim
	source $HOME/.config/nvim/colorscheme.vim
	source $HOME/.config/nvim/nerdtree.vim
	source $HOME/.config/nvim/fzf.vim
	source $HOME/.config/nvim/airline.vim
	source $HOME/.config/nvim/auto-pairing.vim
	source $HOME/.config/nvim/syntax.vim

	endif
