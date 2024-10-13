return {
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", -- Aggiorna automaticamente i parser
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Aggiungi i linguaggi che desideri qui
        ensure_installed = { "c", "lua", "python", "javascript", "bash", "json", "typescript", "yaml", "sql" }, -- Puoi specificare i linguaggi
        highlight = {
          enable = true,                                                                                        -- Abilita l'evidenziazione della sintassi
        },
        indent = {
          enable = true, -- Abilita l'auto-indentazione basata su Treesitter
        },
      })
    end,
  }
}
