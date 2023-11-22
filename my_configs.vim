" Don't change tab to 4 space
set noexpandtab

" Show relative and absolute line number
set number

" Show hidden file in Nerd Tree
let NERDTreeShowHidden=1

" Don't generate the pair of parenthesis automatically
let g:AutoPairsLoaded=0

" Setting for ctags
set csprg=gtags-cscope
set cscopetag
let gtags_file=findfile("GTAGS", ",;")
if !empty(gtags_file) && filereadable(gtags_file)
	exe "cs add" gtags_file
endif
nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

" Setting for DiffChanges
nmap dc :DiffChangesDiffToggle<CR>

" For Tagbar
let g:tagbar_left=1
nmap <leader>tb :TagbarToggle<CR>

" For Gitgutter
let g:gitgutter_enable=0
nnoremap <silent><leader>d :GitGutterToggle<CR>
highlight SignColumn ctermbg=NONE
highlight! GitGutterAdd ctermfg=40 guifg=#006000 ctermbg=NONE guibg=NONE
highlight! GitGutterChange ctermfg=64 guifg=#5F6000 ctermbg=NONE guibg=NONE
highlight! GitGutterDelete ctermfg=160 guifg=#600000 ctermbg=NONE guibg=NONE
highlight! GitGutterChangeDelete ctermfg=1 guifg=#600000 ctermbg=NONE guibg=NONE

let g:leetcode_browser='edge'
let g:leetcode_solution_filetype='python3'

" Vim configs
set autochdir
set updatetime=100
