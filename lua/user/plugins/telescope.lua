return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = {
                    "smart"
                },
                mappings = {
                    i = {
                        -- move to prev result
                        ["<C-k>"] = actions.move_selection_previous,
                        -- move to next result
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
                    }
                }
            }
        })

        -- setting keymaps to navigate telescope
        local k = vim.keymap
        -- find files in current working directory
        k.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
        -- find recent files
        k.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>")
        -- find string in current working directory
        k.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
        -- find string under cursor in current working directory
    end
}
