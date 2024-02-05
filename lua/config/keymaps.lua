local keymap = vim.keymap

local opt = { noremap = true, silent = true }

keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opt)
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opt)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opt)
keymap.set("n", "<C-j>", "<C-w>j", opt)
keymap.set("n", "<C-k>", "<C-w>k", opt)
keymap.set("n", "<C-l>", "<C-w>l", opt)

-- window management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opt)
keymap.set("n", "<leader>sh", ":split<CR>", opt)

local api = vim.api

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
api.nvim_set_keymap("v", "<C-_>", "gc", { noremap = false })

--Toggle term
api.nvim_set_keymap("t", "<esc>", [[<C-\><C-n>]], { noremap = true })
api.nvim_set_keymap("t", "jk", [[<C-\><C-n>]], { noremap = true })
api.nvim_set_keymap("t", "<C-h>", [[<C-\><C-n><C-W>h]], { noremap = true })
api.nvim_set_keymap("t", "<C-j>", [[<C-\><C-n><C-W>j]], { noremap = true })
api.nvim_set_keymap("t", "<C-k>", [[<C-\><C-n><C-W>k]], { noremap = true })
api.nvim_set_keymap("t", "<C-l>", [[<C-\><C-n><C-W>l]], { noremap = true })

