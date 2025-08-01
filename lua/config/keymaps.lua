vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory in Oil" })
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end,
    { desc = "Opens Diagnostic" })
vim.keymap.set("n", '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = "Go to Previous Tab"})
vim.keymap.set("n", '<A-.>', '<Cmd>BufferNext<CR>', { desc = "Go to Next Tab"})
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', { desc = "Pin Tab"})
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', { desc = "Close Tab"})
vim.keymap.set('n', '<A-t>', '<Cmd>NvimTreeToggle<CR>', { desc = "Open/Close Treeview"})
