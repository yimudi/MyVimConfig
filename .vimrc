"设置leader为
let mapleader=","
let g:mapleader=","

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936,gb18030 
set tabstop=4
set nocompatible            " 关闭 vi 兼容模式
syntax on                   " 自动语法高亮
filetype plugin indent on   " 开启插件
set number                  " 显示行号
set ruler                   " 显示行和列
set nocursorline            " 不突出显示当前行
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set nobackup                " 覆盖文件时不备份
set nowb
set autochdir               " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes          " 设置备份时的行为为覆盖
" set autoread                " set to auto read when a file changed from the outside
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
" set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             " 短暂跳转到匹配括号的时间
" set nowrap                  " 不自动换行
set magic                  " 显示括号配对情况
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set smartindent             " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=1            " 显示状态栏 (默认值为 1, 无法显示状态栏)
" set foldenable              " 开始折叠
" set foldmethod=syntax       " 设置语法折叠
" set foldcolumn=0            " 设置折叠区域的宽度
" setlocal foldlevel=1        " 设置折叠层数为
" set foldclose=all           " 设置为自动关闭折叠
" colorscheme colorzone       " 设定配色方案
set background=dark
colorscheme default
" colorscheme desert        " 设定配色方案
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\ 
                            " 设置在状态行显示的信息
" 显示Tab符
set nolist
set listchars=tab:>-,trail:-

set colorcolumn=81          " vim 80 char limited

" 设置鼠标
" set mouse=a

"设置代码折叠方式为 手工  indent
"set foldmethod=indent
"设置代码块折叠后显示的行数
set foldexpr=1
"编辑vim配置文件
set fileformats=unix,dos,mac
nmap <Leader>e :tabnew $HOME/.vimrc<CR>
let $VIMFILES = $HOME.'/.vim'

set tags+=~/.vim/tags/libc6
" set tags+=~/.vim/tags/clib_h
set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4
" set tags+=./tags,../tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags,./../../../../../../tags,./../../../../../../../tags,./../../../../../../../../tags,./../../../../../../../../../tags,./../../../../../../../../../../tags
"build tags of your own  project with Ctrl-F12
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" <C-Tab> <C-S-Tab>分别向前、向后循环切换每个buffer
let g:miniBufExplMapCTabSwitchBufs = 1 
" 用<C-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1
" 则可以用<C-h,j,k,l>切换到上下左右的窗口中去
let g:miniBufExplMapWindowNavVim = 1
hi MBEChanged guibg=darkblue ctermbg=darkblue 

"0mniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocompleute after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

autocmd FileType python setlocal et sta sw=4 sts=4

"不同文件类型的缩进
au FileType html,python,vim,javascript,phtml setl shiftwidth=2
au FileType html,python,vim,javascript,phtml setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
set completeopt=longest,menu

" 设置大括号自动补全
" imap { {}<ESC>i<CR><ESC>O
imap { {}<ESC>i
" set [ --> []
imap [ []<ESC>i
" set ( --> () 
imap ( ()<ESC>i
" 设置在插入状态下上下左右移动
imap <C-k> <Up>
imap <C-l> <Right>
" <Ctrl-z> mapping to :wa<CR><Ctrl-m>
nmap <C-m> :wa<CR><C-z>

"自动加载树目录
nmap <F1> :NERDTreeToggle<CR>

"taglist 
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=38
let Tlist_Use_Horiz_Window=0
nmap <F3> :Tlist<CR>

" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['darkred', 'darkmagenta', 'blue', 'brown', 'darkgreen', 'lightgray','lightmagenta'],
	\	'operators': '',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'red', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" java支持 
" http://www.cnblogs.com/wds128/p/4479941.html 
setlocal omnifunc=javacomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
autocmd FileType java inoremap <expr><CR> pumvisible()?"\<C-Y>":"<CR>"

if has('autocmd')
    augroup coloroverride
        autocmd!
        autocmd ColorScheme * highlight LineNr  ctermfg=DarkGrey guifg=DarkGrey " Override LineNr
        autocmd ColorScheme * highlight CursorLineNr  ctermfg=White guifg=White " Override CursorLineNr
    augroup END
endif
silent! colorscheme eldar " Custom color scheme

hi comment ctermfg=grey
" set Search highlight
hi Search term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red

" 禁止换行自动添加注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
