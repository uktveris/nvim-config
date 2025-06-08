-- Options setup
-- =============

local o = vim.opt

-- numbers
o.number = true
o.relativenumber = true
o.signcolumn = "yes"

-- window splitting
o.splitbelow = true
o.splitright = true

-- disable wrapping
o.wrap = false

-- fixing tabs
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

o.clipboard = "unnamedplus"
-- o.clipboard:append("unnamedplus")

-- scrolloff: how many lines till the screen has to move
--o.scrolloff = 5

-- mouse
o.mouse = "a"

--search
o.hlsearch = true
o.ignorecase = true
o.smartcase = true

-- enabling more colors
o.termguicolors = true

-- markdown stuff
o.conceallevel = 0

-- setting up diagnostics

local diagostic_opts = {
    -- shows inline diagnostics 
    virtual_text = false,
    -- shows diagnostics in a new virtual line below
    virtual_lines = true,
}
vim.diagnostic.config(diagostic_opts)
