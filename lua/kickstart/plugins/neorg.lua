return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading
  version = '*', -- Pin Neorg to the latest stable release
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {}, -- Load default behavior
        ['core.dirman'] = {
          config = {
            workspaces = {},
          },
        },
      },
    }
  end,
}
