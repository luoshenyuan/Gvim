""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       ��������
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"��ʾ����
execute "source ".$MYVIMFILES."/display.vim"

"����ӳ��
execute "source ".$MYVIMFILES."/mapkey.vim"

"����ű�����
execute "source ".$MYVIMFILES."/plugin.vim"

"�������
execute "source ".$MYVIMFILES."/configuration_plugin.vim"


"����������ɫ����
let $MYCOLORS = $MYVIMFILES."/colors"
execute "source ".$MYCOLORS."/manuscript.vim"
"execute "source ".$MYCOLORS."/molokai.vim"
"execute "source ".$MYCOLORS."/desert.vim"
"execute "source ".$MYCOLORS."/evening.vim"
"execute "source ".$MYCOLORS."/koehler.vim"

"���ļ����ͼ�⣬�������ſ��������ܲ�ȫ
set completeopt=preview,menu

"�����﷨����
syntax on
syntax enable

"����ļ����Ͳ�������ز��
filetype on

"������Ӧ�ļ����Ͳ��
filetype plugin on

"Ϊ�ض��ļ�����������������ļ�
filetype plugin indent on

"���ð����ĵ�Ϊ��������
"set helplang=tw  "����
"set helplang=cn  "����

"�� <leader> ����Ϊ "," ��
let mapleader=","

" ���Ա�����ļ�
set wildignore=*.o,*~,*.pyc,*.class
