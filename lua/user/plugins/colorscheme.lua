-- colorscheme setup
-- =================

-- alduin
return {
    -- "AlessandroYorba/Alduin",
    -- config = function()
    --     vim.cmd.colorscheme("alduin")
    --     -- changes to transparent background
    --     -- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
    -- end

    -- "rebelot/kanagawa.nvim",
    -- config = function()
    --     require("kanagawa").setup({
    --         background = {
    --             dark = "dragon",
    --             light = "lotus"
    --         }
    --     })
    --     vim.cmd.colorscheme("kanagawa")
    -- end

    -- "nyoom-engineering/oxocarbon.nvim",
    -- config = function()
    --     vim.opt.background = "dark"
    --     vim.cmd.colorscheme("oxocarbon")
    -- end

    -- "Biscuit-Colorscheme/nvim",
    -- config = function()
    --     require("biscuit").setup({})
    --     vim.cmd.colorscheme("biscuit")
    -- end

    "rose-pine/neovim",
        config = function()
            require("rose-pine").setup({})
            vim.cmd.colorscheme("rose-pine")
        end
}
