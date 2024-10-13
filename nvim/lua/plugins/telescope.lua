return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "2KAbhishek/octohub.nvim"
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
      -- Carica l'estensione octohub per i repository
      require("telescope").load_extension("repos")
    end
  }
}
