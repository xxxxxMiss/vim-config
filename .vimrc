set nocompatible              " be iMproved, required
filetype off                  " required

packadd! matchit

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
"Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'tpope/vim-surround'

Plugin 'uguu-org/vim-matrix-screensaver'

"Plugin 'jiangmiao/auto-pairs'
Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'romainl/vim-cool'

Plugin 'majutsushi/tagbar'
Plugin 'preservim/nerdcommenter'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
Plugin 'mg979/vim-visual-multi'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'

Plugin 'bagrat/vim-buffet'

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


" autocmd vimenter * NERDTree

command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd vimenter * colorscheme gruvbox

" 键位映射
nmap <F8> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
vmap <leader>f <Plug>(coc-format)
nmap <leader>f <Plug>(coc-format)
tnoremap <Esc><Esc> <C-\><C-N>
tnoremap <C-V><Esc> <Esc>
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
map ,h <C-W>h
map ,l <C-W>l
map ,k <C-W>k
map ,j <C-W>j
nmap cx a className={cx('')}<Esc>2hi
iabbrev icx import classNames from 'classnames/bind'<Enter>import styles from './index.module.less'<Enter>const cx = classNames.bind(styles)

"显示尾部多余的空格后者tab
"set list
"set listchars=tab:>-,trail:-

syntax on
set background=dark
"使用配色方案
" colorscheme solarized
"colorscheme desert

"不同文件类型采用不同缩进
filetype indent on

"允许使用插件
filetype plugin on
filetype plugin indent on

"关闭vi模式
set nocp

set updatetime=300

au CursorHold * checktime

"与windows共享剪贴板
set clipboard+=unnamed

"取消VI兼容，VI键盘模式不易用
set nocompatible

"显示行号, 或set number
set nu

"历史命令保存行数 
set history=100 

"当文件被外部改变时自动读取
set autoread 

"tab切换自动保存
set autowriteall

"取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile
" 设置跨会话保消息
set undodir=~/.vim/undodir

"允许使用鼠标点击定位
set mouse=a

"允许区域选择
set selection=exclusive
set selectmode=mouse,key

"高亮光标所在行
set cursorline

"取消光标闪烁
set novisualbell

"总是显示状态行
set laststatus=2

"状态栏显示当前执行的命令
set showcmd

"标尺功能，显示当前光标所在行列号
set ruler

"设置命令行高度为3
set cmdheight=3

"粘贴时保持格式
"set paste

"高亮显示匹配的括号
set showmatch

"在搜索的时候忽略大小写
set ignorecase
 
"高亮被搜索的句子
set hlsearch
 
"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"继承前一行的缩进方式，特别适用于多行注释
set autoindent

"为C程序提供自动缩进
set smartindent

"使用C样式的缩进
set cindent

"制表符为2
set tabstop=2

"统一缩进为2
set softtabstop=2
set shiftwidth=2

"允许使用退格键，或set backspace=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

"在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"光标移动到buffer的顶部和底部时保持3行距离, 或set so=3
set scrolloff=3

"设定默认解码
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"设定字体
if has("gui_running")
    let system = system('uname -s')
    if system == "Darwin\n"
        "set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h16 " 设置字体
				set guifont=DroidSansMono\ Nerd\ Font:h15
    else
        set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 15      " 设置字体
    endif
		set guioptions-=m           " 隐藏菜单栏
		set guioptions-=T           " 隐藏工具栏
		set guioptions-=L           " 隐藏左侧滚动条
		set guioptions-=r           " 隐藏右侧滚动条
		set guioptions-=b           " 隐藏底部滚动条
		set showtabline=0           " 隐藏Tab栏
		"set guicursor=n-v-c:ver5    " 设置光标为竖线
endif
 
"设定编码
set encoding=utf8
set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/vimrc_example.vim


" 折叠相关
set foldmethod=indent
set foldnestmax=10
set nofoldenable
"set foldlevel=99
"set foldcolumn=4

" 折行
set wrap
set showbreak=->

"自动补全
filetype plugin indent on
set completeopt=longest,menu

"set display=truncate

"自动补全命令时候使用菜单式匹配列表
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

" vim-devicons
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

let g:vim_jsx_pretty_colorful_config = 1 " default 0

" nerdtree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" ----------------------------------------------------------------------------
" vim-airline
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#overflow_marker = '…'
let g:airline#extensions#tabline#show_tab_nr = 0

" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

" ----------------------------------------------------------------------------
" vim-colors-solarized
" ----------------------------------------------------------------------------
let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"

let g:closetag_regions = {
			\ 'typescript.tsx': 'jsxRegion,tsxRegion',
			\ 'javascript.jsx': 'jsxRegion',
			\ }
" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
" let g:closetag_close_shortcut = '<leader>>'

" molokai
let g:rehash256 = 1

" gitgutter
highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
let g:gitgutter_set_sign_backgrounds = 2


" ----------------------------------------------------------------------------
" delimitMate
" ----------------------------------------------------------------------------
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_expand_cr = 1

let g:coc_disable_startup_warning = 1


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

