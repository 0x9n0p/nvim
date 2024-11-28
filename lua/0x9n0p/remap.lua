vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")

-- close current buffer.
vim.keymap.set("n", "qq", function()
	vim.cmd("q")
end)

-- write and close current buffer and back to the file navigator.
vim.keymap.set("n", "wq", function()
	vim.cmd("w")
	vim.cmd.Ex()
end)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
