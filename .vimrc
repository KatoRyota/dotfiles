" 前処理 {
    " Vimの内部エンコーディング。
    set encoding=utf-8
    " ターミナルのエンコーディング
    set termencoding=utf-8
    " 基本文字コード
    set fileencoding=utf-8
    " 文字コード自動判別(優先順)
    set fileencodings=utf-8,euc-jp,cp932,sjis,iso-2022-jp,
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
        set history=10000
        set t_Co=256
        set lazyredraw
        set ttyfast
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
        set cmdheight=2
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
        set colorcolumn=100
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
        set grepprg=grep\ -anHPR\ --exclude-dir={.git,python2.6,python3.4,perl-lib,target}\ --exclude={*.jpg,*.gif,*.png,*.tif,*.pdf,*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.o,*.obj,*.pyc,*.so,*.class,*.jar,*.war,*.ear,*.dll,*.apk,*.asta,*.zip,*.rar,*.gz}
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
                      \*/target/*,
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
        set tabstop=2
        " 自動インデントでずれる幅
        set shiftwidth=2
        " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
        set softtabstop=2
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
        autocmd BufReadPost,FileReadPost *.js    setfiletype javascript
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
        nnoremap <Space>wr :<C-u>ResetWindow<CR>

        function! s:reset_window() abort
            execute '2wincmd w'
            execute 'vertical resize 50'

            execute '1wincmd w'
            execute 'vertical resize 45'

            execute '3wincmd w'
            execute 'vertical resize 44'

            execute '2wincmd w'
        endfunction

        command! -bar ResetWindow call s:reset_window()
    " }
    " vimdiff {
        set diffopt+=iwhite
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
        NeoBundle 'vim-scripts/matchit.zip'
        NeoBundle 'Shougo/vimproc.vim'
        NeoBundle 'Shougo/neosnippet-snippets'
        NeoBundle 'Shougo/tabpagebuffer.vim', {'depends' : ['Shougo/unite.vim']}

        NeoBundleLazy 'Shougo/unite.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/neomru.vim', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/unite-outline', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/vimfiler.vim', {'depends' : ["Shougo/unite.vim"]}
        NeoBundleLazy 'Shougo/neosnippet.vim', {'depends' : ['Shougo/neocomplete.vim', 'Shougo/neosnippet-snippets'] }
        NeoBundleLazy 'Shougo/neocomplete.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/vimshell.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'tsukkee/unite-tag'
        NeoBundleLazy 'majutsushi/tagbar'
        NeoBundleFetch 'jszakmeister/markdown2ctags'
        NeoBundle 'tpope/vim-surround'
        "NeoBundleLazy 'scrooloose/syntastic'
        NeoBundle 'osyo-manga/vim-brightest'

        "for markdown
        NeoBundleLazy 'godlygeek/tabular'
        NeoBundle 'plasticboy/vim-markdown', {'depends' : ['godlygeek/tabular'] }

        "for python
        NeoBundleLazy 'davidhalter/jedi-vim'
        NeoBundleLazy 'jmcantrell/vim-virtualenv'
        "NeoBundleLazy 'lambdalisue/vim-django-support'

        "for html
        NeoBundleLazy 'othree/html5.vim'
        "NeoBundleLazy 'mattn/emmet-vim'

        "for css
        NeoBundle 'hail2u/vim-css3-syntax'

        "for javascript
        NeoBundle 'pangloss/vim-javascript'
    " }
" }

" テンプレート/
if neobundle#tap('')
    call neobundle#untap()
endif
" /テンプレート

if neobundle#tap('vimproc.vim')
    call neobundle#config({
        \   'build': {'windows': 'tools\\update-dll-mingw', 'cygwin': 'make -f make_cygwin.mak', 'mac': 'make -f make_mac.mak',
        \       'linux': 'make', 'unix': 'gmake'}
        \ })

    call neobundle#untap()
endif

if neobundle#tap('unite.vim')
    call neobundle#config({
        \   'autoload': {
        \       'commands': ['Unite', 'UniteWithCursorWord', 'UniteWithInput']
        \   }
        \ })

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
    let g:unite_source_grep_command = 'grep'
    let g:unite_source_grep_default_opts = '-anHPR --exclude-dir={.git,python2.6,python3.4,perl-lib,target} --exclude={*.jpg,*.gif,*.png,*.tif,*.pdf,*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.o,*.obj,*.pyc,*.so,*.class,*.jar,*.war,*.ear,*.dll,*.apk,*.asta,*.zip,*.rar,*.gz}'
    let g:unite_source_grep_recursive_opt = ''
    "let g:unite_source_grep_max_candidates = 0

    function! s:unite_vimgrep(pattern, directory, ...) abort
        if exists('a:1')
            let extension = a:1
        else
            let extension = '*'
        endif

        if a:directory == '.'
            let search_path = getcwd() . '/**/' . extension
        elseif a:directory == '%'
            let search_path = '%'
        else
            let search_path = a:directory . '/**/' . extension
        endif

        echomsg a:pattern
        let pattern = substitute(a:pattern, ' ', '\\ ', 'g')
        echomsg pattern
        let pattern = substitute(pattern, '\\', '\\\\', 'g')
        echomsg pattern

        echomsg 'Unite -buffer-name=unite_vimgrep vimgrep:' . search_path . ':' . pattern
        execute 'Unite -buffer-name=unite_vimgrep vimgrep:' . search_path . ':' . pattern
    endfunction

    command! -bar -nargs=+ UniteVimGrep call s:unite_vimgrep(<f-args>)

    function! s:unite_grep(pattern, directory, ...) abort
        let search_path = a:directory

        if exists('a:1')
            let option = a:1
        else
            let option = ''
        endif

        echomsg option
        let option = substitute(option, '\\', '\\\\\\', 'g')
        echomsg option
        let option = substitute(option, '\ ', '\\\\\\ ', 'g')
        echomsg option

        echomsg a:pattern
        let pattern = a:pattern
        let pattern = substitute(pattern, '\\', '\\\\\\', 'g')
        echomsg pattern
        let pattern = substitute(pattern, '\ ', '\\\\\\ ', 'g')
        echomsg pattern

        echomsg 'Unite -buffer-name=unite_grep grep:' . search_path . ':' . option . ':' .  pattern
        execute 'Unite -buffer-name=unite_grep grep:' . search_path . ':' . option . ':' .  pattern
    endfunction

    command! -bar -nargs=+ UniteGrep call s:unite_grep(<f-args>)

    function! s:unite_find(file_name) abort
        let file_name = '-iname ' . '''' . a:file_name . ''''

        echomsg 'Unite -buffer-name=unite_find find:' . getcwd() . ':' . substitute(file_name, '\ ', '\\ ', 'g')
        execute 'Unite -buffer-name=unite_find find:' . getcwd() . ':' . substitute(file_name, '\ ', '\\ ', 'g')
    endfunction

    command! -bar -nargs=1 UniteFind call s:unite_find(<f-args>)

    nnoremap ,b :<C-u>Unite buffer -buffer-name=unite_buffer<CR>
    nnoremap ,m :<C-u>Unite file_mru -buffer-name=unite_file_mru<CR>
    nnoremap ,k :<C-u>Unite mapping -buffer-name=unite_mapping<CR>

    nnoremap ,r :<C-u>Unite register -buffer-name=unite_register<CR>
    nnoremap ,y :<C-u>Unite history/yank -buffer-name=unite_history_yank<CR>

    nnoremap ,lc :<C-u>UniteWithBufferDir file<CR>
    nnoremap ,lf :<C-u>Unite file:
    nnoremap ,lr :<C-u>Unite file_rec/async:

    nnoremap ,v :<C-u>UniteVimGrep<Space>
    nnoremap ,g :<C-u>UniteGrep<Space>
    nnoremap ,f :<C-u>UniteFind<Space>

    nnoremap ,,b :<C-u>UniteResume unite_buffer<CR>
    nnoremap ,,v :<C-u>UniteResume unite_vimgrep<CR>
    nnoremap ,,g :<C-u>UniteResume unite_grep<CR>
    nnoremap ,,f :<C-u>UniteResume unite_find<CR>

    nnoremap ,] :<C-u>UniteWithCursorWord -immediately tag<CR>
    nnoremap ,t :<C-u>Unite jump<CR>

    function! neobundle#tapped.hooks.on_source(bundle) abort
        call unite#custom_max_candidates('vimgrep,grep,find', 0)
        call unite#custom_source('buffer', 'sorters', 'sorter_word')
        call unite#custom_source('file_mru', 'sorters', 'sorter_default')
    endfunction

    call neobundle#untap()
