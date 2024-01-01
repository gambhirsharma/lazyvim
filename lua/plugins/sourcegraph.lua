return {
  "sourcegraph/sg.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", --[[ "nvim-telescope/telescope.nvim ]]
  },
  config = function()
    require("sg").setup({
      enable_cody = true,
      accept_tos = true,
    })
  end,
}
