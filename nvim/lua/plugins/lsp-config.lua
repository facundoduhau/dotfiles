return {
	{
		"neovim/nvim-lspconfig",
		config = function()
	    local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
			lspconfig.clangd.setup({
        capabilities = capabilities
      })
			vim.keymap.set("n", "<leader>ho", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>df", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ac", vim.lsp.buf.code_action, {})
		end,
	},
  {
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{

		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
}
