# neovim_config
just my neovim config for python , C/C++
There are several plugin used & you may suffer setting them up

steps to avoid suffering :
1. copy my init.vim into your "init.vim"
2. run vim commands : 1 : :w
                      2 : :so%
                      3 : :Pluginstall
                      4 : :wq
3.sudo pacman -S ctags
4.sudo pacman -S nodejs
5. cd .~/config/nvim/plugged/coc.vim
6. sudo npm install -g yarn
7. yarn install
8. yarn build

Paste the below lines in your init.vim

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
                      
