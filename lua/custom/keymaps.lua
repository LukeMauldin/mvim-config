-- General keymaps
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Neotree
-- vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', { noremap = true, silent = true })

--  Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Spectre
--
-- Find and replace in current file
vim.keymap.set('n', '<leader>fr', function()
  require('spectre').open_file_search()
end, { desc = '[F]ind and [R]eplace in Current File' })

-- Find and replace in entire project
vim.keymap.set('n', '<leader>fp', function()
  require('spectre').open()
end, { desc = '[F]ind and [R]eplace in Project' })

-- bookmarks
vim.keymap.set({ 'n', 'v' }, '<leader>mm', '<cmd>BookmarksMark<cr>', { desc = 'Mark current line into active BookmarkList.' })
vim.keymap.set({ 'n', 'v' }, '<leader>mo', '<cmd>BookmarksGoto<cr>', { desc = 'Go to bookmark at current active BookmarkList' })
vim.keymap.set({ 'n', 'v' }, '<leader>ma', '<cmd>BookmarksCommands<cr>', { desc = 'Find and trigger a bookmark command.' })
