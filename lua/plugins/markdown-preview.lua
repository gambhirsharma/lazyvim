return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_theme = "dark"
    vim.g.mkdp_refresh_slow = 1
    vim.g.mkdp_open_to_the_world = 1
    vim.g.mkdp_open_ip = "127.0.0.1"
    vim.g.mkdp_echo_preview_url = 1
    vim.g.mkdp_port = "7777"
    vim.g.mkdp_browser = '/Applications/Safari.app'
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = { server = "http://localhost:7777" },
      disable_sync_scroll = 0,
      sync_scroll_type = "middle",
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
      content_editable = false,
    }
  end,
  ft = { "markdown" },
}
