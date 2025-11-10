-- LSP CONFIG SETUP
-- ================

return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },

  -- example using `opts` for defining servers
  opts = {
    servers = {
      lua_ls = {}
    }
  },
  config = function(_, opts)
    -- old method, deprecated
    -- local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      -- passing config.capabilities to blink.cmp merges with the capabilities in your
      -- `opts[server].capabilities, if you've defined it
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      -- lspconfig[server].setup(config)
      -- using new method with vim.lsp.enable()

      local k = vim.keymap
      -- find files in current working directory
      k.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    end
  end

}
