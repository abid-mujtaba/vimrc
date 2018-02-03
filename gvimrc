set visualbell  " Set visualbell to disable audio bell. Later we use t_vb= to disable that as well
set t_vb=       " Used to disable super-annoying visual bell which causes the screen to flash

" GUI Options for gvim (vim-gnome):
set guioptions-=T
colorscheme slate

" Launch gvim maximized
set lines=999 columns=999

" We will use the foldcolumn to create a bit of space between the left edge of the window and the text we are entering
set foldcolumn=2

" We set the fold column color to match the gui bg color in the 'slate' colorscheme
highlight FoldColumn guibg=#262626      
