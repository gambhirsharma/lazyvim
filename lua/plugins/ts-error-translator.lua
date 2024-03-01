return {
  -- {
  -- "pmizio/typescript-tools.nvim",
  -- config = function()
  --   require("typescript-tools").setup({
  --     -- disable formatting because using `prettier`
  --     on_attach = function(client, bufnr)
  --       client.server_capabilities.documentFormattingProvider = false
  --       client.server_capabilities.documentRangeFormattingProvider = false
  --     end,
  --     handlers = {
  --       ["textDocument/publishDiagnostics"] = require("ts-error-translator").lsp_publish_diagnostics_override(),
  --     },
  --   })
  -- end,
  -- },
	{
		"dmmulroy/ts-error-translator.nvim",
		config = function()
			require("ts-error-translator").setup()
		end,
	},
}
