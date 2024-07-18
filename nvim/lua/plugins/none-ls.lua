return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
        -- Lua
				null_ls.builtins.formatting.stylua,
      },
		})

		vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
	end,
}