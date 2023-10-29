noremap j h
noremap k j
noremap l k
noremap ; l
noremap h :

map s <nop>
map sl :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map s; :set splitright<CR>:vsplit<CR>

map <A-j> :wincmd h<CR>
map <A-k> :wincmd j<CR>
map <A-l> :wincmd k<CR>
map <A-;> :wincmd l<CR>

map <c-u> :tabe<CR>
map <c-k> :-tabnext<CR>
map <c-l> :+tabnext<CR>

" close the quickfix window
noremap <silent> <leader>qc :cclose<CR>
