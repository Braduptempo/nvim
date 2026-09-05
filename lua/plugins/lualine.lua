return {
	"nvim-lualine/lualine.nvim",
	config = function()
		-- 1. Definieer de Trouble statusline component
		local trouble = require("trouble")
		local symbols = trouble.statusline({
			mode = "lsp_document_symbols",
			groups = {},
			title = false,
			filter = { range = true },
			format = "{kind_icon}{symbol.name:Normal}",
			hl_group = "lualine_c_normal",
		})

		-- 2. Configureer Lualine met je thema én de Trouble sectie
		require("lualine").setup({
			options = {
				theme = "gruvbox-material",
			},
			sections = {
				-- We voegen de Trouble symbolen toe aan sectie C, direct naast de bestandsnaam
				lualine_c = {
					"filename",
					{
						symbols.get,
						cond = symbols.has,
					},
				},
			},
		})
	end,
}
