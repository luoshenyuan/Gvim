(注意：如非特别说明，否则都是在 windows 系统设置的)
1、 ctags  是安装代码浏览器 'majutsushi/tagbar' 插件需要的，把它解压，取出 ctags.exe 文件放到 runtimepath 存在的路径中，在 win32/win64系统下，可以直接复制到 C:\Windows 即可。
2、 git  是使用插件管理器 'Shougo/neobundle.vim' 所必须的环境支持，直接运行即可。
3、 gvim74_for_lua  是安装自动补全 'Shougo/neocomplete.vim' 插件所必须的 lua  语言支持，把它解压，放到 vim 的安装目录下的 vim74 文件夹(如：D:\SoftWare_Install\Vim_Install\Vim\vim74)中，代替原来的 vim.exe 和 gvim.exe。
4、 Python  是使用插件管理器 'Shougo/neobundle.vim' 所必须的环境支持,直接解压运行即可。
5、 LuaForWindows  为 Windows 系统下提供了 Lua 脚本语言的开发和运行环境。
6、 lua51_dll  是安装自动补全 'Shougo/neocomplete.vim' 插件所必须的 lua 语言动态链接库支持，把它解压，取出 lua51.dll 文件，把它放在跟gvim.exe 相同的目录下。
7、 vim_installer  是经过编译的，能够支持 lua 的 Gvim74.exe 如果不把 gvim74_for_lua 代替原来的 gvim.exe和vim.exe ，可以直接安装这个即可实现对 lua 支持的vim/gvim
9、 vimproc_win32_dll 安装 'Shougo/vimproc.vim' 插件时需要的，因为在 windows 下要编译 vimproc.vim 文件需要 Linux 环境才能 make 编译，所以可以把它解压，取出 vimproc_win32.dll 文件，放到 vimproc/autoload/ 里即可。
