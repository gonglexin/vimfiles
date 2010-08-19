" 加载pathogen管理的插件
call pathogen#runtime_append_all_bundles()
" 设置coloscheme
colorscheme twilight2 
" 显示游标行列状态 set ru
set ruler
" 禁止自动换行
set nowrap
" 设置缩进
set ts=2
" 不生成备件文件
set nobackup
" 不生成swap文件
set noswapfile
" 搜索高亮
set hlsearch
" 启动时不显示援助索马里儿童提示
set shortmess=atI

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

" FuzzyFinder设置
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

" NERDTree插件的快捷键
imap <silent> <F7> <esc>:NERDTreeToggle<CR>
nmap <silent> <F7> :NERDTreeToggle<CR>

" 指定 jsLint 调用路径
let g:jslint_command = '~/bin/jsl'

" Calendar插件快捷键 
map ca :Calendar<cr>

" 在normal模式下，先后按下 ,s 两个键执行_vimrc，而 ,e 则是编辑_vimrc
nmap ,s :source ~/.vimrc<CR>
nmap ,e :e ~/.vimrc<CR>

" Toggle Invisibles Shortcut to rapidly toggle `set list`
" nmap <leader>l :set list!<CR>
nmap <D-i> :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

