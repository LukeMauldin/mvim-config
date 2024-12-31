return {
  'github/copilot.vim',
  config = function()
    -- Optional: Add any configuration you want here
    vim.g.copilot_no_tab_map = true -- Example: Disabling default <Tab> mapping
    -- Accept the whole Copilot suggestion with <C-j>
    vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

    -- Accept the next Copilot word with <C-k>
    vim.api.nvim_set_keymap('i', '<C-k>', 'copilot#AcceptWord("<CR>")', { silent = true, expr = true })
  end,
}
