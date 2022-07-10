local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", opts)

-- Nvimtree
--keymap("n", "<F10>", ":NERDTreeToggle<cr>", opts)

-- Tagbar
keymap("n", "<F8>", ":TagbarToggle<cr>", opts)

-- Neotree
keymap("n", "<F10>", ":Neotree position=left<cr>", opts)
keymap("n", "<leader>g", ":Neotree position=float<cr>", opts)
keymap("n", "<leader>G", ":Neotree position=current<cr>", opts)
