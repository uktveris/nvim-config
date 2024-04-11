-- colorscheme setup
-- =================

-- alduin
return {
    "AlessandroYorba/Alduin",
    config = function()
        vim.cmd.colorscheme("alduin")
        -- changes to transparent background
        -- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
    end
}

-- { "rebelot/kanagawa.nvim" },
-- kanagawa
--require("kanagawa").setup({
--    background = {
--        dark = "dragon",
--        light = "lotus"
--    }
--})
--vim.cmd.colorscheme("kanagawa")
