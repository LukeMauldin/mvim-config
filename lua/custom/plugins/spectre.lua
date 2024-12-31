return {
  'nvim-pack/nvim-spectre',
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Ensure plenary is installed
  config = function()
    require('spectre').setup()
  end,
}
