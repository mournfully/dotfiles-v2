" ~/.vimrc

" VIM PLUGINS =====================================================================================================
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  " https://github.com/junegunn/vim-plug
  " default plugin directory at '~/.vim/plugged'
  " reload .vimrc and :PlugInstall to install plugins.
  Plug 'preservim/nerdtree'  " a tree explorer plugin for vim. - https://github.com/preservim/nerdtree 
  Plug 'ryanoasis/vim-devicons'  " add filetype icons for most file extensions  -  https://github.com/ryanoasis/vim-devicon
  Plug 'k4yt3x/ayu-vim-darker' " https://github.com/k4yt3x/ayu-vim-darker
  Plug 'rhysd/vim-healthcheck'  " polyfill of neovim's health-check - https://github.com/rhysd/vim-healthcheck
  Plug 'matze/vim-move'  " move lines and slections left/up/down/right - https://github.com/matze/vim-move
call plug#end()

" TRUE COLORS ===============================================================
" force vim to use xterm-true-color w/ settermguicolors
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
set termguicolors
let ayucolor="darker" " for dark version of theme
colorscheme ayu
 
" NERDTREE ============================================================================================================================================
" exit vim if nerdtree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" close the tab if nerdtree is tHe only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') &&  b:NERDTree.isTabTree() | quit | endif
" open the existing nerdtree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" keybindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" FORCE VIM TO RECOGNIZE <Meta> ====================================================================================================
" won't work with tmux unless `set -sg escape-time -1` in ~/.tmux.conf
" https://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw


" MAP KEY CHORD `jk` TO <Esc> ==============================================================================================
" https://www.reddit.com/r/vim/comments/ufgrl8/journey_to_the_ultimate_imap_jk_esc/
let g:esc_j_lasttime = 0
let g:esc_k_lasttime = 0
function! JKescape(key)
    if a:key=='j' | let g:esc_j_lasttime = reltimefloat(reltime()) | endif
    if a:key=='k' | let g:esc_k_lasttime = reltimefloat(reltime()) | endif
    let l:timediff = abs(g:esc_j_lasttime - g:esc_k_lasttime)
    if l:timediff >= 0 | let l:timediff = l:timediff | endif
    return (l:timediff <= 0.20 && l:timediff >=0.001) ? "\b\e" : a:key
endfunction
inoremap <expr> j JKescape('j')
inoremap <expr> k JKescape('k')

" MISC QOL CHANGES ===========================================================================================
" set formatoptions? -> formatoptions=croql (default = tcq)
" https://superuser.com/questions/271023/can-i-disable-continuation-of-comments-to-the-next-line-in-vim
set formatoptions=tcq

set number relativenumber
set wrap linebreak nolist
" set ttimeoutlen=100  https://www.reddit.com/r/vim/comments/40257u/delay_on_esc_with_tmux_and_vim/

set clipboard=unnamedplus
set mouse=a
set ttymouse=xterm2  " https://unix.stackexchange.com/questions/50733/cant-use-mouse-properly-when-running-vim-in-tmux

set tabstop=4  " show existing tab with 4 spaces width
set shiftwidth=4  " when indenting with '>', use 4 shttps://codeburst.io/common-way-of-resizing-windows-panes-in-vim-and-tmux-9b88def886c6paces width
set expandtab  " on pressing tab, insert 4 spaces

" https://stackoverflow.com/questions/248102/is-there-any-command-to-toggle-enable-auto-text-wrapping
map <M-z> :set wrap!<CR>

" Use a line cursor within insert mode and a block cursor everywhere else.
" https://stackoverflow.com/questions/4777950/vim-change-block-cursor-when-in-insert-mode
" https://nickjanetakis.com/blog/change-your-vim-cursor-from-a-block-to-line-in-normal-and-insert-mode
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[5 q" " insert mode?
let &t_EI = "\e[2 q" " visual mode?
set ttimeout " Disable delay when hitting ESC and updating cursor
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast
