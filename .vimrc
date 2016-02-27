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
        "set sidescrolloff=16
        " 左右スクロールは一文字づつ行う
        set sidescroll=1
        " 上下5行の視界を確保
        "set scrolloff=5
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
        endfunction

        command! -bar ClearUndo  call s:clear_undo()
    " }
    " ファイルタイプ 判定 {
        autocmd BufRead,BufNewFile,SessionLoadPost *.py setfiletype python
        autocmd BufRead,BufNewFile,SessionLoadPost *.php setfiletype php
        autocmd BufRead,BufNewFile,SessionLoadPost *.tpl setfiletype smarty
        autocmd BufRead,BufNewFile,SessionLoadPost *.phtml setfiletype smarty
        autocmd BufRead,BufNewFile,SessionLoadPost *.html setfiletype html
        autocmd BufRead,BufNewFile,SessionLoadPost *.java setfiletype java
        autocmd BufRead,BufNewFile,SessionLoadPost *.jsp setfiletype jsp
        autocmd BufRead,BufNewFile,SessionLoadPost *.inc setfiletype jsp
        autocmd BufRead,BufNewFile,SessionLoadPost *.md setfiletype markdown
        autocmd BufRead,BufNewFile,SessionLoadPost *.vimrc setfiletype vim
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

        autocmd BufWinEnter,SessionLoadPost * call s:set_match_words()
    " }}}
    " ウィンドウ {
        nnoremap ,wh :resize +4<CR>
        nnoremap ,ww :vertical resize +4<CR>
        nnoremap ,we :vertical resize 120<CR>
        nnoremap ,wv :vertical resize 34<CR>
        nnoremap ,wt :vertical resize 30<CR>
        nnoremap ,wa <C-w>h <C-w>h <C-w>h 34<C-w>\| <C-w>l 120<C-w>\| <C-w>l 30<C-w>\|
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
        NeoBundle 'nanotech/jellybeans.vim'
        NeoBundle 'Shougo/vimproc.vim'

        NeoBundleLazy 'Shougo/unite.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/vimshell.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/neocomplete.vim', {'depends' : ['Shougo/vimproc.vim']}
        NeoBundleLazy 'Shougo/neomru.vim', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/tabpagebuffer.vim', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/unite-outline', {'depends' : ['Shougo/unite.vim']}
        NeoBundleLazy 'Shougo/vimfiler.vim', {'depends' : ["Shougo/unite.vim"]}
        NeoBundleLazy 'Shougo/neosnippet.vim', {'depends' : ['Shougo/neosnippet-snippets'] }
        NeoBundleLazy 'Shougo/neosnippet-snippets'
        NeoBundleLazy 'tsukkee/unite-tag'
        NeoBundleLazy 'majutsushi/tagbar'
        NeoBundleLazy 'tpope/vim-surround'
        NeoBundleLazy 'tpope/vim-endwise'
        NeoBundleLazy 'vim-scripts/matchit.zip'
        NeoBundleLazy 'othree/html5.vim'
        NeoBundleLazy 'hail2u/vim-css3-syntax'
        NeoBundleLazy 'pangloss/vim-javascript'
        NeoBundleLazy 'rcmdnk/vim-markdown'
        " NeoBundleLazy 'Townk/vim-autoclose'
        " NeoBundleLazy 'scrooloose/syntastic'
        " NeoBundleLazy 'mattn/emmet-vim'
        " NeoBundleLazy 'davidhalter/jedi-vim'
        " NeoBundleLazy 'lambdalisue/vim-django-support'
        " NeoBundleLazy 'jmcantrell/vim-virtualenv'
        " NeoBundleLazy 'kchmck/vim-coffee-script'
        " NeoBundle 'LeafCage/yankround.vim'
        " NeoBundle 'AndrewRadev/switch.vim'
        " NeoBundle 'tyru/open-browser.vim'
        " NeoBundle 'rizzatti/dash.vim'
        " プログラムの即時実行
        " NeoBundleLazy 'thinca/vim-quickrun', {
        "       \ 'autoload' : {
        "       \   'mappings' : [['n', '\r']],
        "       \   'commands' : ['QuickRun']
        "       \ }}
        " NeoBundle 'tpope/vim-rails'
        " NeoBundleLazy 'vim-ruby/vim-ruby', {
        "         \ 'autoload' : {'filetypes' : ['ruby', 'eruby']}}
        " NeoBundle 'moll/vim-node'
    " }
    " 後処理 {
        call neobundle#end()
        filetype plugin indent on       " Required!
        NeoBundleCheck
    " }
