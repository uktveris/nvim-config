-- vim variable tables (not used if u are not nvim plugin dev)
-- vim.b = current buffer scope variables
-- vim.w = currentwindow scope variables
-- vim.t = current tab scope variables
-- vim.g = vim global scope variables (can be accessed from anywhere)

-- vim option tables
-- vim.bo = current buffer options
-- vim.wo = current window options
-- vim.to = current tab options
-- vim.o = vim global scope options
-- (does not specify the scope for nothing)


local opts = {noremap = true, silent = true}
local k = vim.api.nvim_set_keymap
--local k = vim.keymap.set

-- allows copy and paste
vim.cmd([[set clipboard+=unnamedplus]])
vim.cmd([[set clipboard+=unnamed]])

-- remap space as leader
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

k('n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

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
-- commented out to use nvim tree (same keymap)
--k('n', '<leader>e', ':Lex 25<cr>', opts)

-- navigate buffers
--k('n', '<S-l>', ':bnext<CR>', opts)
--k('n', '<S-h>', ':bprevious<CR>', opts)

--splitting
k('n', '<S-z>', ':vsplit<CR>', opts)
k('n', '<S-x>', ':split<CR>', opts)

-- visual mode
k('v', '<', '<gv', opts)
k('v', '>', '>gv', opts)
