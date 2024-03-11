local M = {
        -- location (ommits gihub.com/ and .git)
        "AlessandroYorba/Alduin",
        -- other specifications
        lazy = false,
}

function M.config()
        --vim.cmd.colorscheme = "alduin"
        vim.cmd("colorscheme alduin")

        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
end

-- debug purposees
--print("colorscheme called!")

return M
