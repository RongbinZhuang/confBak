"basic setting
	set nocompatible			"free the function of vim"
	set number					"number of lines"
	set nobackup				"in case creating .*~"
	set shiftwidth=4 
	set tabstop=4 softtabstop=4 
	set smartindent 
	set cursorline				"current line stand out
	set ruler					"state line
	set ignorecase smartcase	"for search"
	set hlsearch				"highlight the matching"
	set magic					"using * % ^ & etc. to represent sth."
	set foldenable  
	set foldcolumn=0 
	set foldmethod=indent		

"plugin management
	filetype off                  " required
	" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
		" alternatively, pass a path where Vundle should install plugins
		"call vundle#begin('~/some/path/here')

		" let Vundle manage Vundle, required
		Plugin 'VundleVim/Vundle.vim'

		" The following are examples of different formats supported.
		" Keep Plugin commands between vundle#begin/end.
		" plugin on GitHub repo
		Plugin 'tpope/vim-fugitive'
		" plugin from http://vim-scripts.org/vim/scripts.html
		" Plugin 'L9'
		" Git plugin not hosted on GitHub
		Plugin 'git://git.wincent.com/command-t.git'
		" The sparkup vim script is in a subdirectory of this repo called vim.
		" Pass the path to set the runtimepath properly.
		Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
		" Install L9 and avoid a Naming conflict if you've already installed a
		" different version somewhere else.
		" Plugin 'ascenator/L9', {'name': 'newL9'}
		
		" extra plugin
		Plugin 'Valloric/YouCompleteMe'
			let g:ycm_confirm_extra_conf=0
			let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

		Plugin 'scrooloose/nerdtree'

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

"syntax choice
"

"map  :help :map-modes 
	"all mode
		"copy paste
			noremap <C-c> "+y
			noremap <C-p> "+p
		"hang on
			noremap bg <C-z>
	"normal mode
	
	"insert mode
		"matching
			inoremap ( ()<LEFT>
			inoremap [ []<LEFT>
			inoremap { {}<LEFT>
			inoremap " ""<LEFT>
			inoremap ' ''<LEFT>
		"move 
			inoremap <C-h> <LEFT>
			inoremap <C-j> <DOWN>
			inoremap <C-k> <UP>
			inoremap <C-l> <RIGHT>
	"visual mode
	"operator mode
		


"
