-- shorthand
local o = vim.opt

-- debug purposes
-- print("Options.lua is being loaded!")

-- clipboard options
o.clipboard = "unnamedplus"

-- cmp
o.completeopt = {"menuone", "noselect"}

--search
o.hlsearch = true
o.ignorecase = true
o.smartcase = true

-- window management
o.splitbelow = true
o.splitright = true 

-- more colors
o.termguicolors = true

-- faster completion
o.updatetime = 400

--tabs
o.expandtab = true
o.showtabline = 1

-- popup
o.pumheight = 10
o.pumblend = 10

-- mouse
o.mouse = "a"


--lines & columns
o.number = true
o.signcolumn = "yes"
o.wrap = false

-- markdown
o.conceallevel = 0

-- undo
o.undofile = true