" }
" vimproc {
    if neobundle#tap('vimproc.vim')
        call neobundle#config({
            \       'build' : {
            \           'windows' : 'tools\\update-dll-mingw',
            \           'cygwin' : 'make -f make_cygwin.mak',
            \           'mac' : 'make -f make_mac.mak',
            \           'linux' : 'make',
            \           'unix' : 'gmake',
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" unite {
    if neobundle#tap('unite.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'commands' : [
            \               'Unite',
            \               'UniteWithCursorWord',
            \               'UniteWithInput',
            \           ]
            \      }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
            let g:unite_kind_jump_list_after_jump_scroll=0
            let g:unite_enable_start_insert = 0
            let g:unite_source_rec_min_cache_files = 1000
            let g:unite_source_rec_max_cache_files = 5000
            let g:unite_source_file_mru_long_limit = 6000
            let g:unite_source_file_mru_limit = 300
            let g:unite_source_directory_mru_long_limit = 6000
            " let g:unite_prompt = '❯ '
            call s:configure_unite_grep('grep')
        endfunction

        function! s:configure_unite_grep(grep)
            let g:unite_source_grep_max_candidates = 200

            if a:grep == 'hw' && executable(a:grep)
                " Use hw(highway)
                " https://github.com/tkengo/highway
                let g:unite_source_grep_command = 'hw'
                let g:unite_source_grep_default_opts = '--no-group --no-color'
                let g:unite_source_grep_recursive_opt = ''
            elseif a:grep == 'ag' && executable(a:grep)
                " Use ag(the silver searcher)
                " https://github.com/ggreer/the_silver_searcher
                let g:unite_source_grep_command = 'ag'
                let g:unite_source_grep_default_opts =
                    \ '-i -a --vimgrep --hidden'
                    \ . ' --ignore ''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
                    \ . '--ignore ''.class'''
                let g:unite_source_grep_recursive_opt = ''
            elseif a:grep == 'pt' && executable(a:grep)
                " Use pt(the platinum searcher)
                " https://github.com/monochromegane/the_platinum_searcher
                let g:unite_source_grep_command = 'pt'
                let g:unite_source_grep_default_opts = '--nogroup --nocolor'
                let g:unite_source_grep_recursive_opt = ''
            elseif a:grep == 'ack-grep' && executable(a:grep)
                " Use ack
                " http://beyondgrep.com/
                let g:unite_source_grep_command = 'ack-grep'
                let g:unite_source_grep_default_opts =
                    \ '-i --no-heading --no-color -k -H'
                let g:unite_source_grep_recursive_opt = ''
            elseif a:grep == 'jvgrep' && executable(a:grep)
                " Use jvgrep
                " https://github.com/mattn/jvgrep
                let g:unite_source_grep_command = 'jvgrep'
                let g:unite_source_grep_default_opts =
                    \ '-i --exclude ''\.(git|svn|hg|bzr)'''
                let g:unite_source_grep_recursive_opt = '-R'
            elseif a:grep == 'grep'
            endif
        endfunction

        nnoremap ,b :Unite -buffer-name=unite_buffer -no-quit -keep-focus -winheight=8 buffer<CR>
        nnoremap ,t :Unite -buffer-name=unite_buffer_tab -no-quit -keep-focus -winheight=8 buffer_tab<CR>
        nnoremap ,i :Unite -buffer-name=unite_file -no-quit -keep-focus -winheight=8 file<CR>
        nnoremap ,l :UniteWithBufferDir -buffer-name=unite_with_buffer_dir_file -no-quit -keep-focus -winheight=8 file<CR>
        nnoremap ,m :Unite -buffer-name=unite_file_mru -no-quit -keep-focus -winheight=8 file_mru<CR>
        nnoremap ,r :Unite -buffer-name=unite_register -no-quit -keep-focus -winheight=8 register<CR>
        nnoremap ,o :Unite -buffer-name=unite_outline -no-quit -keep-focus -no-truncate -vertical -create -winwidth=42 outline<CR>

        nnoremap ,g :execute ':Unite -buffer-name=unite_grep -no-quit -keep-focus -winheight=8 grep:'
            \ . getcwd() . '::'<Left>
        nnoremap ,v :execute ':Unite -buffer-name=unite_vimgrep -no-quit -keep-focus -winheight=8 vimgrep:'
            \ . getcwd() . '/**/*.'<Left>
        nnoremap ,f :execute ':Unite -buffer-name=unite_find -no-quit -keep-focus -winheight=8 find:'
            \ . getcwd()<CR>
        nnoremap ,ug :UniteResume -no-quit -keep-focus unite_grep<CR>
        nnoremap ,uv :UniteResume -no-quit -keep-focus unite_vimgrep<CR>
        nnoremap ,uf :UniteResume -no-quit -keep-focus unite_find<CR>

        call neobundle#untap()
    endif
