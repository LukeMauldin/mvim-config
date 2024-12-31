return {
  'theHamsta/nvim-dap-virtual-text',
  dependencies = { 'mfussenegger/nvim-dap' }, -- Ensure nvim-dap is a dependency
  config = function()
    require('nvim-dap-virtual-text').setup {
      -- Optional: Add your desired configurations
      commented = true, -- Enable virtual text as comments
    }
  end,
}
