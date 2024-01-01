-- if true then
--   return {}
-- end

return {
  --tokyonight colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = true,
    --  opts = { style = "moon" },
  },

  -- catppuccin-mocha colorscheme
  {
    "catppuccin/nvim",
    lazy = true,
    -- opts = { style = "mocha",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = false, -- show the '~' characters after the end of buffers
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          notify = false,
          mini = false,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
    end,
  },

  -- Gruvbox colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    -- event = 'User ColorSchemeLoad'
    config = function()
      -- Default options:
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "soft", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
      -- vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "lunarvim/horizon.nvim",
    lazy = true,
    priority = 1000,
    event = "User ColorSchemeLoad",
    opts = function()
      return { transparent = true }
    end,
  },

  -- solarized-osaka colorscheme
  {
    "craftzdog/solarized-osaka.nvim",
    name = "solarized-osaka",
    lazy = true,
    priority = 1000,
    event = "User ColorSchemeLoad",
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "kanagawa.nvim",
    priority = 1000,
    config = function()
      -- Default options:
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })

      -- setup must be called before loading
      -- vim.cmd("colorscheme kanagawa")
    end,
    -- Default options:
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