" }
" neomru {
    if neobundle#tap('neomru.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'unite_sources' : [
            \               'file_mru',
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" tabpagebuffer {
    if neobundle#tap('tabpagebuffer.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'unite_sources' : [
            \               'buffer_tab',
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" unite-outline {
    if neobundle#tap('unite-outline')
        call neobundle#config({
            \       'autoload' : {
            \           'unite_sources' : [
            \               'outline',
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" vimshell {
    if neobundle#tap('vimshell.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'commands' : [
            \               {
            \                   'name' : 'VimShell',
            \                   'complete' : 'customlist,vimshell#complete'
            \               },
            \               'VimShellExecute',
            \               'VimShellInteractive',
            \               'VimShellTerminal',
            \               'VimShellPop'
            \           ]
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" neocomplete {
    if neobundle#tap('neocomplete.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'insert' : 1,
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
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

            " Plugin key-mappings.
            inoremap <expr><C-g>     neocomplete#undo_completion()
            inoremap <expr><C-l>     neocomplete#complete_common_string()

            " Recommended key-mappings.
            " <CR>: close popup and save indent.
            inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
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
            "   function! s:check_back_space() "{{{
            "     let col = col('.') - 1
            "     return !col || getline('.')[col - 1]  =~ '\s'
            "   endfunction"}}}

            " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            " jedi-vimを使う場合はoff
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType python setlocal completeopt-=preview
        endfunction

        function! s:my_cr_function()
            " return neocomplete#close_popup() . "\<CR>"
            " For no inserting <CR> key.
            return pumvisible() ? neocomplete#close_popup() : "\<CR>"
        endfunction

        call neobundle#untap()
    endif
" }
" vimfiler {
    if neobundle#tap('vimfiler.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'commands' : [
            \               'VimFilerTab',
            \               'VimFiler',
            \               'VimFilerExplorer',
            \               'VimFilerBufferDir',
            \           ],
            \           'explorer' : 1,
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
            let g:vimfiler_as_default_explorer  = 1
            let g:vimfiler_safe_mode_by_default = 0
            let g:vimfiler_data_directory       = expand('~/.vim/etc/vimfiler')
            " let g:vimfiler_enable_auto_cd = 1
        endfunction

        nnoremap <Leader>e :VimFiler<CR>

        call neobundle#untap()
    endif
