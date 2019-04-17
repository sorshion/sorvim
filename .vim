"====================================
"    FileName: .vimrc
"    Author:   sorshion 
"    Version:  1.1.0
"    Date: 2019-04-17
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
set mouse-=a                                    " 设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
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

syntax enable                                   " 开启语法高亮功能
syntax on                                       " 开启文件类型侦测
filetype off                                    " 检测文件类型(使用vundle时需要关闭)
filetype indent on                              " 针对不同的文件采用不同的缩进方式
filetype plugin on                              " 针对不同的文件类型加载对应的插件