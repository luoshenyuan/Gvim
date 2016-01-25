""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           UI ����
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"���ع�����
if has("gui_running")
    set guioptions-=m	"���ز˵���
    set guioptions-=T	"���ع�����
    set guioptions-=L	"������������
    set guioptions-=r	"�����Ҳ������
    set guioptions-=b	"���صײ�������
    set guioptions-=0	"���� Tab ��
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           ��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"����λ��
winpos 0 0
"���ڴ�С����X��
set lines=38 columns=73
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"��������
if has("unix")
    set guifont=Lucida_Console:h11:cANSI
elseif has("win32") || has("win64")
    set guifont=Courier_new:h11       "h11 ������Ĵ�С
endif


"if has("gui_gtk2")
"    set guifont=DejaVu\ Sans\ Mono\ 10
"elseif has("gui_macvim")
"    set guifont=DejaVu_Sans_Mono:h11
"elseif has("gui_win32")
"    set guifont=DejaVu_Sans_Mono:h11
"end

"��ʾ�к�
set number
"��ʾ�����
set cursorline
"��ʾ�����
set cursorcolumn
"���ñ��Ϊ 80 ��
set colorcolumn=80
"function! s:set_colorcolumn() "{{{
  "if &ft !~ '\v(^$|markdown|vimfiler|unite|tagbar)'
      "setlocal colorcolumn=81
  "endif
"endfunction "}}}
"autocmd FileType * call s:set_colorcolumn()


"������ʾ�������
set showmatch
"��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ����
"set showmatch
"������ת��ƥ�����ŵ�ʱ��
"set matchtime=2

"��״̬�����
set ruler

"��������
set incsearch
"����ʱ������ʾ���ҵ����ı�
set hlsearch
"����ʱ���Դ�Сд
set ignorecase

"����(��)�Ʊ�����Ϊ 4
set tabstop=4
"���� Backspace ����һ��ɾ�� 4 ���ո�
set softtabstop=4
"���� << �� >> �ƶ��Ŀ��(�����Ŀո���)Ϊ 4
set shiftwidth=4
"ʹ�� >> �� << ʱ���� shiftwidth �������
set shiftround

"�����Զ���������ÿ�е�����ֵ����һ����ȣ��ر����������ע��
set autoindent

"����ƶ��� buffer �Ķ����͵ײ��Ǳ��� 2 �о���
set scrolloff=2

"������ģʽ��ʹ�� Tab ��ȫ�ǣ�����ȫ������һ�����в˵���ʾ����
set wildmenu

"�����ļ�Ĭ�ϱ���
set fileencoding=utf-8
set fileencodings=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
"�����������
let &termencoding=&encoding 

"���ò����� vi ����ģʽ������ʹ�� vim �Լ���
set nocompatible

"�ڴ���δ�����ֻ���ļ�ʱ������ȷ�ϴ���
set confirm

"�� windows ���ü��а�
"set clipboard+=unnamed


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"backspace �˸������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start
" indent: �������:set indent,:set ai ���Զ������������˸�����ֶ�������ɾ���������������ѡ�������Ӧ��
"eol:�������ģʽ�����п�ͷ����ͨ���˸���ϲ����У���Ҫ����eol��
"start��Ҫ��ɾ���˴β���ǰ�����룬�����������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�����ļ�
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��Ҫ�����ļ�
set nobackup

"��Ҫ���� swap �ļ����� buffer ������ʱ������
"set noswapfile
"set bufhidden=hide

"���������еĸ߶ȣ�Ĭ��Ϊ1 ��������Ϊ 2
"set cmdheight=2

"�趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set bsdir=buffer
"�Զ��л���ǰĿ¼Ϊ�ļ����ڵ�Ŀ¼
"set autochdir

"���ļ����ⲿ���޸�ʱ���Զ���ȡ�޸ĺ������
set autoread


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�۵�����
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable              " ��ʼ�۵�
set foldmethod=syntax       " �����﷨�۵�
"set foldcolumn=0            " �����۵�����Ŀ��
"setlocal foldlevel=1        " �����۵�����Ϊ
"set foldlevelstart=99       " ���ļ���Ĭ�ϲ��۵�����
