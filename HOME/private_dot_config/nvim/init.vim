set formatoptions-=cro
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set mouse=a
set ttyfast

" download and install vim-plug if not installed
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME}/nvim/autoload/plug.vim"'))
  silent !mkdir -p ${XDG_CONFIG_HOME}/nvim/autoload/
  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME}/nvim/autoload/plug.vim
  autocmd VimEnter * PlugInstall
endif

" plugin list
call plug#begin(system('echo -n "${XDG_CONFIG_HOME}/nvim/plugged"'))
  Plug 'tiagovla/tokyodark.nvim' " theme
  Plug 'sheerun/vim-polyglot' " comprehensive language packs
  Plug 'nvim-lualine/lualine.nvim' " status bar
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " completions
  Plug 'junegunn/fzf.vim' " file search
  Plug 'mhinz/vim-startify' " fancy start screen
  Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " file explorer
  Plug 'matze/vim-move' " move lines around
call plug#end()

" random bullshit, go!
set clipboard=unnamed
nnoremap <M-z> :set wrap!<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" configure aesthetics
set background=dark
colorscheme tokyodaark
syntax on
" statusbar
let g:lightline = {'colorscheme' : 'tokyonight'}
set laststatus=2
" line numbers
set number 
set relativenumber 
set linebreak
set spell spelllang=en_US

" support true colour
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"
if (has("termguicolors"))
  set termguicolors
endif

" support transparency
hi Normal guibg=NONE ctermbg=NONE 
 
" fzf search
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <C-g> :GFiles<CR>

" completions
set updatetime=300 " reduce update delay
set signcolumn=yes " always show column to not shift popup 
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-go',
  \ 'coc-sh',
  \ 'coc-markdownlint',
  \ ]
