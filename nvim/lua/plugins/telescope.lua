return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim"
    },
    config = function()
      require("telescope").setup({
        extensions = {
          file_browser = {
            theme = "ivy",
            hijack_netrw = true, -- opzionale, disabilita netrw in favore di file_browser
          },
        },
      })
      -- Carica l'estensione del file browser
      require("telescope").load_extension("file_browser")
    end
  }
}
