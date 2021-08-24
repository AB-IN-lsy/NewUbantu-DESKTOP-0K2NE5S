"配置clang_complete"
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_library_path='/usr/lib/llvm-10/lib/'
let g:neocomplcache_enable_at_startup = 1
set nocompatible              "这是必需的"
filetype off                  "这是必需的"

"配置YCM在此设置运行时路径"
set rtp+=~/.vim/bundle/Vundle

"vundle初始化"
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
call vundle#end()            "这是必需的"
filetype plugin indent on    "这是必需的"

hi MatchParen ctermbg=Red guibg=lightblue

"格式化代码"
cclose
set cmdheight=2
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cursorline
set expandtab
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O



"配置solarized"
set background=dark
syntax enable
colorscheme solarized
set t_Co=256
syntax on


" 当新建 .cpp文件时自动调用SetComment 函数
autocmd BufNewFile *.cpp exec ":call SetComment()"
" 加入注释
func SetComment()
    call setline(1,"/*")
    call append(line("."),   "*  @Copyright (C) ".strftime("%Y")." NEFU AB_IN. All rights reserved.")
    call append(line(".")+1, "*  @FileName:".expand("%:t"))
    call append(line(".")+2, "*  @Author:NEFU AB_IN")
    call append(line(".")+3, "*  @Date:".strftime("%Y.%m.%d"))
    call append(line(".")+4, "*  @Description:https://blog.csdn.net/qq_45859188")
    call append(line(".")+5, "*/")
    call append(line(".")+6, "")
    call append(line(".")+7,  "#include <bits/stdc++.h>")
    call append(line(".")+8, "using namespace std;")
    call append(line(".")+9, "#define LL                    long long")
    call append(line(".")+10, "#define MP                    make_pair")
    call append(line(".")+11, "#define SZ(X)                 ((int)(X).size())")
    call append(line(".")+12, "#define IOS                   ios::sync_with_stdio(false);cin.tie(0);cout.tie(0)")
    call append(line(".")+13, "typedef pair<int , int>       PII;")
    call append(line(".")+14, "")
    call append(line(".")+15, "int main(){")
    call append(line(".")+16, "    IOS;")
    call append(line(".")+17, "     ")
    call append(line(".")+18, "    return 0;")
    call append(line(".")+19, "}")
endfunc

"设置透明"
hi Normal guibg=NONE ctermbg=NONE

