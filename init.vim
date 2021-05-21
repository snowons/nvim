"设置Leade为空格
let mapleader=" "

"显示行号
set number
set noswapfile
set termguicolors

"两个字符快速跳转
nmap s <Plug>(easymotion-s2)
" 向下搜索也是两个字符
"nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

"Flutter shortcuts
nnoremap <leader>fn :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fh :FlutterHotReload<cr>
nnoremap <leader>fr :FlutterHotRestart<cr>
nnoremap <leader>fd :FlutterVisualDebug<cr>

"共享剪贴板
set clipboard+=unnamed
"set clipboard+=unnamedplus

"当前行下划线
set cursorline

"行号宽度
set numberwidth=5


"VIM风格
colorscheme one
set background=dark
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
color one

" vim-floaterm
nnoremap tl :FloatermNew --height=0.95 --width=0.95 --wintype=floating --name=floaterm1 --position=center --autoclose=2 <CR>
nnoremap tr :FloatermNew --height=0.95 --width=0.95 --wintype=floating --name=floaterm1 --position=center --autoclose=2 ranger <CR>

" 切浮动窗口
let g:floaterm_keymap_toggle = '<C-h>'

highlight Normal guibg=NONE ctermbg=None

"状态栏显示方式 0:不显示 1:多窗口显示 2:始终显示
set laststatus=2

"开启鼠标
" set mouse=a

"tab数量
set ts=4
"set tabstop=2

syntax on

"相对行号
set relativenumber

"滚动时距离底部有6行
set scrolloff=6

"换行
set wrap

"搜索结果高亮
set hlsearch

"边输入边高亮
set incsearch

"防止每次打开文时显示上次搜索高亮结果
exec "nohlsearch"

"取消搜索结果高亮
noremap <LEADER><CR> :nohlsearch<CR>

" 保存
imap <C-s> <Esc>:w<CR>a
map <C-s> :w<CR>

" 设置默认进行大小写不敏感查找
set ignorecase

" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase

set ts=4
set expandtab
set autoindent

"命令模式下tab补全
set wildmenu

"最近文件切换 　
imap <C-e> <Esc><C-^>
nmap <C-e> <C-^>

"让s键失效
"map s :w<nop>

"保存文件
" map s  :w<CR>
" imap <C-s> <Esc>:w<CR>

"退出
"map qq :q<CR>
"imap qq <Esc>:q<CR>

"进入命令模式
nmap , :

"返回普通模式
imap jj <Esc>

"快速跳转行
nmap J 5j
nmap K 5k

"重新加载配置文件
map <LEADER>rc :source ~/.config/nvim/init.vim<CR>

"向左分屏
nmap sl :set splitright<CR>:vsplit<CR>
"向右分屏
nmap sh :set nosplitright<CR>:vsplit<CR>
"向上分屏
nmap sk :set nosplitbelow<CR>:split<CR>
"向下分屏
nmap sj :set splitbelow<CR>:split<CR>
"切换为水平分屏
map sV <C-w>t<C-w>H
"切换为垂直分屏
map sH <C-w>t<C-w>K
"移动到上面窗口
nmap <LEADER>k <C-w>k
"移动到下面窗口
nmap <LEADER>j <C-w>j
"移动到左边窗口
nmap <LEADER>h <C-w>h
"移动到右边窗口
nmap <LEADER>l <C-w>l
"窗口缩放
map _ :res -5<CR>
map + :res +5<CR>
map - :vertical :res-5<CR>
map = :vertical :res+5<CR>

"创建标签
map tn :tabe<CR>
"创建标签
map tc :tabclose<CR>
"关闭其他标签
map to :tabonly<CR>
"向后跳标签
map tj :tabnext<CR>
"资源管理器
nmap ge :CocCommand explorer <CR>

"perttier
"command! -nargs=0 Prettier :CocCommand prettier.formatFile


"当前目录文件
map <silent>rc :RangerOpenCurrentDir<CR>
"项目目录文件
map <silent>rp :RangerOpenProjectRootDir<CR>

"============vim-airline============
"显示tab和buffer
let g:airline#extensions#tabline#enabled = 1
"airline风格主题
let g:airline_theme='molokai'


