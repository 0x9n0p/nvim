vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "wq", function()
	vim.cmd("w")
	vim.cmd.Ex()
end)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
