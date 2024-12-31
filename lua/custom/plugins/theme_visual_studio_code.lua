return {
  'askfiy/visual_studio_code',
  priority = 100,
  config = function()
    require('visual_studio_code').setup {
      mode = 'light', -- Set the mode to light here
      -- Other configuration options can be added here as needed
    }
    vim.cmd [[colorscheme visual_studio_code]]
  end,
}