"============插件列表============
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'

Plug 'preservim/nerdtree'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'

"GIT相关
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'editorconfig/editorconfig-vim'

"ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'iberianpig/ranger-explorer.vim'

Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'easymotion/vim-easymotion'

Plug 'preservim/tagbar'

" 关闭标签
Plug 'alvan/vim-closetag'

" 同时修改标签名
Plug 'AndrewRadev/tagalong.vim'

Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'

"vue
Plug 'posva/vim-vue'
" Syntax: html
Plug 'othree/html5.vim'

" Syntax: Javascript
Plug 'yuezk/vim-js'

" Syntax: scss
Plug 'cakebaker/scss-syntax.vim'
"缩进显示"
Plug 'nathanaelkane/vim-indent-guides' 
"缩进指示线"
Plug 'Yggdroot/indentLine' 

"Dart and flutter
Plug 'natebosch/vim-lsc'
Plug 'thosakwe/vim-flutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc-dart'

" 状态栏美化
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" 切换输入
Plug 'lyokha/vim-xkbswitch'

" 多点编辑
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" git
Plug 'kdheepak/lazygit.nvim'


" 翻譯
Plug 'voldikss/vim-translator'

" 注释
Plug 'Shougo/context_filetype.vim'
" Plug 'preservim/nerdcommenter'
Plug 'tyru/caw.vim'

call plug#end()
"indentLine缩进插件配置

let g:indentLine_char = "┆"

let g:indentLine_enabled = 1

" setup mapping to call :LazyGit
nnoremap <silent> <leader>lg :LazyGit<CR>

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
let g:rnvimr_draw_border = 1
nmap <space>r :RnvimrToggle<CR>

" 输入法切换
let g:XkbSwitchEnabled = 1

" 状态栏
 "----------------------------------------------------------------------
" 插件 --- lightline 
"----------------------------------------------------------------------
let g:lightline#bufferline#show_number       = 2
let g:lightline#bufferline#number_map        = { 0: ' ', 1: '⓵ ', 2: '⓶ ', 3: '⓷ ', 4: '⓸ ', 5: '⓹ ', 6: '⓺ ', 7: '⓻ ', 8: '⓼ ', 9: '⓽ ' }
let g:lightline#bufferline#shorten_path      = 0
let g:lightline#bufferline#unnamed           = '[No Name]'
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#enable_devicons   = 1
let g:lightline#bufferline#unicode_symbols   = 1
let g:lightline                              = {
    \ 'colorscheme':'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'gutter' ], [ 'cocstatus' ] ],
    \   'right': [ [ 'tabs' ], [ 'syntastic', 'lineinfo' ], [ 'percent' ], [ 'filetype', 'fileformat', 'fileencoding' ] ]
    \ },
    \ 'tabline': { 'left': [ [ 'buffers' ] ], 'right': [ [ 'close' ] ] },
    \ 'tab': {
    \   'active': [ 'tabnum' ],
    \   'inactive': [ 'tabnum' ]
    \ },
    \ 'component': { 'lineinfo': ' %3l:%-2v' },
    \ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
    \ 'component_type': { 'buffers': 'tabsel' },
    \ 'component_function': {
    \   'readonly': 'LightlineReadonly',
    \   'fugitive': 'LightlineFugitive',
    \   'gutter': 'LightlineGutter',
    \   'cocstatus': 'coc#status'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }
" 只读文件显示
function! LightlineReadonly()
    return &readonly ? '' : ''
endfunction
" Fugitvie
function! LightlineFugitive()
    if exists('*FugitiveHead')
        let branch = FugitiveHead()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction
" Gutter
"function! LightlineGutter()
  "let [a,m,r] = GitGutterGetHunkSummary()
  "return printf(' %d  %d  %d', a, m, r)
"endfunction

nmap <leader>1 <plug>lightline#bufferline#go(1)
nmap <leader>2 <plug>lightline#bufferline#go(2)
nmap <leader>3 <plug>lightline#bufferline#go(3)
nmap <leader>4 <plug>lightline#bufferline#go(4)
nmap <leader>5 <plug>lightline#bufferline#go(5)
nmap <leader>6 <plug>lightline#bufferline#go(6)
nmap <leader>7 <plug>lightline#bufferline#go(7)
nmap <leader>8 <plug>lightline#bufferline#go(8)
nmap <leader>9 <plug>lightline#bufferline#go(9)
nmap <leader>0 <plug>lightline#bufferline#go(10) 


