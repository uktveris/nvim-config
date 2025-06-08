-- AUTOCOMPLETION (CMP) SETUP
-- =========================
return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },

  version = "1.*",
  ---@module "blink.cmp"
  ---@type blink.cmp.Config
  opts = {
    -- "default" (recommended) for mappings similar to built-in completions (C-y to accept)
    -- "super-tab" for mappings similar to vscode (tab to accept)
    -- "enter" for enter to accept
    -- "none" for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { 
        preset = "enter", 

      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-j>'] = { 'select_next', 'fallback' },
    },

    appearance = {
      nerd_font_variant = "mono"
    },

    completion = { documentation = { auto_show = true } },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}

-- old setup, commented out for now -> using new setup above

-- return {
--     "hrsh7th/nvim-cmp",
--     event = "InsertEnter",
--     dependencies = {
--         "hrsh7th/cmp-buffer",
--         "hrsh7th/cmp-path",
--         "hrsh7th/cmp-nvim-lsp",
--         "saadparwaiz1/cmp_luasnip",
--         "onsails/lspkind.nvim",
--         {
--             "L3MON4D3/LuaSnip",
--             dependencies = {
--                 "rafamadriz/friendly-snippets"
--             }
--         }
--     },
--     config = function()
--         local cmp = require("cmp")
--         local luasnip = require("luasnip")
--         local lspkind = require("lspkind")
--         require("luasnip/loaders/from_vscode").lazy_load()
--
--         cmp.setup({
--             snippet = {
--                 expand = function(args)
--                     luasnip.lsp_expand(args.body)
--                 end
--             },
--             mapping = cmp.mapping.preset.insert({
--                 -- previous suggestion
--                 ["<C-k>"] = cmp.mapping.select_prev_item(),
--                 -- next suggestion
--                 ["<C-j>"] = cmp.mapping.select_next_item(),
--                 ["<C-b>"] = cmp.mapping.scroll_docs(-1),
--                 ["<C-f>"] = cmp.mapping.scroll_docs(1),
--                 ["<C-Space>"] = cmp.mapping.complete(),
--                 ["<C-e>"] = cmp.mapping.abort(),
--                 ["<CR>"] = cmp.mapping.confirm({
--                     select = false
--                 })
--             }),
--             -- sources for autocompletion
--             -- order here matters
--             -- in this case snippets from
--             -- luasnip engine will be suggested first
--             sources = cmp.config.sources({
--                 {
--                     name = "luasnip"
--                 },
--                 {
--                     name = "buffer"
--                 },
--                 {
--                     name = "path"
--                 }
--             }),
--             formatting = {
--                 format = lspkind.cmp_format({
--                     maxwidth = 50,
--                     ellipsis_char = "..."
--                 })
--             }
--         })
--     end
-- }
