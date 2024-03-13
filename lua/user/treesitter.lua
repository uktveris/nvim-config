local M = {
    "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPost", "BufNewFile"},
}

function M.config()
    require("nvim-treesitter.configs").setup {
        ensure_installed = {"lua", "markdown", "java", "python", "c", "typescript"},
        indent = {enable = true},
        auto_install = true,
    }
end

return M
