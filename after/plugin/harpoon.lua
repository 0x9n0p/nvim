local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)


local ctrl_j_pressed = false
local ctrl_j_timer = nil
local ctrl_j_press_count = 0

vim.keymap.set('n', '<C-j>', function()
    if not ctrl_j_pressed then
        ctrl_j_pressed = true
    end

    ctrl_j_press_count = ctrl_j_press_count + 1
    print("Go to " .. ctrl_j_press_count)
 
    if ctrl_j_timer then
        ctrl_j_timer:stop()
    end

    ctrl_j_timer = vim.defer_fn(function()
	ui.nav_file(ctrl_j_press_count)
        ctrl_j_pressed = false
	ctrl_j_press_count = 0
    end, 50) 
end)
