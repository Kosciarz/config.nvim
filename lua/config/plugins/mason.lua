return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "ts_ls",
            "pylsp",
            "rust_analyzer",
            "gopls",
            "clangd",
        },
    },
    dependencies = {
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
        {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
        {
            "mason-org/mason.nvim",
            opts = {
                ensure_installed = {
                    "debugpy",
                    "prettier",
                    "black",
                    "stylua",
                    "cpplint",
                    "cpptools",
                },
            },
        },
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason-tool-installer").setup({
            ensure_installed = {
                "debugpy",
                "prettier",
                "black",
                "stylua",
                "cpplint",
                "cpptools",
            },
            auto_update = true,
            run_on_start = true,
        })
    end,
}
