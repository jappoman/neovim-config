return {
  -- Mason per gestire l'installazione dei server LSP
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  -- Mason-LSPconfig per collegare Mason con lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",                            -- Bash
        },
        automatic_installation = true,         -- Installa automaticamente i server LSP
      })
    end
  },

  -- Neovim LSPconfig per gestire le configurazioni LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Configurazione per ogni LSP
      lspconfig.bashls.setup {}
    end
  }
}
