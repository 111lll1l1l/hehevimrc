se shm=atI

se ts=4 sw=4
se ai si
filetype indent on

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
nmap <leader>c :call CR()<CR>
func! CR()
exec "w"
exec "!g++ %"
exec "! ./a.out"
endfunc
