-- markdown: enable soft wrap of text
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

-- markdown: better navigation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set('n', 'j', 'gj', { buffer = true })
    vim.keymap.set('n', 'k', 'gk', { buffer = true })
  end,
})

-- generic format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.go", "*.rs", "*.ts", "*.lua" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
