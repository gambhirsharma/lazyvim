return {
  -- tokyonight colorscheme
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   config = function()
  --     require("tokyonight").setup({
  --       style = "night",
  --       transparent = true,
  --     })
  --   end,
  -- },
  -- rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      })

      -- vim.cmd("colorscheme rose-pine")
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
  -- catppuccin-mocha colorscheme
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   name = "catppuccin",
  --   -- opts = { style = "mocha",
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "mocha", -- latte, frappe, macchiato, mocha
  --       background = { -- :h background
  --         light = "latte",
  --         dark = "mocha",
  --       },
  --       transparent_background = true,
  --       show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  --       term_colors = false,
  --       dim_inactive = {
  --         enabled = false,
  --         shade = "dark",
  --         percentage = 0.15,
  --       },
  --       no_italic = false, -- Force no italic
  --       no_bold = false, -- Force no bold
  --       styles = {
  --         comments = { "italic" },
  --         conditionals = { "italic" },
  --         loops = {},
  --         functions = {},
  --         keywords = {},
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = {},
  --         properties = {},
  --         types = {},
  --         operators = {},
  --       },
  --       color_overrides = {},
  --       custom_highlights = {},
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         telescope = true,
  --         notify = false,
  --         mini = false,
  --         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  --       },
  --     })
  --   end,
  -- },

  -- Gruvbox colorscheme
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        terminal_colors = false, -- add neovim terminal colors
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
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  -- {
  --   "lunarvim/horizon.nvim",
  --   name = "horizon",
  --   lazy = true,
  --   opts = function()
  --     require("horizon").setup()
  --   end,
  -- },

  -- solarized-osaka colorscheme
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   name = "solarized-osaka",
  --   lazy = false,
  --   -- priority = 1000,
  --   opts = function()
  --     require("solarized-osaka").setup({
  --       transparent = true,
  --     })
  --   end,
  -- },
  -- kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    name = "kanagawa.nvim",
    -- priority = 1000,
    config = function()
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
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000",
    },
  },
  { "cranberry-clockworks/coal.nvim", lazy = false },
  -- {
  --   "bluz71/vim-nightfly-guicolors",
  --   lazy = false,
  --   name = "nightfly",
  --   -- config = function()
  --   --   require('vim-nightfly-guicolors').setup({
  --   --     nightflyTransparent= true
  --   --   })
  --   -- end,
  -- },
  -- {
  --   dir = "~/Coding/NeoVim-Plugins-dev/vesper.nvim/",
  --   dev = true,
  --   lazy = false,
  --   priority = 1000,
  --   name = "vesper",
  --   -- config = function()
  --   --   vim.cmd([[colorscheme vesper]])
  --   -- end,
  -- },
  -- {
  --   "gambhirsharma/vesper.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  --
  -- cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = true,
      })
      -- vim.cmd("colorscheme cyberdream") -- set the colorscheme
    end,
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        overrides = {
          -- FloatBorder = { bg = "#ffffff" },
          -- FloatTitle = { bg = "#ffffff" },
        },
      })
    end,
  },
  { "EdenEast/nightfox.nvim", lazy = false, priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
