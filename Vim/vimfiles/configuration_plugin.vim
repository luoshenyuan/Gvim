""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           这是对安装的插件的设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       'Shougo/vimproc.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"若 vimproc_win32.dll/vimproc_win64.dll 放 在vimproc 插件的 autoload
"目录下，可以不要这个设置，否则就要自行设置 vimproc_win32.dll/vimproc_win64.dll 的路径
"let g:vimproc_dll_path=$VIMRUNTIME."/vimproc_win64.dll"

"在 vim 退出时结束 gocode 进程
autocmd VimLeavePre * VimProcBand taskkill -F -IM gocode.exe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       'bling/vim-airline' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enable = 1
"一启动 vim 总是显示 airline 栏
set laststatus=2

"设置 airline 主题颜色
"let g:airline_theme="kolor"
let g:airline_theme="serene"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       缩进对齐线 'Yggdroot/indentLine' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置缩进对齐线样式 (tab 用|；空格则用~)
set list listchars=tab:\|\ ,nbsp:~        "set list 设置默认打开缩进对齐线  关闭是 set nolist

"启用智能对齐方式
set smartindent

"这个是显示 Tab 的设置
set expandtab "tab use spaces(用空格替代 tab)

"加!是用于处理非空白字符之后的tab，即所有的tab，若不加!，则只处理行首的tab。
%retab!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       高亮括号 'kien/rainbow_parentheses.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"默认打开括号高亮(自启动)
au VimEnter * RainbowParenthesesToggle
"高亮圆括号()
au VimEnter * RainbowParenthesesLoadRound
"高亮方括号[]
au VimEnter * RainbowParenthesesLoadSquare
"高亮花括号{}
au VimEnter * RainbowParenthesesLoadBraces
"高亮尖括号<>
au VimEnter * RainbowParenthesesLoadChevrons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       目录树 'scrooloose/nerdtree' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"使用 <F11> 键就可以打开/关闭 NERDTree (目录树)
map <silent> <F11> :NERDTreeToggle<CR>
"当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
"设置 NERETree 窗口宽度
let NERDTreeWinSize=22
"打开文件时关闭树
"let NERDTreeQuitOnOpen=1

"如果 NERDTee 窗口时最后一个窗口，则推出 vim
"let NERDTree_Eixt_OnlyWindow = 1
"
"控制当光标移动超过一定距离时，自动将焦点调整到屏中心
let NERDTreeAutoCenter=1
"默认显示隐藏文件
let NERDTreeShowHidden=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       代码浏览器 'majutsushi/tagbar' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"使用 <F10> 键打开/关闭 tagbar 窗口
nmap <silent> <F10> :TagbarToggle<CR>
"设置 tagbar 窗口宽度
let g:tagbar_width = 25

let g:tagbar_type_cpp = {
        \ 'ctagstype' : 'c++',
        \ 'kinds'     : [
            \ 'd:macros:1',
            \ 'p:prototypes:1',
            \ 'g:enums',
            \ 'e:enumerators',
            \ 't:typedefs',
            \ 'n:namespaces',
            \ 'c:classes',
            \ 's:structs',
            \ 'u:unions',
            \ 'f:functions',
            \ 'm:members',
            \ 'v:variables'
        \ ],
        \ 'sro'        : '::',
        \ 'kind2scope' : {
            \ 'g' : 'enum',
            \ 'n' : 'namespace',
            \ 'c' : 'class',
            \ 's' : 'struct',
            \ 'u' : 'union'
        \ },
        \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'namespace' : 'n',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u'
        \ }
    \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       语法自动分析 'scrooloose/syntastic' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       自动补全 'Shougo/neocomplete.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:neocomplete#enable_at_startup = 1                 "默认启动自动补全
" let g:neocomplete#enable_auto_select = 1               "默认选择下拉表第一个选项
"let g:neocomplete#sources#dictionary#dictionaries = {
"      \ 'default' : '',
"      \ 'css' : $MYVIMFILES.'/dict/cssColorName.dict',
"      \ 'less' : $MYVIMFILES.'/dict/cssColorName.dict'
"      \ }
"let g:neocomplete#same_filetypes = {
"      \ 'c': 'cpp',
"      \ 'cpp': 'c',
"      \ 'html': 'css,javascript',
"      \ 'php': 'html',
"      \ 'jsp': 'html',
"      \ 'xhtml': 'html',
"      \ 'zsh': 'sh'
"      \ }
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       自动补全 'SirVer/ultisnips' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"            "代码片段补全快捷键
"let g:UltiSnipsJumpForwardTrigger="<c-n>"       "代码片段参数移动(下一个)
let g:UltiSnipsJumpBackwardTrigger="<c-p>"      "代码片段参数移动(上一个)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           c/c++辅助 'WolfgangMehner/vim-plugins' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"把热键里的<leader> "\" 改成 "."
"let g:C_MapLeader='.'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           css 颜色可视化配置(调色板) 'Rykka/colorv.vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"在哪些类型的文件上高亮
let g:colorv_preview_ftype = 'css,html,javascript,htm,less'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           C/C++类、结构自动补全 'vim-scripts/OmniCppComplete'插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"添加常用的tags路径
 set tags+=$MYVIMFILES/bundle/OmniCppComplete/doc/tags
set nocp
set completeopt=menu,menuone  
let OmniCpp_MayCompleteDot=1     "  打开  . 操作符
let OmniCpp_MayCompleteArrow=1  "打开 -> 操作符
let OmniCpp_MayCompleteScope=1  "打开 :: 操作符
let OmniCpp_NamespaceSearch=1   "打开命名空间
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1  "打开显示函数原型
let OmniCpp_SelectFirstItem = 2 "自动弹出时自动跳至第一个
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           自动保存'vim-scripts/vim-auto-save'插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:auto_save = 1  "enable AutoSave on Vim startup
"let g:auto_save_no_updatetime = 1  "do not change the 'updatetime' option
"let g:auto_save_in_insert_mode = 0  "do not save while in insert mode
"let g:auto_save_silent = 1  "do not display the auto-save notification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       日历 'mattn/calendar-vim' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"默认打开日历
"au VimEnter * Calendar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       gvim 启动显示画面 'mhinz/vim-startify' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置 gvim 期待时的顶部显示的画面
"let g:startify_custom_header = [
"            \ '              __      ___            ______ ____',
"            \ '              \ \    / (_)           |____  |___ \',
"            \ '               \ \  / / _ _ __ ___       / /  __) |',
"            \ '                \ \/ / | | ''_ ` _ \     / /  |__ <',
"            \ '                 \  /  | | | | | | |   / /   ___) |',
"            \ '                  \/   |_|_| |_| |_|  /_(_) |____/',
"            \ '',
"            \ '',
"            \ ]
"
""设置启动 gvim 默认打开显示画面(0:表示启动，1：表示不启动)
"let g:startify_disable_at_vimenter = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       多光标 'terryma/vim-multiple-cursors' 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:multi_cursor_use_default_mapping=1
" Default mapping
"let g:multi_cursor_next_key='<C-m>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
"let g:multi_cursor_start_key='<F4>'
"" Default highlighting (see help :highlight and help :highlight-link)
"highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
"highlight link multiple_cursors_visual Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
