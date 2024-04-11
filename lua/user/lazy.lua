-- LAZY SETUP
-- ========================

-- defines the path where lazy is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- checks if lazy path exists
if not (vim.uv or vim.loop).fs_stat(lazypath) then
-- clones lazy git repository to the lazy path
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end -- <- end of if statement

-- rtp -> runtime path
-- nvim checks rtp when running
-- for plugins, syntax highlighting, lsp, etc.
-- runtime path is array of strings
-- "prepend" prepends lazypath to the beginning
-- of the string array inside rtp
vim.opt.rtp:prepend(lazypath)
-- same as
-- vim.opt.rtp.prepent(vim.opt.rtp, lazypath)

-- checks for lua/lazy file
-- inside lazy git repo and executes it
-- setup() sets up lazy, can be
-- supplied with array of plugins
--------------------------------
-- require("lazy").setup("plugins-directory-folder")
-- since setup() can accept an array / table of
-- arrays / tables, defining plugins
-- inside each plugin return statement need to be
-- used to return the plugin table/array, e.g:
-- return {"AlessandroYorba/Alduin", config = 
-- function() require whatever}
--------------------------------

-- dependencies make sure that certain plugin
-- is installed (and config is run) first and only then
-- current plugin is installed and config is run
require("lazy").setup({{ import = "user.plugins"}}, {
    checker = {
        enabled = true,
        notify = false
    },
    change_detection = {
        notify = false
    },
})
