return {
  -- Mason installation
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "lua-language-server",
        "luau-lsp",
        "css-lsp",
        "prettier",
        "stylua",
        "rust-analyzer",
        "emmet-language-server",
        "astro-language-server",
        "elixir-ls",
        "pyright",
        "htmx-lsp",
        "html-lsp",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lspconfig")
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end,
  },
}
