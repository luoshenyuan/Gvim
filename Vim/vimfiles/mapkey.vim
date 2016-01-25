""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       F2 gvim全屏/正常模式切换
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <F2> <Esc>:call FullScreen()<CR>
let w:full_screen=0
func! FullScreen()
    if w:full_screen==1
        let w:full_screen=0
        :simalt ~R
    else
        :simalt ~X
        let w:full_screen=1
    endif
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"编译，运行，调试
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"按 F5 编译
map <F5> :call Compile()<CR>
func! Compile()
    exec "w"
    "C 程序
    if &filetype=='c'
        if has("win32") || has("win64")
            exec "!gcc % -g -o %<.exe"
        else
            exec "!gcc % -g -o %<.o"
        endif
        "C++ 程序
    elseif &filetype=='cpp'
        if has("win32") || has("win64")
            exec "!gcc % -g -o %<.exe"
        else
            exec "!gcc % -g -o %<.o"
        endif
    endif
endfunc


"按 F6 运行
map <F6> :call Run()<CR>
func! Run()
    if has("win32") || has("win64")
        "在 windows 下要去掉 ./ 这两字符
        exec "! %<.exe"
    else
        exec "! ./%<.o"
    endif
    exec'pause'
endfunc


"按 F7 调试
"定义 Debug函数，用来调试小程序
map <F7> :call Debug()<CR>
func! Debug()
    exec "w"
    "C 程序
    if &filetype=='c'
        if has("win32") || has("win64")
            exec "!rm %<.exe"
            exec "!gcc % -g -o %<.exe"
            exec "gdb %<.exe"
        else
            exec "!rm %<.o"
            exec "!gcc % -g -o %<.o"
            exec "gdb %<.o"
        endif
        "C++ 程序
    elseif &filetype=='cpp'
        if has("win32") || has("win64")
            exec "!rm %<.exe"
            exec "!gcc % -g -o %<.exe"
            exec "gdb %<.exe"
        else
            exec "!rm %<.o"
            exec "!gcc % -g -o %<.o"
            exec "gdb %<.o"
        endif
        "Java 程序
        "elseif &filetype=='java'
        "	exec"rm %<.class"
        "	exec"!javac %"
        "	exec"!jdb %<"
    endif
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       粘贴/复制
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Alt-x 剪切
map <A-x> "+x
"Alt-c 复制
map <A-c> "+y
"Alt-x 粘贴
map <A-v> "+p
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       窗口
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"窗口切换(光标在窗口内上下左右跳跃)('inoremap' 表示设定的快捷键不再映射到其他的快捷方式中)
if has("gui_gtk2")
    "有 bug 存在
    "map <A-c-k> <c-w>k
    "map <A-c-j> <c-w>j
    "map <A-c-h> <c-w>h
    "map <A-c-l> <c-w>l
elseif has("gui_macvim")

    map <c-k> <c-w>k
    map <c-j> <c-w>j
    map <c-h> <c-w>h
    map <c-l> <c-w>l
elseif has("gui_win32")
    map <c-k> <c-w>k
    map <c-j> <c-w>j
    map <c-h> <c-w>h
    map <c-l> <c-w>l
end

"窗口变换大小(窗口高度、宽度增加/减小）
"使窗口上下最小化:(ctrl + w) 1_
"使窗口上下最大化:(crtl + w) _
"使窗口向左最小化:(crtl +w ) 1|
"使窗口向右最大化:(crtl + w) |

"高度变大
map <A-k> <c-w>+
"高度变小
map <A-j> <c-w>-
"宽度变大
map <A-l> <c-w>>
"宽度变小
map <A-h> <c-w><
"窗口最大化
map <C-CR>  <c-w><Bar><Esc><c-w>_


"窗口控制
"两个窗口横屏变竖屏
map <C-S-Up> <c-w>H
"两个窗口竖屏变横屏
map <C-S-Down> <c-w>K
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"使用 '==' 对代码进行格式化(即进行缩进/对齐格式化)
map == gg<c-v>G=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           折叠
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"用空格键来开关折叠
 nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"在输入模式下移动光标，彻底抛弃方向键(该设置与上面的窗口切换有冲突，想要用的话，必须把上面的窗口的快捷键映射注释了，或者修改)
""inoremap <C-h> <left>
""inoremap <C-j> <C-o>gj
""inoremap <C-k> <C-o>gk
""inoremap <C-l> <Right>
""inoremap <M-h> <C-o>b
""inoremap <M-l> <C-o>w
""inoremap <C-a> <Home>
""inoremap <C-e> <End>







"vim窗口操作
"1. 新建窗口:（crtl + w） n
"2. 分割窗口:(ctrl + w) s
"3. 垂直分割窗口:(ctrl + w) v
"4. 关闭当前窗口:(ctrl + w) c
"5. 关闭其它窗口:(ctrl + w) o
"6. 向上轮换窗口:(ctrl + w) R
"7. 向下轮换窗口:(crtl + w) r
"8. 使窗口等宽:(crtl + w) =
"9. 使窗口最小化:(ctrl + w) 1_
"10. 使窗口最大化:(crtl + w) _
"11. 使窗口向左最小化:(crtl +w ) 1|
"12. 使窗口向右最大化:(crtl + w) |
"13. 将缓冲区分割到一个窗口中:(crtl + w) ^
"14. 两个窗内容切换:(crtl + w) x
"15. 两个窗横屏变竖屏:(crtl + w) H
"16. 两个窗竖屏变横屏:(crtl + w) K









