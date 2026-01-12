vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- enable soft wrap
    vim.opt_local.wrap = true
    -- wrap at word boundaries, not in the middle of words
    vim.opt_local.linebreak = true
    -- keep indentation on wrapped lines
    vim.opt_local.breakindent = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set('n', 'j', 'gj', { buffer = true })
    vim.keymap.set('n', 'k', 'gk', { buffer = true })
  end,
})
