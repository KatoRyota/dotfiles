" 前処理 {
    " Vimの内部エンコーディング。
    set encoding=utf-8
    " ターミナルのエンコーディング
    set termencoding=utf-8
    " 基本文字コード
    set fileencoding=utf-8
    " 文字コード自動判別(優先順)
    set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp,
    " 基本ファイルフォーマット
    set fileformat=unix
    " ファイルフォーマット自動判別(優先順)
    set fileformats=unix,dos,mac
    " このファイル(vim script)のエンコード。
    scriptencoding utf-8
    autocmd!
" }
" 基本設定 {
    " 未整理 {
        " 保存されていないファイルがあるとき、終了前に保存確認
        set confirm
        " 保存されていないファイルがあるときでも、保存しないで他のファイルを表示
        set hidden
        " 外部でファイルに変更がされた場合は読みなおす
        set autoread
        " ファイル保存時の場所を、開いているファイルが有る場所に設定
        set browsedir=buffer
        " エラー音抑止(gvimはgvimrcで指定)
        set noerrorbells
        " ビジュアルベル
        set visualbell
        " ビープ音抑止(gvimはgvimrcで指定)。前時代的スクリーンベルを無効化
        set t_vb=
        " コマンド、検索履歴数
        set history=100
        set t_Co=256
    " }
    " スワップファイル／バックアップファイル {
        " backupファイルを作らない。前時代的すぎなので無効化。
        set nobackup
        " backupファイルを作らない。前時代的すぎなので無効化。
        set nowritebackup
        " backupファイルディレクトリ
        set backupdir=~/.vim/backup
        " swapファイルを作らない。前時代的すぎなので無効化。
        set noswapfile
        " swapファイルディレクトリ
        set directory=~/.vim/swap
    " }
    " 編集 {
        " バックスペースでインデントや改行を削除可能
        set backspace=indent,eol,start
        " ページアップ・ダウン時にカーソル位置を移動しない
        set nostartofline
        " 左右移動で行跨ぎ可能
        "set whichwrap=b,s,h,l,<,>,[,]
        " OSクリップボード使用
        set clipboard=unnamed
        " Windowsで"/"を有効
        set shellslash
        " 矩形選択でカーソル位置の制限を解除
        set virtualedit& virtualedit+=block
        " 補完の際の大文字小文字の区別しない
        set infercase
        " ファイル名補完有効
        set wildmenu
        " 補完モード
        set wildmode=list:longest,full
    " }
    " QuickFixリスト {
        " QuickFixリストのエラーフォーマット
        " set errorformat& errorformat+=%f\|%l\ col\ %c\|\ %m
    " }
    " ステータスライン {
        " ステータスライン表示モード。常に表示する。
        set laststatus=2
        " 入力中のコマンドをステータスラインに表示
        set showcmd
    " }
    " コマンドライン {
        " コマンドラインの高さ (gvimはgvimrcで指定)
        set cmdheight=3
    " }
    " スクロール {
        " 左右スクロール時の視界を確保
        set sidescrolloff=5
        " 左右スクロールは一文字づつ行う
        set sidescroll=1
        " 上下n行の視界を確保
        set scrolloff=0
    " }
    " テキスト部分の表示 {
        " 長いテキストの折り返し
        set wrap
        " テキストの最大幅を無効にする。自動的に改行が入るのを無効化。
        set textwidth=0
        " 全角記号（○、□等）の位置ズレ対応
        set ambiwidth=double
        " 不可視文字を表示
        set list
        " 不可視文字の置き換え設定
        set listchars=eol:\|,tab:>-,trail:-,extends:>,precedes:<,nbsp:%
        " 表示できない文字を16進数で表示
        set display=uhex
        " 対応括弧に<と>のペアを追加
        " set matchpairs& matchpairs+=<:>
        " 括弧の対応表示
        set showmatch
        " 括弧の対応表示時間[1/10秒]
        set matchtime=1
        " カーソル行をハイライト
        set cursorline
        " n列目に色を付ける
        set colorcolumn=120
        " "0"で始まる数値を、8進数として扱わないようにする
        set nrformats-=octal
    " }
    " テキスト部分以外の表示 {
        " 行番号の表示
        set number
        " 右下に行・列の番号を表示
        set ruler
        " タイトル表示
        set title
    " }
    " 検索／置換 {
        " 大/小文字無視
        " set ignorecase
        " ただし大文字を含む検索の場合は大/小文字有効
        " set smartcase
        " インクリメンタルサーチ有効
        " set incsearch
        " 検索結果ハイライト表示
        set hlsearch
        " 検索をファイルの先頭へループしない。
        set nowrapscan
        " 置換の時 g オプションをデフォルトで有効
        " set gdefault
        " :grep(外部grep)の設定
        set grepprg=grep\ -anHP\ --color=always\ --exclude\ *.class
        " 内部grepの検索対象から除外
        set wildignore=*.jpg,*.gif,*.png,*.tif,
                      \*.pdf,
                      \*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx,
                      \*.o,*.obj,*.pyc,*.so,*.class,
                      \*.jar,*.war,*.ear,
                      \*.dll,*.apk,*.asta,
                      \*.zip,*.rar,*.gz,
                      \*/.git/*,
                      \*/python2.6/*,
                      \*/p_auth-api/bin/*,
                      \*/perl-lib/*,
    " }
    " 折り畳み {
        " 折りたたみ方式
        set foldmethod=manual
        " 折りたたみ領域の表示幅(カラム数)
        set foldcolumn=4
    " }
    " タブ {
        " タブ入力を複数の空白入力に置き換える
        set expandtab
        " 画面上でタブ文字が占める幅
        set tabstop=4
        " 自動インデントでずれる幅
        set shiftwidth=4
        " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
        set softtabstop=4
        " 行頭の<Tab>は"shiftwidth"、それ以外は"tabstop"
        set smarttab
    " }
    " インデント {
        " 改行時に前の行のインデントを継続する
        set autoindent
        " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
        set nosmartindent
        " C言語ファイルにインデントなし
        set nocindent
        " インデントをshiftwidthの倍数に丸める
        set shiftround
    " }
    " ctag {
        nnoremap <C-]> g<C-]>
    " }
    " 閉じ括弧 {
        function! s:insert_parentheses(mode)
            if a:mode == 1
                inoremap {} {}<Left>
                inoremap [] []<Left>
                inoremap () ()<Left>
                inoremap "" ""<Left>
                inoremap '' ''<Left>
                inoremap <> <><Left>
            elseif a:mode == 2
                inoremap { {}<LEFT>
                inoremap [ []<LEFT>
                inoremap ( ()<LEFT>
                inoremap " ""<LEFT>
                inoremap ' ''<LEFT>
                inoremap < <><LEFT>
            endif
        endfunction

        call s:insert_parentheses(0)
    " }}
    " undo履歴クリア関数 {
        function! s:clear_undo() abort
            let old_undolevels = &undolevels
            setlocal undolevels=-1
            execute "normal! a \<BS>\<Esc>"
            let &l:undolevels = old_undolevels
            execute "w"
        endfunction

        command! -bar ClearUndo call s:clear_undo()
        nnoremap <Space>cu :<C-u>ClearUndo<CR>
    " }
    " ファイルタイプ 判定 {
        autocmd BufReadPost,FileReadPost *.py    setfiletype python
        autocmd BufReadPost,FileReadPost *.php   setfiletype php
        autocmd BufReadPost,FileReadPost *.tpl   setfiletype smarty
        autocmd BufReadPost,FileReadPost *.phtml setfiletype smarty
        autocmd BufReadPost,FileReadPost *.html  setfiletype html
        autocmd BufReadPost,FileReadPost *.java  setfiletype java
        autocmd BufReadPost,FileReadPost *.jsp   setfiletype jsp
        autocmd BufReadPost,FileReadPost *.inc   setfiletype jsp
        autocmd BufReadPost,FileReadPost *.md    setfiletype markdown
        autocmd BufReadPost,FileReadPost *.vimrc setfiletype vim
    " }
    " 対応する括弧 for matchit.zip {{{
        function! s:set_match_words()
            let b:match_words = "\<if\>:\<else\>,\<head.*:\</head\>,\<body.*:\</body\>," .
                                \ "\<title.*:\</title\>,\<html.*:\</html\>,\<form.*:\</form\>," .
                                \ "\<table.*:\</table\>,\<thead.*:\</thead\>," .
                                \ "\<tbody.*:\</tbody\>,\<tr.*:\</tr\>,\<td.*:\</td\>," .
                                \ "\<div.*:\</div\>,\<label.*:\</label\>," .
                                \ "\<style.*:\</style\>,\<nav.*:\</nav\>,\<li.*:\</li\>," .
                                \ "\<ol.*:\</ol\>,\<select.*:\</select\>," .
                                \ "\<script.*:\</script\>,\<a.*:\</a\>," .
                                \ &matchpairs . ","
        endfunction

        autocmd BufReadPost,FileReadPost * call s:set_match_words()
    " }}}
    " ウィンドウ {
        nnoremap ,wa <ESC><ESC> <C-w>h <C-w>h <C-w>h <C-w>l 100<C-w>\| <C-w>h 45<C-w>\| <C-w>l <C-w>l 34<C-w>\| <C-w>h
    " }
" }
" プラグイン {
    " 前処理 {
        " Note: Skip initialization for vim-tiny or vim-small.
        if 0 | endif
        if has('vim_starting')
            if &compatible
                set nocompatible               " Be iMproved
            endif
            " neobundle をインストールしていない場合は自動インストール
            if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
                echo "install neobundle..."
                " vim からコマンド呼び出しているだけ neobundle.vim のクローン
                :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
            endif
            " runtimepath の追加は必須
            set runtimepath+=~/.vim/bundle/neobundle.vim/
        endif
        " Use git protocol.
        " let g:neobundle#types#git#default_protocol = 'git'
        call neobundle#begin(expand('~/.vim/bundle'))
        " Let neobundle manage neobundle
        NeoBundleFetch 'Shougo/neobundle.vim'
        " Use neobundle standard recipes.
        NeoBundle 'Shougo/neobundle-vim-recipes', {'force' : 1}
    " }
    " 一覧 {
        "for common
        NeoBundle 'nanotech/jellybeans.vim'
        NeoBundle 'Shougo/vimproc.vim'
        NeoBundleLazy 'Shougo/unite.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/neomru.vim', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/tabpagebuffer.vim', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/unite-outline', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/vimfiler.vim', {'depends' : ["Shougo/unite.vim"]}
        NeoBundleLazy 'Shougo/neosnippet-snippets'
        NeoBundleLazy 'Shougo/neosnippet.vim', {'depends' : ['Shougo/neocomplete.vim', 'Shougo/neosnippet-snippets'] }
        NeoBundleLazy 'Shougo/neocomplete.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/vimshell.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'tsukkee/unite-tag'
        NeoBundleLazy 'majutsushi/tagbar'
        NeoBundleFetch 'jszakmeister/markdown2ctags'
        NeoBundleLazy 'tpope/vim-surround'
        NeoBundleLazy 'vim-scripts/matchit.zip'
        "NeoBundleLazy 'scrooloose/syntastic'
        NeoBundle 'osyo-manga/vim-brightest'

        "for markdown
        NeoBundleLazy 'godlygeek/tabular'
        NeoBundleLazy 'plasticboy/vim-markdown', {'depends' : ['godlygeek/tabular'] }

        "for python
        NeoBundleLazy 'davidhalter/jedi-vim'
        NeoBundleLazy 'jmcantrell/vim-virtualenv'
        "NeoBundleLazy 'lambdalisue/vim-django-support'

        "for html
        NeoBundleLazy 'othree/html5.vim'
        "NeoBundleLazy 'mattn/emmet-vim'

        "for css
        NeoBundleLazy 'hail2u/vim-css3-syntax'

        "for javascript
        NeoBundleLazy 'pangloss/vim-javascript'
    " }
    " 後処理 {
        call neobundle#end()
        filetype plugin indent on       " Required!
        NeoBundleCheck
    " }
" }

function! s:plugin_constants()
    let self = {}
    let self.data = {
        \   'jellybeans' : ['NeoBundle', 'nanotech/jellybeans.vim'],
        \ }

    return self
endfunction

function! s:plugin_installer()
    let self = {}

    function! self.pre_install() abort
        " Note: Skip initialization for vim-tiny or vim-small.
        if 0 | endif
        if has('vim_starting')
            if &compatible
                set nocompatible               " Be iMproved
            endif
            " neobundle をインストールしていない場合は自動インストール
            if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
                echo "install neobundle..."
                " vim からコマンド呼び出しているだけ neobundle.vim のクローン
                call system("git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
            endif
            " runtimepath の追加は必須
            set runtimepath+=~/.vim/bundle/neobundle.vim/
        endif
        " Use git protocol.
        " let g:neobundle#types#git#default_protocol = 'git'
        call neobundle#begin(expand('~/.vim/bundle'))
    endfunction

    function! self.install() abort
        for key in keys(s:plugin_constants().data)
            if s:plugin_constants().data[key][0] == 'NeoBundleLazy'
                NeoBundleLazy s:plugin_constants().data[key][1] get(s:, 'plugin_constants().data[key][2]', {})
            elseif s:plugin_constants().data[key][0] == 'NeoBundleFetch'
                NeoBundleFetch s:plugin_constants().data[key][1] get(s:, 'plugin_constants().data[key][2]', {})
            else s:plugin_constants().data[key][0] == 'NeoBundle'
                NeoBundle s:plugin_constants().data[key][1] get(s:, 'plugin_constants().data[key][2]', {})
            endif
        endfor
    endfunction

    function! self.post_install() abort
        call neobundle#end()
        filetype plugin indent on       " Required!
        NeoBundleCheck
    endfunction

    function! self.execute() abort
        call self.pre_install()
        call self.install()
        call self.post_install()
    endfunction

    return self
endfunction

"TODO : 実装が完了したらコメントを外す
"call s:plugin_installer().execute()

function! s:base_class(name)
    let self = {}

    let self.name       = a:name
    let self.initialize = {}

    function! self.get_name()
        return self.name
    endfunction

    function! self.initialize.mapping_key()
    endfunction

    function! self.initialize.difine_command()
    endfunction

    function! self.initialize.execute()
        call self.mapping_key()
        call self.difine_command()
    endfunction

    return self
endfunction

function! s:get_class_name(instance)
    return a:instance.get_name()
endfunction

function! s:initialize(instance)
    call a:instance.initialize.execute(a:instance)
endfunction

function! s:get_noextention_name(plugin_name)
    let str = substitute(a:plugin_name, '\([^.]*\)\..*', '\1', 'g')
    let str = substitute(str, '-', '_', 'g')
    return str
endfunction

let s:plugin_obj_list = []

"--------------------------------------------------
" 下記のようにクラスを作成して『s:plugin_obj_list』に追加する。
"--------------------------------------------------

"let s:plugin_name = '${plugin_name}'
"let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)
"
"function! s:{s:plugin_noextention_name}(name)
"    let self = s:base_class(a:name)
"    let self.base = deepcopy(self)
"
"    function! self.initialize.mapping_key() abort
"    endfunction
"
"    function! self.initialize.difine_command() abort
"    endfunction
"
"    function! self.initialize.execute(self) abort
"        call call(a:self.base.initialize.execute, [], self)
"
"        "TODO : Please implementation
"    endfunction
"
"    function! s:configure_{s:plugin_noextention_name}() abort
"    endfunction
"
"    return self
"endfunction
"
"call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))


" vimproc.vim {
let s:plugin_name = 'vimproc.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'build' : {
            \       'windows' : 'tools\\update-dll-mingw',
            \       'cygwin' : 'make -f make_cygwin.mak',
            \       'mac' : 'make -f make_mac.mak',
            \       'linux' : 'make',
            \       'unix' : 'gmake',
            \   }
            \ })
    endfunction

    function! s:configure_vimproc() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" unite.vim {
let s:plugin_name = 'unite.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
        nnoremap ,b :<C-u>Unite buffer<CR>
        nnoremap ,m :<C-u>Unite file_mru<CR>

        nnoremap ,r :<C-u>Unite register<CR>
        nnoremap ,y :<C-u>Unite history/yank<CR>

        nnoremap ,lc :<C-u>UniteWithBufferDir file<CR>
        nnoremap ,lf :<C-u>Unite file:
        nnoremap ,lr :<C-u>Unite file_rec/async:

        nnoremap ,v :<C-u>UniteVimGrep<Space>
        nnoremap ,f :<C-u>UniteFind<Space>

        nnoremap ,av :<C-u>UniteResume unite_vimgrep<CR>
        nnoremap ,af :<C-u>UniteResume unite_find<CR>

        nnoremap ,] :<C-u>UniteWithCursorWord -immediately tag<CR>
        nnoremap ,t :<C-u>Unite jump<CR>
    endfunction



    function! s:unite_vimgrep(pattern, directory, ...) abort
        "a:1には拡張子を指定すること (例: *.py)
        if exists('a:1')
            let extension = a:1

        else
            let extension = '*'
        endif

        if a:directory == '%'
            let search_path = '%'

        elseif a:directory == '.'
            let search_path = getcwd() . '/**/' . extension

        else
            let search_path = a:directory . '/**/' . extension

        endif

        let pattern = substitute(a:pattern, '\ ', '\\ ', 'g')
        let pattern = substitute(pattern, '\', '\\\', 'g')

        execute 'Unite -buffer-name=unite_vimgrep vimgrep:' . search_path . ':' . pattern
    endfunction

    function! s:unite_find(file_name) abort
        if !exists('a:file_name')
            throw '引数にfile_nameが指定されていません。'
        endif

        let file_name = '-iname ' . '''' . a:file_name . ''''

        execute 'Unite -buffer-name=unite_find find:' . getcwd() . ':' . substitute(file_name, '\ ', '\\ ', 'g')
    endfunction

    function! s:unite_file(file_path) abort
        if !exists('a:file_path')
            throw '引数にfile_pathが指定されていません。'
        endif

        execute 'Unite file:' . substitute(a:file_path, '\ ', '\\ ', 'g')
    endfunction

    function! s:unite_file_rec_async(dir_path) abort
        if !exists('a:dir_path')
            throw '引数にdir_pathが指定されていません。'
        endif

        execute 'Unite file_rec/async:' . substitute(a:dir_path, '\ ', '\\ ', 'g')
    endfunction

    function! self.initialize.difine_command() abort
        command! -bar -nargs=+ UniteVimGrep call s:unite_vimgrep(<f-args>)
        command! -bar -nargs=1 UniteFind call s:unite_find(<f-args>)
        command! -bar -nargs=1 UniteFile call s:unite_file(<f-args>)
        command! -bar -nargs=1 UniteFileRecAsync call s:unite_file_rec_async(<f-args>)
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'commands' : [
            \           'Unite',
            \           'UniteWithCursorWord',
            \           'UniteWithInput',
            \       ]
            \   }
            \ })
    endfunction

    function! s:configure_unite() abort
        "let g:unite_source_file_mru_long_limit = 6000
        "let g:unite_source_file_mru_limit = 300
        "let g:unite_source_directory_mru_long_limit = 6000
        "let g:unite_prompt = '❯ '
        "let g:unite_kind_jump_list_after_jump_scroll=0
        "let g:unite_source_rec_min_cache_files = 1000
        "let g:unite_source_rec_max_cache_files = 5000

        let g:unite_enable_start_insert = 0
        let g:unite_source_history_yank_enable = 1
        let g:neomru#time_format = "(%Y/%m/%d %H:%M:%S) "

        call unite#custom_source('buffer', 'sorters', 'sorter_word')
        call unite#custom_source('file_mru', 'sorters', 'sorter_default')
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" neomru {
let s:plugin_name = 'neomru.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'unite_sources' : [
            \           'file_mru',
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_neomru() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" tabpagebuffer {
let s:plugin_name = 'tabpagebuffer.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'unite_sources' : [
            \           'buffer_tab',
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_tabpagebuffer() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" unite-outline {
let s:plugin_name = 'unite-outline'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'unite_sources' : [
            \           'outline',
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_unite_outline() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" vimshell {
let s:plugin_name = 'vimshell.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'commands' : [
            \           {
            \               'name' : 'VimShell',
            \               'complete' : 'customlist,vimshell#complete'
            \           },
            \           'VimShellExecute',
            \           'VimShellInteractive',
            \           'VimShellTerminal',
            \           'VimShellPop'
            \       ]
            \   }
            \ })
    endfunction

    function! s:configure_vimshell() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" neosnippet {
