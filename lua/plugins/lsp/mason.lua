-- mason / mason-lspconfig v2 require Neovim 0.11+, so stay on v1 while on 0.10
return {
  {
    "williamboman/mason.nvim",
    version = "^1.0.0",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "^1.0.0",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      -- list of servers for mason to install
      ensure_installed = {
        "jdtls",
        "kotlin_language_server",
        "rust_analyzer",
        "ts_ls",
        "clangd",
        "html",
        "cssls",
        "lua_ls",
        "graphql",
        "pyright",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "eslint_d",
      },
    },
  },
}
