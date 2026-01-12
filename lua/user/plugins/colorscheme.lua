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

    -- "slugbyte/lackluster.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- init = function()
    --     -- vim.cmd.colorscheme("lackluster")
    --     -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
    --     vim.cmd.colorscheme("lackluster-mint")
    -- end,

    -- 'stevedylandev/darkmatter-nvim',
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    -- vim.cmd('colorscheme darkmatter')
    -- end,

    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    require("vague").setup({
    })
    vim.cmd("colorscheme vague")
    end

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

    -- "Biscuit-Colorscheme/nvim",
    -- config = function()
    --     require("biscuit").setup({})
    --     vim.cmd.colorscheme("biscuit")
    -- end

    -- "aktersnurra/no-clown-fiesta.nvim",
    -- config = function()
    --     require("no-clown-fiesta").setup({})
    --     vim.cmd.colorscheme("no-clown-fiesta")
    -- end

    -- "Domeee/mosel.nvim",
    -- config = function()
    --     vim.cmd.colorscheme("mosel")
    -- end
}

