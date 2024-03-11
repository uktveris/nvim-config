local opts = {noremap = true, silent = true}
--local k = vim.api.nvim_set_keymap
local k = vim.keymap.set

-- allows copy and paste
vim.cmd([[set clipboard+=unnamedplus]])
vim.cmd([[set clipboard+=unnamed]])

-- remap space as leader
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- normal mode

-- highliting
k('n', '*', '*zz', opts)
k('n', '#', '#zz', opts)

-- better navigation
k('n', '<C-h>', '<C-w>h', opts)
k('n', '<C-j>', '<C-w>j', opts)
k('n', '<C-k>', '<C-w>k', opts)
k('n', '<C-l>', '<C-w>l', opts)

-- end of line, beginning of line
k('n', '<s-h>', '^', opts)
k('n', '<s-l>', '$', opts)

-- arrow resizing
k('n', '<C-Up>', ':resize +2<CR>', opts)
k('n', '<C-Down>', ':resize -2<CR>', opts)
k('n', '<C-Left>', ':vertical resize +2<CR>', opts)
k('n', '<C-Right>', ':vertical resize -2<CR>', opts)

-- open lexplorer  (explorer on the side, number shows how big explorer is)
k('n', '<leader>e', ':Lex 25<cr>', opts)

-- navigate buffers
--k('n', '<S-l>', ':bnext<CR>', opts)
--k('n', '<S-h>', ':bprevious<CR>', opts)

--splitting
k('n', '<S-z>', ':vsplit<CR>', opts)
k('n', '<S-x>', ':split<CR>', opts)

-- visual mode
k('v', '<', '<gv', opts)
k('v', '>', '>gv', opts)



