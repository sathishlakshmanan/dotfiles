local map = require('myconfig.utils').map

map('n', '<C-\\>', ':below split <bar> terminal<CR>i')

map('t', '<C-\\>', '<C-\\><C-n>:q<CR>')

map('i', 'jj', '<Esc>')
map('i', ':wq', '<Esc>:wq')
map('i', ':w', '<Esc>:w')
map('i', '<Space><Space>', '<Right>')

map('n', 'm', 'o<Esc><Up>')
map('n', 'M', 'O<Esc><Down>')
map('n', 's', ';')

map('n', '<Leader>j', ':bnext<CR>')
map('i', '<Leader>j', '<Esc>:bnext<CR>')
map('n', '<Leader>k', ':bprevious<CR>')
map('i', '<Leader>k', '<Esc>:bprevious<CR>')
map('n', '<Leader>J', ':BufferLineMoveNext<CR>')
map('n', '<Leader>K', ':BufferLineMovePrev<CR>')

map('i', '"', '""<Left>')
map('i', "'", "''<Left>")
map('i', '(', '()<Left>')
map('i', '{', '{}<Left>')
map('i', '{{', '{}<Left><CR><CR><Up><Tab>')
map('i', '[', '[]<Left>')
map('i', '"""', '""""""<Left><Left><Left>')
map('i', "'''", "''''''<Left><Left><Left>")

map('i', '{%', '{%  %}<Left><Left><Left>')
map('i', 'blc', '{% block content %}<CR><CR><CR><CR>{% endblock %}<Up><Up>')

map('i', 'ciw', '<Esc>ciw')
map('i', "diw", '<Esc>diw')
map('i', 'yiw', '<Esc>yiw')

map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')

-- map('i', '<C-tab>', '<C-x><C-o>')

map('n', '<C-n>', ':NERDTreeToggle<CR>')
