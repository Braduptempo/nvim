return {
    "navarasu/onedark.nvim",
    priority = 1000, -- Essentieel: zorg dat het thema laadt vóór alle andere plugins
    config = function()
        require('onedark').setup {
            -- Kies je favoriete variant: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', of 'light'
            style = 'darker',

            -- Zet dit op true als je de achtergrond van je terminal (zoals Kitty)
            -- er mooi transparant doorheen wilt laten schijnen.
            transparent = true,

            -- Zorgt voor betere integratie met zwevende menu's zoals je autocompletion
            term_colors = true,

            -- Zorgt ervoor dat UI-elementen de juiste styling krijgen
            cmp_itemkind_reverse = false,

            -- Optioneel: hier kun je handmatig specifieke highlight-groepen overschrijven
            colors = {},
            highlights = {}
        }

        -- Activeer het thema direct na de configuratie
        require('onedark').load()
    end,
}
