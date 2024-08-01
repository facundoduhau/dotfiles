return {
	{
		"neovim/nvim-lspconfig",
		config = function()
	    local capabilities = require('cmp_nvim_lsp').default_capabilities() -- Capabilities llama al lsp.

      local lspconfig = require("lspconfig")

      -- Agrego SNIPPETS aca.

			lspconfig.lua_ls.setup({ -- Lua
        capabilities = capabilities
      })
			lspconfig.clangd.setup({ -- C++
        capabilities = capabilities
      })
      lspconfig.html.setup({ -- Html
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({ -- TypeScript
        capabilities = capabilities
      })
      lspconfig.cssls.setup({ -- CSS
        capabilities = capabilities
      })
      lspconfig.pyright.setup({ -- Python
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
    opts = {
      ensure_installed = {
        "typescript-language-server"
      }
    },
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