let s:plugin_name = 'neosnippet.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
        imap <C-k> <Plug>(neosnippet_expand_or_jump)
        smap <C-k> <Plug>(neosnippet_expand_or_jump)
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'on_source': ['neocomplete.vim'],
            \   }
            \ })
    endfunction

    function! s:configure_neosnippet() abort
        let g:neosnippet#data_directory = expand('~/.vim/etc/.cache/neosnippet')
        let g:neosnippet#snippets_directory = expand('~/.vim/bundle/vim-snippets/snippets')
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" neocomplete {
let s:plugin_name = 'neocomplete.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! s:neocomplete_my_cr_function()
        " return neocomplete#close_popup() . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    endfunction

    function! self.initialize.mapping_key() abort
        " Plugin key-mappings.
        inoremap <expr><C-g>     neocomplete#undo_completion()
        inoremap <expr><C-l>     neocomplete#complete_common_string()

        " Recommended key-mappings.
        " <CR>: close popup and save indent.
        inoremap <silent> <CR> <C-r>=<SID>neocomplete_my_cr_function()<CR>
        " <TAB>: completion.
        inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
        " <C-h>, <BS>: close popup and delete backword char.
        inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
        inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
        inoremap <expr><C-y>  neocomplete#close_popup()
        inoremap <expr><C-e>  neocomplete#cancel_popup()
        " Close popup by <Space>.
        " inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

        " For smart TAB completion.
        " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
        "         \ <SID>check_back_space() ? "\<TAB>" :
        "         \ neocomplete#start_manual_complete()
        "
        " function! s:check_back_space() "{{{
        "   let col = col('.') - 1
        "   return !col || getline('.')[col - 1]  =~ '\s'
        " endfunction"}}}
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'insert' : 1,
            \   }
            \ })
    endfunction

    function! s:configure_neocomplete() abort
        " Note: This option must set it in .vimrc(_vimrc).
        " NOT IN .gvimrc(_gvimrc)!
        " Disable AutoComplPop.
        let g:acp_enableAtStartup = 0
        " Use neocomplete.
        let g:neocomplete#enable_at_startup = 1
        " Use smartcase.
        let g:neocomplete#enable_smart_case = 1
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


        " AutoComplPop like behavior.
        " let g:neocomplete#enable_auto_select = 1

        " Shell like behavior(not recommended).
        " set completeopt+=longest
        " let g:neocomplete#enable_auto_select = 1
        " let g:neocomplete#disable_auto_complete = 1
        " inoremap <expr><TAB>  pumvisible() ? "\<Down>" :
        " \ neocomplete#start_manual_complete()

        " Enable heavy omni completion.
        if !exists('g:neocomplete#sources#omni#input_patterns')
            let g:neocomplete#sources#omni#input_patterns = {}
        endif
        if !exists('g:neocomplete#force_omni_input_patterns')
            let g:neocomplete#force_omni_input_patterns = {}
        endif
        " let g:neocomplete#sources#omni#input_patterns.php =
        "   \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
        " let g:neocomplete#sources#omni#input_patterns.c =
        "   \ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
        " let g:neocomplete#sources#omni#input_patterns.cpp =
        "   \ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

        " For perlomni.vim setting.
        " https://github.com/c9s/perlomni.vim
        let g:neocomplete#sources#omni#input_patterns.perl =
                \ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

        " Enable omni completion.
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        " jedi-vimを使う場合はoff
        "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        "autocmd FileType python setlocal completeopt-=preview
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" vimfiler {
let s:plugin_name = 'vimfiler.vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
        "nnoremap <Leader>e :VimFiler -buffer-name=explorer -no-quit -split -winwidth=90 -simple -toggle<CR>
        nnoremap <Leader>e :<C-u>VimFilerExplore -winwidth=45 -winminwidth=45 -fnamewidth=45<CR>
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'commands' : [
            \           'VimFilerTab',
            \           'VimFiler',
            \           'VimFilerExplorer',
            \           'VimFilerBufferDir',
            \       ],
            \       'explorer' : 1,
            \   }
            \ })
    endfunction

    function! s:configure_vimfiler() abort
        let g:vimfiler_as_default_explorer  = 1
        let g:vimfiler_safe_mode_by_default = 0
        let g:vimfiler_data_directory       = expand('~/.vim/etc/vimfiler')
        " let g:vimfiler_enable_auto_cd = 1
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" matchit.zip {
let s:plugin_name = 'matchit.zip'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'filetypes' : [
            \           'jsp',
            \           'smarty',
            \           'html',
            \           'xml',
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_matchit() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" vim-brightest {{{
let s:plugin_name = 'vim-brightest'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)


        let g:brightest#pattern = '\k\+'

        " filetype=vim のみを有効にする
        let g:brightest#enable_filetypes = {
                \   "_"   : 1,
                \   "vim" : 1,
                \   "java" : 1,
                \   "python" : 1,
                \   "javascript" : 1,
                \   "bash" : 1,
                \   "sh" : 1,
                \   "php" : 1,
                \   "html" : 1,
                \   "jsp" : 1,
                \ }

        let g:brightest#highlight = {
                \   "group" : "Search",
                \ }
    endfunction

    function! s:configure_vim_brightest() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }}}