" }
" neosnippet {
    if neobundle#tap('neosnippet.vim')
        call neobundle#config({
            \       'autoload' : {
            \           'insert' : 1,
            \           'filetypes' : [
            \               'snippet',
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
            let g:neosnippet#data_directory = expand('~/.vim/etc/.cache/neosnippet')
            let g:neosnippet#snippets_directory = [
                \       expand('~/.vim/.bundle/neosnippet-snippets/neosnippets'),
                \       expand('~/dotfiles/snippets'),
                \   ]
        endfunction

        imap <C-k> <Plug>(neosnippet_expand_or_jump)
        smap <C-k> <Plug>(neosnippet_expand_or_jump)

        call neobundle#untap()
    endif
" }
" vim-autoclose {
    if neobundle#tap('vim-autoclose')
        call neobundle#config({
            \       'autoload' : {
            \           'insert' : 1,
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" vim-endwise {
    if neobundle#tap('vim-endwise')
        call neobundle#config({
            \       'autoload' : {
            \           'insert' : 1,
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" vim-markdown {
    if neobundle#tap('vim-markdown')
        call neobundle#config({
            \       'autoload' : {
            \           'filetypes' : ['markdown'],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
            let g:vim_markdown_folding_disabled = 1
        endfunction

        call neobundle#untap()
    endif
" }
" matchit.zip {
    if neobundle#tap('matchit.zip')
        call neobundle#config({
            \       'autoload' : {
            \           'filetypes' : ['jsp', 'smarty', 'html', 'xml'],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" vim-surround {
    if neobundle#tap('vim-surround')
        call neobundle#config({
            \       'autoload' : {
            \           'insert' : 1,
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" syntastic {
    if neobundle#tap('syntastic')
        call neobundle#config({
            \       'autoload' : {
            \           'insert' : 1,
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
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

        call neobundle#untap()
    endif
" }
" tagbar {
    if neobundle#tap('tagbar')
        call neobundle#config({
            \       "autload": {
            \           "commands": [
            \               "TagbarToggle",
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
            let g:tagbar_width=34
        endfunction

        nnoremap <Leader>t :TagbarToggle<CR>
        nnoremap <Leader>s :TagbarShowTag<CR>

        call neobundle#untap()
    endif
" }
" emmet-vim {
    if neobundle#tap('emmet-vim')
        call neobundle#config({
            \       'autoload' : {
            \           'filetypes' : [
            \               'html',
            \               'html5',
            \               'eruby',
            \               'jsp',
            \               'xml',
            \               'css',
            \               'scss',
            \               'coffee',
            \               'smarty'
            \           ],
            \           'commands' : [
            \               '<Plug>ZenCodingExpandNormal'
            \           ]
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
            let g:use_emmet_complete_tag = 1
            let g:user_emmet_settings = {
                \ 'variables': { 
                \ 'lang' : 'ja' 
                \ } ,
                \ 'html' : {
                \   'indentation' : '  '
                \ }}
        endfunction

        call neobundle#untap()
    endif
" }
" jedi-vim {
    if neobundle#tap('jedi-vim')
        call neobundle#config({
            \       "autoload": {
            \           "filetypes": [
            \               "python",
            \               "python3",
            \               "djangohtml",
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
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


        call neobundle#untap()
    endif
" }
" vim-django-support {
    if neobundle#tap('vim-django-support')
        call neobundle#config({
            \       "autoload": {
            \           "filetypes": [
            \               "python",
            \               "python3",
            \               "djangohtml",
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" vim-virtualenv {
    if neobundle#tap('vim-virtualenv')
        call neobundle#config({
            \       "autoload": {
            \           "filetypes": [
            \               "python",
            \               "python3",
            \               "djangohtml",
            \           ],
            \       }
            \   })

        function! neobundle#tapped.hooks.on_source(bundle)
        endfunction

        call neobundle#untap()
    endif
" }
" yankround.vim {
"    if neobundle#tap('yankround.vim')
"        call neobundle#config({
"            \   })
"
"        function! neobundle#tapped.hooks.on_source(bundle)
"            let g:yankround_max_history = 100
"        endfunction
"
"        nmap p <Plug>(yankround-p)
"        nmap P <Plug>(yankround-P)
"        nmap <C-p> <Plug>(yankround-prev)
"        nmap <C-n> <Plug>(yankround-next)
"        nnoremap <Leader><C-p> :Unite yankround<CR>
"
"        call neobundle#untap()
"    endif
" }
" switch.vim {
"    nnoremap + :Switch<CR>
"    nnoremap - :Switch<CR>
" }
" open-browser.vim {
"    let g:netrw_nogx = 1 " disable netrw's gx mapping.
"    nmap gx <Plug>(openbrowser-smart-search)
" }
" dash.vim {
"    nmap <Leader>d <Plug>DashSearch
" }
" vim-quickrun {
"    let g:quickrun_config = {}
"    let g:quickrun_config._ = { 'runner' : 'vimproc',
"            \ 'runner/vimproc/updatetime' : 200,
"            \ 'outputter/buffer/split' : ':botright 8sp',
"            \ 'outputter' : 'multi:buffer:quickfix',
"            \ 'hook/close_buffer/enable_empty_data' : 1,
"            \ 'hook/close_buffer/enable_failure' : 1,
"            \ }
"    nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
" }
" 後処理 {
    syntax on
    colorscheme jellybeans

    if !has('vim_starting')
        " Call on_source hook when reloading .vimrc.
        call neobundle#call_hook('on_source')
    endif
" }
