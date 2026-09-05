return {
	"saghen/blink.cmp",
	-- Optizoneel: voegt standaard snippets toe
	dependencies = "rafamadriz/friendly-snippets",
	version = "*", -- Gebruik stabiele releases

	opts = {
		-- 'default' preset bootst standaard IDE-gedrag na (pijltjes, enter, tab)
		keymap = {
			-- Enter accepteert de suggestie en voegt deze in (insert)
			["<CR>"] = { "accept", "fallback" },

			-- Tab accepteert en overschrijft (select and accept)
			["<Tab>"] = { "select_and_accept", "fallback" },

			-- Navigeer omlaag door het menu (kies jouw favoriet of gebruik beide)
			["<C-j>"] = { "select_next", "fallback" },
			["<C-n>"] = { "select_next", "fallback" },

			-- Navigeer omhoog door het menu
			["<C-k>"] = { "select_prev", "fallback" },
			["<C-p>"] = { "select_prev", "fallback" },

			-- Optioneel: Scrollen in het documentatievenster
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
			["<C-b>"] = { "scroll_documentation_up", "fallback" },
		},

		appearance = {
			-- Zorgt dat je Catppuccin thema de kleuren perfect overneemt
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		completion = {
			menu = {
				-- De afgeronde randen voor de IntelliJ look
				border = "rounded",

				-- Perfect uitgelijnde IDE kolommen:
				-- [Icoon] | [Functienaam & Parameters] | [Return Type]
				draw = {
					columns = {
						{ "kind_icon" },
						{ "label", "label_description", gap = 1 },
						{ "kind" },
					},
				},
			},

			-- Het zwevende documentatievenster naast je suggesties
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 250, -- Korte vertraging voelt minder overweldigend
				window = { border = "rounded" },
			},
		},

		-- Ingebouwde bronnen in plaats van losse plugins
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
}
