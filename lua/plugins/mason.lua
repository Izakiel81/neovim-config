return {
    "mason-org/mason-lspconfig.nvim",
    opts = {"lua_ls", "vimls", "ts_ls"},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
