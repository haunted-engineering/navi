local nnoremap = require("phasewalk1.keymap").nnoremap
local tele = require('telescope.builtin')

nnoremap("<leader>pv", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set('n', '<leader>ff', tele.find_files, {})
vim.keymap.set('n', '<leader>fg', tele.live_grep, {})
vim.keymap.set('n', '<leader>fh', tele.help_tags, {})