" vim-surround {
let s:plugin_name = 'vim-surround'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'insert' : 1,
            \   }
            \ })
    endfunction

    function! s:configure_vim_surround() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" syntastic {
let s:plugin_name = 'syntastic'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'insert' : 1,
            \   }
            \ })
    endfunction

    function! s:configure_syntastic() abort
        " set statusline+=%#warningmsg#
        " set statusline+=%{SyntasticStatuslineFlag()}
        " set statusline+=%*

        " let g:syntastic_always_populate_loc_list = 1
        " let g:syntastic_enable_signs = 1
        " let g:syntastic_auto_loc_list = 1
        " let g:syntastic_check_on_open = 1
        " let g:syntastic_check_on_wq = 0
        let g:syntastic_python_checkers = ["flake8"]
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" tagbar {
let s:plugin_name = 'tagbar'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
        nnoremap <Leader>t :<C-u>TagbarToggle<CR>
        nnoremap <Leader>s :<C-u>TagbarShowTag<CR>
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   "autload": {
            \       "commands": [
            \           "TagbarToggle",
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_tagbar() abort
        let g:tagbar_width = 34
        let g:tagbar_type_markdown = {
            \   'ctagstype': 'markdown',
            \   'ctagsbin' : expand('~/.vim/bundle/markdown2ctags/markdown2ctags.py'),
            \   'ctagsargs' : '-f - --sort=yes',
            \   'kinds' : [
            \       's:sections',
            \       'i:images'
            \   ],
            \   'sro' : '|',
            \   'kind2scope' : {
            \       's' : 'section',
            \   },
            \   'sort': 0,
            \ }
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" tabular {
let s:plugin_name = 'tabular'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'filetypes' : ['markdown'],
            \   }
            \ })
    endfunction

    function! s:configure_tabular() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" vim-markdown {
