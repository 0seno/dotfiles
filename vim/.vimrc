syntax on



" Habilita True Color se suportado

set termguicolors

" Minhas Keybindings

" Função para ativar/desativar os números
let g:toggle_number = 1

nnoremap t- :call ToggleNumber()<CR>

function! ToggleNumber()
  if g:toggle_number == 0
    set number
    let g:toggle_number = 1
  else
    set norelativenumber
    set nonumber
    let g:toggle_number = 0
  endif
endfunction



" toggle absolute line numbers
let g:relativo = 0

nnoremap t= :call ToggleRelative()<CR>

function! ToggleRelative()
  if g:relativo == 0
    set  number relativenumber
    let g:relativo = 1
  else
    set number norelativenumber
    let g:relativo = 0
  endif
endfunction

" Configura o estilo de destaque



" Exemplo de negrito para palavras-chave e funções
"highlight Keyword cterm=bold gui=bold
"highlight Function cterm=bold gui=bold
"highlight Type cterm=bold gui=bold
"highlight String cterm=none gui=none
"set cursorline

set laststatus=2

set hlsearch
nnoremap <silent>\n :nohlsearch<CR>
nnoremap <silent>\y :call system('xclip -selection clipboard', @0)<CR>


set incsearch



" Habilita a identificação de tipo de arquivos e identação.
filetype indent on
set autoindent
set smartindent
