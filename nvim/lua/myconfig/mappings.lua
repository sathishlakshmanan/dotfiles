vim.g.mapleader = ';'

local map = require('myconfig.utils').map

-- equivalent: vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {noremap = true})
map('i', 'jj', '<Esc>')
map('i', 'JJ', '<Esc>')
map('i', ':wq', '<Esc>:wq')
map('i', ':w', '<Esc>:w')
map('n', '<C-p>', ':lua _PYTHON_TOGGLE()<CR>')

map('n', '<Leader>o', 'o<Esc><Up>')
map('n', '<Leader>O', 'O<Esc><Down>')
map('n', 's', ';')

map('n', '<Leader>r', ':so %<CR>')

map('n', '<Leader>n', ':bnext<CR>')
map('i', '<Leader>n', '<Esc>:bnext<CR>')
map('n', '<Leader>p', ':bprevious<CR>')
map('i', '<Leader>p', '<Esc>:bprevious<CR>')
map('n', '<Leader>N', ':BufferLineMoveNext<CR>')
map('n', '<Leader>P', ':BufferLineMovePrev<CR>')

map('i', '(', '()<Left>')
map('i', '{', '{}<Left>')
map('i', '[', '[]<Left>')
map('i', "'", "''<Left>")
map('i', '"', '""<Left>')

map('i', ')', '<Esc>:lua check_and_move(")")<CR>')
map('i', '}', '<Esc>:lua check_and_move("}")<CR>')
map('i', ']', '<Esc>:lua check_and_move("]")<CR>')
-- to implement (problem with quotes)
-- map('i', "'", '<Esc>:lua check_and_move("\'")<CR>')
-- map('i', '"', '<Esc>:lua check_and_move("\"")<CR>')

map('i', '((', '(<CR><CR>)<Up><Tab>')
map('i', '{{', '{<CR><CR>}<Up><Tab>')
map('i', '[[', '[<CR><CR>]<Up><Tab>')
map('i', '"""', '""""""<Left><Left><Left>')
map('i', "'''", "''''''<Left><Left><Left>")

map('i', '{%', '{%  %}<Left><Left><Left>')
map('i', 'blc', '{% block content %}<CR><CR><CR><CR>{% endblock %}<Up><Up>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')

-- map('i', '<C-tab>', '<C-x><C-o>')

map('n', '<C-n>', ':NERDTreeToggle<CR>')
