-- Mason - LSP config bridge
-- ========================
-- keeps the same plugin names for
-- both mason and language server packages


return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim"
    },
    config = function()
        require("mason-lspconfig").setup()
        require("mason-lspconfig").setup_handlers ({
            function (server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup ({})
            end,
        })
    end
}