let s:plugin_name = 'vim-markdown'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'filetypes' : ['markdown'],
            \   }
            \ })
    endfunction

    function! s:configure_vim_markdown() abort
        let g:vim_markdown_folding_disabled = 1

        let g:vim_markdown_fenced_languages = [
            \   'csharp=cs',
            \   'java',
            \   'php',
            \   'python',
            \   'ruby',
            \   'html',
            \   'vim',
            \   'sh',
            \ ]
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" jedi-vim {
let s:plugin_name = 'jedi-vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   "autoload": {
            \       "filetypes": [
            \           "python",
            \           "python3",
            \           "djangohtml",
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_jedi_vim() abort
        " quickrunと被るため大文字に変更
        let g:jedi#rename_command = '<Leader>R'
        let g:jedi#goto_assignments_command = '<Leader>G'
        " gundoと被るため大文字に変更 (2013-06-24 10:00 追記）
        let g:jedi#goto_command = '<Leader>G'
        let g:jedi#completions_enabled = 0
        " 補完の最初の項目が選択された状態だと使いにくいためオフにする
        " let g:jedi#popup_select_first = 0

        " jediにvimの設定を任せると'completeopt+=preview'するので
        " 自動設定機能をOFFにし手動で設定を行う
        let g:jedi#auto_vim_configuration = 0

        if !exists('g:neocomplete#force_omni_input_patterns')
            let g:neocomplete#force_omni_input_patterns = {}
        endif

        let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

        autocmd FileType python setlocal omnifunc=jedi#completions
        autocmd FileType python setlocal completeopt-=preview
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" vim-virtualenv {
let s:plugin_name = 'vim-virtualenv'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   "autoload": {
            \       "filetypes": [
            \           "python",
            \           "python3",
            \           "djangohtml",
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_vim_virtualenv() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" vim-django-support {
let s:plugin_name = 'vim-django-support'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   "autoload": {
            \       "filetypes": [
            \           "python",
            \           "python3",
            \           "djangohtml",
            \       ],
            \   }
            \ })
    endfunction

    function! s:configure_vim_django_support() abort
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }
" emmet-vim {
let s:plugin_name = 'emmet-vim'
let s:plugin_noextention_name = s:get_noextention_name(s:plugin_name)

