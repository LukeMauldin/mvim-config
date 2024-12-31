return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- Automatically run :TSUpdate after installation
  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'elixir',
        'heex',
        'javascript',
        'html',
        'go',
        'rust',
        'typescript',
        'proto',
        'sql',
        'yaml',
        'terraform',
      },
      sync_install = false,
      highlight = { enable = true }, -- Enable syntax highlighting
      indent = { enable = true }, -- Enable improved indentation
    }

    local telescope_ok, builtin = pcall(require, 'telescope.builtin')
    if telescope_ok then
      vim.keymap.set('n', '<leader>st', builtin.treesitter, { desc = '[S]earch [T]reesitter' })
    else
      vim.notify('Telescope not installed or configured', vim.log.levels.WARN)
    end
  end,
}
