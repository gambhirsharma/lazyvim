return {
  {
    "sourcegraph/sg.nvim",
    enable = false,
    dependencies = {
      "nvim-lua/plenary.nvim", --[[ "nvim-telescope/telescope.nvim ]]
    },
    config = function()
      require("sg").setup({
        enable_cody = true,
        accept_tos = true,
        event = "InsertEnter",
        -- event = "TextChangedI",
      })
    end,
  },
  {
    {
      "hrsh7th/nvim-cmp",
      dependencies = { "sourcegraph/sg.nvim" },
      ---@param opts cmp.ConfigSchema
      opts = function(_, opts)
        local cmp = require("cmp")
        opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "cody" } }))
      end,
    },
  },
}
