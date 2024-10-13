-- lua/plugins/nvim-cmp.lua
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- Dipendenze per nvim-cmp
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/vim-vsnip", -- Snippet manager
    "hrsh7th/cmp-vsnip", -- Snippet completions
  },
  config = function()
    local cmp = require 'cmp'

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- Usa vsnip o un altro plugin snippet
        end,
      },
      mapping = {
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Conferma con Enter
        ['<Up>'] = cmp.mapping.select_prev_item(),         -- Mappa la freccia su per selezionare l'opzione precedente
        ['<Down>'] = cmp.mapping.select_next_item(),       -- Mappa la freccia giù per selezionare l'opzione successiva
        ['<Tab>'] = cmp.mapping.select_next_item(),        -- Tab per scorrere in avanti
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),      -- Shift+Tab per scorrere indietro
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- Autocompletamento basato su LSP
      }, {
        { name = 'buffer' },   -- Autocompletamento basato sul buffer attuale
        { name = 'path' },     -- Completamento dei percorsi dei file
      })
    })
  end,
}