endif

if neobundle#tap('neomru.vim')
    call neobundle#config({
        \   'autoload' : {
        \       'unite_sources' : [
        \           'file_mru',
        \       ],
        \   }
        \ })

    call neobundle#untap()
endif

if neobundle#tap('tabpagebuffer.vim')
    call neobundle#untap()
endif

if neobundle#tap('unite-outline')
    call neobundle#config({
        \   'autoload' : {
        \       'unite_sources' : [
        \           'outline',
        \       ],
        \   }
        \ })

    nnoremap ,o :<C-u>Unite outline<CR>

    call neobundle#untap()
endif

if neobundle#tap('vimshell.vim')
    call neobundle#config({
        \   'autoload' : {
        \       'commands' : [
        \           {'name': 'VimShell', 'complete': 'customlist,vimshell#complete'},
        \           'VimShellExecute',
        \           'VimShellInteractive',
        \           'VimShellTerminal',
        \           'VimShellPop'
        \       ]
        \   }
        \ })

    call neobundle#untap()
endif

if neobundle#tap('neosnippet.vim')
    call neobundle#config({
        \   'autoload': {
        \       'on_source': ['neocomplete.vim'],
        \   }
        \ })

    let g:neosnippet#data_directory = expand('~/.vim/etc/.cache/neosnippet')
    let g:neosnippet#snippets_directory = expand('~/.vim/bundle/vim-snippets/snippets')

    imap <C-k> <Plug>(neosnippet_expand_or_jump)
    smap <C-k> <Plug>(neosnippet_expand_or_jump)

    call neobundle#untap()