"下一个buffer
nmap <leader>bn :bn<CR>
"删除当前buffer
nmap <leader>bd :bd<CR>

"Server dart 
let dart_html_in_string=v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

"============================COC 配置==========================
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" 加快响应时间单位ms
set updatetime=100

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" 插件 --- leaderf
"----------------------------------------------------------------------
" leaderf
let g:Lf_WindowPosition            = 'bottom'
let g:Lf_CacheDirectory            = expand('~/.vim/cache')
let g:Lf_WindowHeight              = 0.35
let g:Lf_StlColorscheme            = 'one'
let g:Lf_ShowRelativePath          = 0
let g:Lf_PreviewCode               = 1
let g:Lf_PreviewResult             = { 'Rg': 1, 'Gtags': 1, 'function': 1 }
let g:Lf_PreviewInPopup            = 1
let g:Lf_PreviewPopupWidth         = &columns
let g:Lf_DefaultMode               = 'NameOnly'
let g:Lf_CursorBlink               = 1
let g:Lf_RootMarkers               = ['.git', '.hg', '.svn', '.vscode', '.idea']
let g:Lf_WildIgnore                = {
    \ 'dir': ['.svn','.git','.hg', '.idea', '.vscode'],
    \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]', '*.zip', '*.gz']
    \ }
let g:Lf_StlSeparator              = { 'left': '', 'right': '' }
let g:Lf_PreviewCode               = 1
let g:Lf_WorkingDirectoryMode      = 'c'
let g:Lf_NoChdir                   = 1
" leaderf rg
let g:Lf_RgConfig = [
    \ "--max-columns=150",
    \ "--glob=!git/*",
    \ "--hidden"
    \ ]
" 全局搜索输入的单词
nmap <leader>qq :<C-U><C-R>=printf("Leaderf! rg --nowrap -F ")<cr>

" 全局搜索光标处的单词
nmap <leader>qw :<C-U><C-R>=printf("Leaderf! rg --nowrap -F %s ", expand("<cword>"))<cr>

" 在当前buffer里搜索光标处的单词
nmap <leader>qb :<C-U><C-R>=printf("Leaderf! rg --nowrap -F --current-buffer %s ", expand("<cword>"))<cr>

" 搜索选中的文本
xmap <leader>qw :<C-U><C-R>=printf("Leaderf! rg --nowrap -F %s ", leaderf#Rg#visual())<cr>

" 重新执行上一次搜索 
nmap <leader>qo :<C-U>Leaderf! rg --recall<cr>

" leaderf gtags
let g:Lf_GtagsAutoGenerate = 0
" 原生语言 C C++ JAVA PHP使用内置解析器
let g:Lf_Gtagslabel = 'native-pygments'
" 更新tags
nmap <leader>gu :<C-U><C-R>=printf("Leaderf! gtags --update --skip-unreadable ")<cr><cr>
" 查询定义或引用
nmap <leader>gt :<C-U><C-R>=printf("Leaderf! gtags --by-context --auto-jump --path-style through")<cr><cr>
" 查询定义
nmap <leader>gd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump --path-style through", expand("<cword>"))<cr><cr>
" 查询引用
nmap <leader>gr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump --path-style through", expand("<cword>"))<cr><cr>
" 重新执行上一次搜索
nmap <leader>go :<C-U><C-R>=printf("Leaderf! gtags --recall")<cr><cr>

" 多光标
let g:VM_maps                       = {}
let g:VM_maps["Add Cursor Down"] = '<A-j>'
let g:VM_maps["Add Cursor Up"]   = '<A-k>'


""" 翻譯
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>w <Plug>TranslateW
vmap <silent> <Leader>w <Plug>TranslateWV
" Replace the text with translation
" nmap <silent> <Leader>r <Plug>TranslateR
" vmap <silent> <Leader>r <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <Leader>x <Plug>TranslateX

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
