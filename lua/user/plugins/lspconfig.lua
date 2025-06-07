-- LSP CONFIG SETUP
-- ================

return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    dependencies = {
        -- "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        {
            "antosha417/nvim-lsp-file-operations",
            config = true
        }
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local k = vim.keymap
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("MyLspConfig", {}),
            callback = function(event)
                -- buffer options
                local opts = {
                    buffer = event.buf,
                    silent = true
                }
                -- show LSP references
                k.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
                -- go to declaration
                k.set("n", "gD", vim.lsp.buf.declaration, opts)
                -- see available code actions, in visual mode will apply to selection
                k.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
                -- smart rename
                k.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                -- show  diagnostics for file
                k.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
                -- show diagnostics for line
                k.set("n", "<leader>d", vim.diagnostic.open_float, opts)
                -- show documentation for what is under cursor
                k.set("n", "K", vim.lsp.buf.hover, opts)
            end
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()

        local signs = {
            Error = "",
            Warning = "",
            Hint = "",
            Info = "󰋼"
        }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, {
                text = icon,
                texthl = hl,
                numhl = ""
            })
        end

        mason_lspconfig.setup()

        local servers = mason_lspconfig.get_installed_servers()

        for _, server_name in ipairs(servers) do
            local opts = {
                capabilities = capabilities
            }

            if server_name == "lua_ls" then
                opts.settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"}
                        },
                        completion = {
                            callSnippet = "Replace"
                        },
                    },
                }
            end

            lspconfig[server_name].setup(opts)
        end
    end
}