endif

if neobundle#tap('neocomplete.vim')
    call neobundle#config({
        \   'autoload' : {
        \       'insert' : 1,
        \   }
        \ })

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

    function! s:neocomplete_my_cr_function()
        " return neocomplete#close_popup() . "\<CR>"
        " For no inserting <CR> key.
        return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    endfunction

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

    call neobundle#untap()
endif

if neobundle#tap('vimfiler.vim')
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

    let g:vimfiler_as_default_explorer  = 1
    let g:vimfiler_safe_mode_by_default = 0
    let g:vimfiler_data_directory       = expand('~/.vim/etc/vimfiler')
    " let g:vimfiler_enable_auto_cd = 1

    function! s:open_file_explore() abort
        execute 'VimFilerExplore -winwidth=45 -winminwidth=45 -fnamewidth=45 -no-focus'

        if winnr('$') == 3
            call s:reset_window()
        endif
    endfunction

    command! -bar OpenFileExplore call s:open_file_explore()
    nnoremap <Leader>e :<C-u>OpenFileExplore<CR>

    function! s:expand_current_dir() abort
        execute 'VimFilerCurrentDir -winwidth=45 -winminwidth=45 -fnamewidth=45 -no-focus -explorer -find'

        if winnr('$') == 3
            call s:reset_window()
        endif
    endfunction

    command! -bar ExpandCurrentDir call s:expand_current_dir()
    nnoremap <Leader>f :<C-u>ExpandCurrentDir<CR>

    call neobundle#untap()
endif

if neobundle#tap('matchit.zip')
    call neobundle#untap()
endif

if neobundle#tap('vim-brightest')
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

    nnoremap <Space>b :<C-u>BrightestToggle<CR>

    call neobundle#untap()
endif

if neobundle#tap('vim-surround')
    call neobundle#untap()
endif

if neobundle#tap('syntastic')
    call neobundle#config({
        \   'autoload' : {
        \       'insert' : 1,
        \   }
        \ })

    " set statusline+=%#warningmsg#
    " set statusline+=%{SyntasticStatuslineFlag()}
    " set statusline+=%*

    " let g:syntastic_always_populate_loc_list = 1
    " let g:syntastic_enable_signs = 1
    " let g:syntastic_auto_loc_list = 1
    " let g:syntastic_check_on_open = 1
    " let g:syntastic_check_on_wq = 0
    let g:syntastic_python_checkers = ["flake8"]

    call neobundle#untap()
endif

if neobundle#tap('tagbar')
    call neobundle#config({
        \   "autload": {
        \       "commands": [
        \           "TagbarToggle",
        \       ],
        \   }
        \ })

    let g:tagbar_ctags_bin = '/usr/bin/ctags'
    let g:tagbar_width = 44
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

    let g:tagbar_type_javascript = {
        \ 'ctagstype': 'js',
        \ 'kinds': [
              \ 'a:array',
              \ 'o:object',
              \ 'r:var',
              \ 'f:function'
          \ ]
        \ }

    function! s:open_tagbar() abort
        execute 'TagbarToggle'

        if winnr('$') == 3
            call s:reset_window()
        endif
    endfunction

    command! -bar OpenCloseTagbar call s:open_tagbar()
    nnoremap <Leader>t :<C-u>OpenCloseTagbar<CR>

    nnoremap <Leader>s :<C-u>TagbarShowTag<CR>

    call neobundle#untap()
endif

if neobundle#tap('tabular')
    call neobundle#config({
        \   'autoload' : {
        \       'filetypes' : ['markdown'],
        \   }
        \ })

    call neobundle#untap()
endif

if neobundle#tap('vim-markdown')
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
        \   'text'
        \ ]

    call neobundle#untap()
endif

if neobundle#tap('jedi-vim')
    call neobundle#config({
        \   "autoload": {
        \       "filetypes": [
        \           "python",
        \           "python3",
        \           "djangohtml",
        \       ],
        \   }
        \ })

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

    call neobundle#untap()
endif

if neobundle#tap('vim-virtualenv')
    call neobundle#config({
        \   "autoload": {
        \       "filetypes": [
        \           "python",
        \           "python3",
        \           "djangohtml",
        \       ],
        \   }
        \ })

    call neobundle#untap()
endif

if neobundle#tap('vim-django-support')
    call neobundle#config({
        \   "autoload": {
        \       "filetypes": [
        \           "python",
        \           "python3",
        \           "djangohtml",
        \       ],
        \   }
        \ })

    call neobundle#untap()
endif

if neobundle#tap('emmet-vim')
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

    let g:use_emmet_complete_tag = 1
    let g:user_emmet_settings = {
        \   'variables': {
        \       'lang' : 'ja'
        \   },
        \   'html': {
        \       'indentation': '  '
        \   }
        \ }

    call neobundle#untap()
endif


" 後処理 {
    call neobundle#end()
    filetype plugin indent on       " Required!
    NeoBundleCheck

    syntax on
    colorscheme jellybeans

    if !has('vim_starting')
        " Call on_source hook when reloading .vimrc.
        call neobundle#call_hook('on_source')
    endif
" }
