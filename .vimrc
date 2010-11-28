"======================================
"
" Base Settings
"
"======================================

call pathogen#runtime_append_all_bundles()
set nocompatible
set cursorline
colorscheme cloudsMidnight 
" 显示游标行列状态 set ru
set ruler
" 禁止自动换行
set nowrap
" 设置缩进
set ts=2
set nobackup
set noswapfile
set hlsearch
" 启动时不显示援助索马里儿童提示
set shortmess=atI
set nu

" 隐藏右边滚动条 
set guioptions-=R
set guioptions-=r
" 隐藏左边滚动条
set guioptions-=l
set guioptions-=L
" 隐藏菜单栏 (无必要)
"set guioptions-=m
" 隐藏工具栏
set guioptions-=T

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" 指定 jsLint 调用路径
let g:jslint_command = '~/bin/jsl'


"======================================
"
" Map Keys
"
"======================================
inoremap jj <ESC>
nmap ,s :source ~/.vimrc<CR>
nmap ,e :e ~/.vimrc<CR>
nmap <D-i> :set list!<CR>


"======================================
"
" Plugin Settings
"
"======================================

" FuzzyFinder
let g:fuf_modesDisable = []
let g:fuf_abbrevMap = {
\   '^vr:' : map(filter(split(&runtimepath, ','), 'v:val !~ "after$"'), 'v:val . ''/**/'''),
\   '^m0:' : [ '/mnt/d/0/', '/mnt/j/0/' ],
\ }
let g:fuf_mrufile_maxItem = 300
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> <C-n>      :FufBuffer<CR>
nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <C-f><C-p> :FufFileWithFullCwd<CR>
nnoremap <silent> <C-f>p     :FufFile<CR>
nnoremap <silent> <C-f><C-d> :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <C-f>d     :FufDirWithFullCwd<CR>
nnoremap <silent> <C-f>D     :FufDir<CR>
nnoremap <silent> <C-j>      :FufMruFile<CR>
nnoremap <silent> <C-k>      :FufMruCmd<CR>
nnoremap <silent> <C-b>      :FufBookmark<CR>
nnoremap <silent> <C-f><C-t> :FufTag<CR>
nnoremap <silent> <C-f>t     :FufTag!<CR>
noremap  <silent> g]         :FufTagWithCursorWord!<CR>
nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
nnoremap <silent> <C-f><C-g> :FufChangeList<CR>
nnoremap <silent> <C-f><C-q> :FufQuickfix<CR>
nnoremap <silent> <C-f><C-l> :FufLine<CR>
nnoremap <silent> <C-f><C-h> :FufHelp<CR>
nnoremap <silent> <C-f><C-b> :FufAddBookmark<CR>
vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
nnoremap <silent> <C-f><C-r> :FufRenewCache<CR>

" NERD Tree
imap <silent> <F2> <esc>:NERDTreeToggle<CR>
nmap <silent> <F2> :NERDTreeToggle<CR>

" Calendar
map ca :Calendar<cr>


"======================================
"
"  GUI Settings
"
"======================================

if has('gui_running')
	set colorcolumn=85
endif
