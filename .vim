"====================================
"    FileName: .vimrc
"    Author:   DejaSuen
"    Version:  1.0.0
"    Date: 2016-02-02
"====================================


"====================================
"    Vim基本配置
"====================================

set nocompatible                                " 关闭兼容模式
set backspace=indent,eol,start                  " 配置backspace键工作方式
set number                                      " 显示行号
set ruler                                       " 右下角显示光标位置的状态行
set rulerformat=%35(%=%r%Y\|%{&ff}\|%{strlen(&fenc)?&fenc:'none'}\ %m\ %l/%L%)
set showcmd                                     " 在状态栏显示正在输入的命令
set history=1000                                " 设置历史记录条数
set nobackup                                    " 不生成备份文件
set noswapfile                                  " 不生成交换文件
set cursorline                                  " 突出显示当前行
set cursorcolumn                                " 突出显示当前列
set showmatch                                   " 设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set autoindent                                  " 设置自动对齐
set cindent                                     " 使用Ｃ样式的缩进
set ignorecase                                  " 设置搜索时忽略大小写
set mouse=a                                     " 设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set t_Co=256                                    " 指定配色方案为256色
set tabstop=4                                   " 设置Tab宽度
set shiftwidth=4                                " 设置自动对齐空格数
set expandtab                                   " 将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set encoding=utf-8                              " 设置编码方式
set termencoding=utf-8                          " Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
                                                " 自动判断编码时 依次尝试一下编码
set fileformat=unix                             " 文件格式为unix
set laststatus=2                                " 开启状态栏信息
"set cmdheight=2                                 " 命令行的高度，默认为1，这里设为2
"set softtabstop=4                              " 设置按退格键时可以一次删除4个空格
"set smarttab                                   " 设置按退格键时可以一次删除4个空格
"set nowrap                                     " 当一行文字很长时取消换行

" 配色方案
set background=dark
color Tomorrow-Night-Bright                     " （需要添加主题到系统)

syntax enable                                   " 开启语法高亮功能
syntax on                                       " 开启文件类型侦测
filetype off                                    " 检测文件类型(使用vundle时需要关闭)
filetype indent on                              " 针对不同的文件采用不同的缩进方式
filetype plugin on                              " 针对不同的文件类型加载对应的插件

" 使用vundle,管理插件
filetype plugin indent on                       " 打开插件

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" N3xt Bundles
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'plasticboy/vim-markdown'

" 快速定位
Bundle 'Lokaltog/vim-easymotion'

" 文件树
Bundle 'The-NERD-tree'

" 远程编辑
Bundle 'netrw.vim'

" git
Bundle 'fugitive.vim'

" 成对符号补齐
Bundle 'https://github.com/Raimondi/delimitMate.git'

" 程序解析边栏
Bundle 'Tagbar'
nmap <F8> :TagbarToggle<CR>
 
" 自动补齐
if has("ctag")
    Bundle 'taglist.vim'
    if filereadable("tags")
        set tags=tags
    endif
endif

if has("cscope")
    Bundle 'https://github.com/vim-scripts/cscope.vim'
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

" Powerline 定制状态栏
if filereadable($HOME."/.vim/vim-pig/powerline-vimrc")
    source ~/.vim/vim-pig/powerline-vimrc
endif

" choose IDE U need

" PHP IDE
if filereadable($HOME."/.vim/vim-pig/php-vimrc")
    source ~/.vim/vim-pig/php-vimrc
endif

" Python IDE
if filereadable($HOME."/.vim/vim-pig/python-vimrc")
    source ~/.vim/vim-pig/python-vimrc
endif

" Alternative
if filereadable($HOME."/.vim/vim-pig/vimrc-alternative")
    source ~/.vim/vim-pig/vimrc-alternative
endif

"
" Brief help of vundle
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
