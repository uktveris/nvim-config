-- Nvim-tree (file explorer) setup
-- ============================
return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        local nvim_tree = require("nvim-tree")
        -- nvim tree configuration
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvim_tree.setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 40,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
        -- adding some keymaps to
        -- quicker access to nvim-tree file explorer
        local k = vim.keymap
        -- toggle (open and close nvim tree
        k.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
        -- toggle and open explorer in directory of current file
        k.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
        -- collapse all the directories that are extended
        k.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
        -- refresh file explorer
        k.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    end
}

