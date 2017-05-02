se shm=atI

se mouse=a

se ts=4 sw=4 sts=4
se ai si
filetype indent on

au BufNewFile,BufRead *.py se et

se is hls

se wildmenu
se showcmd
se linebreak
se cuc cul

se t_Co=256
colo molokai

ino { {}<ESC>i
ino <CR> <CR><c-r>=Hehe()<CR>
function! Hehe()
    if getline('.')[col('.') - 1] == '}'
        return "\<ESC>==ko"
    else
        return ""
    endif
endfunction

"ino" ""<ESC>i
"ino' ''<ESC>i
"ino( ()<ESC>i
"ino) <c-r>=ClosePair(')')<CR>
"ino[ []<ESC>i
"ino] <c-r>=ClosePair(']')<CR>
"function! ClosePair(char)
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endfunction

ino fd <ESC>
vn fd <ESC>
let mapleader=" "

nmap <leader>fs :w<CR>
nmap <leader>qq :q<CR>
nmap <leader>qQ :q!<CR>
nmap <leader>y ggVG"+y
nmap <leader>te :tabe 
nmap <leader>th :tabm -1<CR>
nmap <leader>tl :tabm +1<CR>
nmap <leader>tq :tabd q<CR>
nmap <leader>tQ :tabd q!<CR>

nmap <leader>c :call Compile()<CR>
func! Compile()
	exec "w"
	if &filetype == 'cpp'
		exec "!g++ %"
		exec "! ./a.out"
	elseif &filetype == 'python'
		exec "!python3 %"
	endif
endfunc
