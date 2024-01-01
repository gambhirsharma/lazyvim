local lspconfig = require("lspconfig")

lspconfig.tailwindcss.setup({
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
    "aspnetcorerazor",
    "astro",
    "astro-markdown",
    "blade",
    "clojure",
    "django-html",
    "htmldjango",
    "edge",
    "eelixir",
    "elixir",
    "ejs",
    "erb",
    "eruby",
    "gohtml",
    "gohtmltmpl",
    "haml",
    "handlebars",
    "hbs",
    "html",
    "html-eex",
    "heex",
    "jade",
    "leaf",
    "liquid",
    "markdown",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "php",
    "razor",
    "slim",
    "twig",
    "css",
    "less",
    "postcss",
    "sass",
    "scss",
    "stylus",
    "sugarss",
    "javascript",
    "javascriptreact",
    "reason",
    "rescript",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
  init_options = {
    userLanguages = {
      eelixir = "html-eex",
      eruby = "erb",
    },
  },
  -- on_new_config = see source file,
  root_dir = lspconfig.util.root_pattern(
    "tailwind.config.js",
    "tailwind.config.cjs",
    "tailwind.config.mjs",
    "tailwind.config.ts",
    "postcss.config.js",
    "postcss.config.cjs",
    "postcss.config.mjs",
    "postcss.config.ts",
    "package.json",
    "node_modules",
    ".git"
  ),
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning",
      },
      validate = true,
    },
  },
})

-- #########################################################################################################################
-- adding tsserver
-- local function organize_imports()
--   local params = {
--     command = "_typescript.organizeImports",
--     arguments = { vim.api.nvim_buf_get_name(0) },
--   }
--   vim.lsp.buf.execute_command(params)
-- end

lspconfig.tsserver.setup({
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "html",
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git"),
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
  -- commands = {
  --   OrganizeImports = {
  --     organize_imports,
  --     description = "Organize Imports",
  --   },
  -- },
})
--

-- adding rust-analyser
lspconfig.rust_analyzer.setup({
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

--

-- adding clangd config
lspconfig.clangd.setup({
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    -- on_attach(client, bufnr)
  end,
  -- capabilities = capabilities,
})

-- ememt-lsp config
lspconfig.emmet_language_server.setup({
  filetypes = {
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "pug",
    "typescriptreact",
    "vue",
  },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

-- css lsp
-- lspconfig.cssls.setup({ on_attach = on_attach, capabilities = capabilities, filetypes = { "css", "scss", "less" } })

--elixier config
lspconfig.elixirls.setup({
  filetypes = { "elixir", "eelixir", "heex", "surface" },
})
