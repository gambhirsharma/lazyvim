return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "htmx-lsp",
        "html-lsp",
        "css-lsp",
        "prettier",
        "stylua",
        "typescript-language-server",
        "eslint-lsp",
        "tailwindcss-language-server",
        "emmet-language-server",
        "astro-language-server",
        "elixir-ls",
        "rust-analyzer",
        "pyright",
        "clang-format",
        "codelldb",
        "clangd",
        "lua-language-server",
      },
    },
    require("mason").setup({
    PATH = "prepend", -- "skip" seems to cause the spawning error
})
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lspconfig")
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<space>f", function()
        vim.lsp.buf.format({ async = true })
      end, opts)
    end,
  },
}
