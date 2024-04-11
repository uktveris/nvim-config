-- Treesitter setup
-- ================

return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"c", "lua", "vim", "vimdoc", "query"},
            -- auto installs new parser when opening
            -- a new file with new language
            -- (never encountered by treesitter before
            auto_install = true,
            highlight = {
                enable = true
            },
        })
    end
}
