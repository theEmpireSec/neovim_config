:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" changing tab settings 
autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent
autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent smartindent

" boilerplate code 
:autocmd BufNewFile *.c 0r ~/.config/nvim/templates/skeleton.c



call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/907th/vim-auto-save' " auto save 
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/vimwiki/vimwiki' " vimwiki for notes
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion


call plug#end()

" nerd tree 
nnoremap <C-t> :NERDTreeToggle<CR>

"auto save
let g:auto_save = 1  " enable AutoSave on Vim startup

" enable powerline fonts
let g:airline_powerline_fonts = 1

" disable new line commenting 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" tagbar 
nmap <F8> :TagbarToggle<CR>


"--- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" auto completon stuff
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction




















