"����leaderΪ
let mapleader=","
let g:mapleader=","

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936,gb18030 
set tabstop=4
set nocompatible            " �ر� vi ����ģʽ
syntax on                   " �Զ��﷨����
filetype plugin indent on   " �������
set number                  " ��ʾ�к�
set ruler                   " ��ʾ�к���
set nocursorline            " ��ͻ����ʾ��ǰ��
set shiftwidth=4            " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set softtabstop=4           " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո�
set nobackup                " �����ļ�ʱ������
set nowb
set autochdir               " �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set backupcopy=yes          " ���ñ���ʱ����ΪΪ����
" set autoread                " set to auto read when a file changed from the outside
set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Դ�Сд����
" set nowrapscan              " ��ֹ���������ļ�����ʱ��������
set incsearch               " ������������ʱ����ʾ�������
set hlsearch                " ����ʱ������ʾ���ҵ����ı�
set noerrorbells            " �رմ�����Ϣ����
set novisualbell            " �ر�ʹ�ÿ�������������
set t_vb=                   " �ÿմ����������ն˴���
set showmatch               " ��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ����
set matchtime=2             " ������ת��ƥ�����ŵ�ʱ��
" set nowrap                  " ���Զ�����
set magic                  " ��ʾ����������
set hidden                  " ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�
set smartindent             " ��������ʱʹ�������Զ�����
set backspace=indent,eol,start
                            " ���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س���
set cmdheight=1             " �趨�����е�����Ϊ 1
set laststatus=1            " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)
" set foldenable              " ��ʼ�۵�
" set foldmethod=syntax       " �����﷨�۵�
" set foldcolumn=0            " �����۵�����Ŀ��
" setlocal foldlevel=1        " �����۵�����Ϊ
" set foldclose=all           " ����Ϊ�Զ��ر��۵�
" colorscheme colorzone       " �趨��ɫ����
set background=dark
" colorscheme solarized         " �趨��ɫ����
colorscheme desert        " �趨��ɫ����
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\ 
                            " ������״̬����ʾ����Ϣ
" ��ʾTab��
set nolist
set listchars=tab:>-,trail:-

set colorcolumn=81          " vim 80 char limited

" �������
" set mouse=a

"���ô����۵���ʽΪ �ֹ�  indent
"set foldmethod=indent
"���ô�����۵�����ʾ������
set foldexpr=1
"�༭vim�����ļ�
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

" <C-Tab> <C-S-Tab>�ֱ���ǰ�����ѭ���л�ÿ��buffer
let g:miniBufExplMapCTabSwitchBufs = 1 
" ��<C-��ͷ��>�л����������Ҵ�����ȥ
let g:miniBufExplMapWindowNavArrows = 1
" �������<C-h,j,k,l>�л����������ҵĴ�����ȥ
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

"��ͬ�ļ����͵�����
au FileType html,python,vim,javascript,phtml setl shiftwidth=2
au FileType html,python,vim,javascript,phtml setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
set completeopt=longest,menu

" ���ô������Զ���ȫ
" imap { {}<ESC>i<CR><ESC>O
imap { {}<ESC>i
" set [ --> []
imap [ []<ESC>i
" set ( --> () 
imap ( ()<ESC>i
" �����ڲ���״̬�����������ƶ�
imap <C-k> <Up>
imap <C-l> <Right>
" <Ctrl-z> mapping to :wa<CR><Ctrl-m>
nmap <C-m> :wa<CR><C-z>

"�Զ�������Ŀ¼
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
	\	'operators': '_,_',
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

" java֧�� 
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

hi comment ctermfg=darkgrey
" set Search highlight
hi Search term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red
