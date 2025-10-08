return {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = {
    "rafamadriz/friendly-snippets", -- for snippets
    {
      "hrsh7th/nvim-cmp", -- only for cmdline completion
      event = "CmdlineEnter",
      dependencies = {
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
      },
      config = function()
        local cmp = require("cmp")

        -- Command line mode (:)
        cmp.setup.cmdline(":", {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({
            { name = "path" },
          }, {
            { name = "cmdline" },
          }),
        })

        -- Search (/ and ?)
        cmp.setup.cmdline({ "/", "?" }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = "buffer" },
          },
        })
      end,
    },
  },

  opts = {
    keymap = {
      preset = "default", -- Enter = confirm, Ctrl-Space = open, Ctrl-e = close
    },

    appearance = {
      nerd_font_variant = "mono", -- align icons nicely
    },

    completion = {
      documentation = { auto_show = false }, -- only show docs on request
    },

    sources = {
      default = { "lsp", "snippets", "path", "buffer" },
    },

    fuzzy = {
      implementation = "prefer_rust_with_warning", -- best performance
    },
  },

  -- allows extending sources in other files without overwriting
  opts_extend = { "sources.default" },
}
