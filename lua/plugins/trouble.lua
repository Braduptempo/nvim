return {
    "folke/trouble.nvim",
    opts = {}, -- De standaardinstellingen zijn direct goed
    config = function(_, opts)
        -- Start Trouble met de standaard opties
        require("trouble").setup(opts)

        -- Forceer een transparante achtergrond voor het Trouble paneel
        vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "NONE", ctermbg = "NONE" })
        vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "NONE", ctermbg = "NONE" })

        -- Optioneel: maak ook de linkermarge (waar de icoontjes staan) transparant
        vim.api.nvim_set_hl(0, "TroubleSignColumn", { bg = "NONE", ctermbg = "NONE" })
    end,
    keys = {
        -- Toon alle fouten in je hele project
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Project Errors (Trouble)",
        },
        -- Toon alleen fouten in het huidige bestand
        {
            "<leader>xd",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "File Errors (Trouble)",
        },
    },
}