function! s:{s:plugin_noextention_name}(name)
    let self = s:base_class(a:name)
    let self.base = deepcopy(self)

    function! self.initialize.mapping_key() abort
    endfunction

    function! self.initialize.difine_command() abort
    endfunction

    function! self.initialize.execute(self) abort
        call call(a:self.base.initialize.execute, [], self)

        call neobundle#config({
            \   'autoload' : {
            \       'filetypes' : [
            \           'html',
            \           'html5',
            \           'eruby',
            \           'jsp',
            \           'xml',
            \           'css',
            \           'scss',
            \           'coffee',
            \           'smarty',
            \       ],
            \       'commands' : [
            \           '<Plug>ZenCodingExpandNormal',
            \       ]
            \   }
            \ })
    endfunction

    function! s:configure_emmet_vim() abort
        let g:use_emmet_complete_tag = 1
        let g:user_emmet_settings = {
            \   'variables': {
            \       'lang' : 'ja'
            \   },
            \   'html': {
            \       'indentation': '  '
            \   }
            \ }
    endfunction

    return self
endfunction

call add(s:plugin_obj_list, s:{s:plugin_noextention_name}(s:plugin_name))
" }


for s:plugin_obj in s:plugin_obj_list
    if neobundle#tap(s:get_class_name(s:plugin_obj))
        function! neobundle#tapped.hooks.on_source(bundle) abort
            let plugin_noextention_name = s:get_noextention_name(a:bundle.name)
            call s:configure_{plugin_noextention_name}()
        endfunction

        call s:initialize(s:plugin_obj)
        call neobundle#untap()
    endif
endfor

" 後処理 {
    syntax on
    colorscheme jellybeans

    if !has('vim_starting')
        " Call on_source hook when reloading .vimrc.
        call neobundle#call_hook('on_source')
    endif
" }
