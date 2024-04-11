-- Commenting plugin setup
-- =======================

return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()

        -- local k = vim.keymap
        -- k.set("n", "<C-/>", "gcc")
    end
}
