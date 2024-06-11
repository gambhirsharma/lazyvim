return {
  "L3MON4D3/LuaSnip",
  build = (not LazyVim.is_win())
      and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
      or nil,
  dependencies = {
    {
      'mlaursen/vim-react-snippets',
      config = function()
        require("vim-react-snippets").lazy_load()
      end,
    },
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    {
      "nvim-cmp",
      dependencies = {
        "saadparwaiz1/cmp_luasnip",
      },
      opts = function(_, opts)
        opts.snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        }
        table.insert(opts.sources, { name = "luasnip" })
      end,
    },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  config = function()
    local ls = require("luasnip")

    ls.filetype_extend("typescript", { "javascript" })
    ls.filetype_extend("typescriptreact", { "javascript" })
    ls.filetype_extend("javascriptreact", { "javascript" })
    ls.filetype_extend("vue", { "javascript" })

    require("config.snip")
  end
}
