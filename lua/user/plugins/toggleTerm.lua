return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")
        toggleterm.setup({
            name = "my-terminal",
            size = 18,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            autochdir = true,
            shade_terminals = true,
            persist_mode = true,
            persist_size = true,
            shell = "zsh",
            direction = "horizontal",
        })
        local k = vim.keymap
        k.set("n", "<leader>t1", ":1ToggleTerm<CR>", {noremap = true, silent = true})
        k.set("n", "<leader>t2", ":2ToggleTerm<CR>", {noremap = true, silent = true})
        k.set('n', '<leader>ta', ':ToggleTermToggleAll<CR>', {noremap = true, silent = true})
    end
}

