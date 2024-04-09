-- /nvim is also in a rtp;
-- everything that is inside init.lua
-- is called upon running

-- nvim tree configuration
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("user.options")
require("user.keymaps")
require("user.lazy")
require("user.pluginspec")
