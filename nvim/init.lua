require("config.lazy")
vim.opt.clipboard = "unnamedplus"
vim.wo.number = true

-- Hide default diagnostic
vim.diagnostic.config({ virtual_text = false })

vim.fn.sign_define("DiagnosticSignError", { text = "", numhl = "DiagnosticError" })
vim.fn.sign_define("DiagnosticSignWarn",  { text = "", numhl = "DiagnosticWarn" })
vim.fn.sign_define("DiagnosticSignInfo",  { text = "", numhl = "DiagnosticInfo" })
vim.fn.sign_define("DiagnosticSignHint",  { text = "", numhl = "DiagnosticHint" })

-- Mappature con leader key
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- <leader>ff -> Trova file usando Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)

-- <leader>fd -> Trova directory e cambia la directory di lavoro
map('n', '<leader>fd', ':Telescope find_files cwd=%:p:h<CR>', opts)

-- <leader>fb -> Trova buffer aperti usando Telescope
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)

-- <leader>fe -> Usa il file browser di Telescope
map('n', '<leader>fe', ':Telescope file_browser<CR>', opts)

-- <leader>ft -> Apri l'albero dei file usando nvim-tree
map('n', '<leader>ft', ':NvimTreeToggle<CR>', opts)

-- Configurazioni di indentazione
vim.opt.tabstop = 2       -- Visualizza Tab come due spazi
vim.opt.shiftwidth = 2    -- Imposta l'indentazione automatica a due spazi
vim.opt.expandtab = true  -- Usa spazi invece di Tab
