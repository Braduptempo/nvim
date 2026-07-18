return{
  "nvim-mini/mini.nvim",
  version = 'false',
  config = function ()
    local MiniCompletion = require("mini.completion")
    MiniCompletion.setup({
        lsp_completion = {
            auto_setup = true,
            process_items = function (items, base)
            return MiniCompletion.default_process_items(items, base, {
                filtersort = "fuzzy",
            })
        end
        }
    })

    require("mini.surround").setup()
    -- Default Keymaps
    -- | `sa` | Add surrounding or Direct with 'saiw' |
    -- | `sd` | Delete surrounding |
    -- | `sr` | Replace surrounding |
    -- | `sf` | Find surrounding (right) |
    -- | `sF` | Find surrounding (left) |
    -- | `sh` | Highlight surrounding |
    -- | `sn` | Update n_lines |
    -- | `l` / `n` | as suffix for prev/next |

    local MiniSnippets = require("mini.snippets")
    MiniSnippets.setup({
        snippets = {
            MiniSnippets.gen_loader.from_lang(),
        },
    })
    MiniSnippets.start_lsp_server({match = false})

    --- MiniDiff ---
    local MiniDiff = require('mini.diff')
    MiniDiff.setup({
      source = MiniDiff.gen_source.git({ index = false }),
    })
    -- vim.keymaps.set('n','[h', function() MiniDiff.goto_hunk('prev' end, {desc = 'Prev hunk' })
    -- vim.keymaps.set('n',']h', function() MiniDiff.goto_hunk('next' end, {desc = 'Next hunk' })



  end
}
