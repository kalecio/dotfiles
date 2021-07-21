set number
set termguicolors

call plug#begin()

Plug 'sheerun/vim-polyglot'

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'

Plug 'gko/vim-coloresque'

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'thaerkh/vim-indentguides'

Plug 'cohama/lexima.vim'

call plug#end()


" Para abrir nerdtree use Ctrl + n
nnoremap <C-n> :NERDTreeToggle<CR>

" Configs do airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1

" Configurações do CoC.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Fim das configurações do CoC.nvim

" Configurações do Vim IndentGuides

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do Vim IndentGuides

" Configurações do lexima.vim

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do lexima.vim


" Mappings

" Alternar entre abas com F1 e F2
nnoremap <F1> :bprevious<CR>
nnoremap <F2> :bnext<CR>

" copiar texto e mandar para area de transferencia
vnoremap <C-c> "+y<CR>
