return {
  'nvim-neorg/neorg',
  ft = 'norg',
  cmd = 'Neorg',
  version = '*', -- Pin Neorg to the latest stable release
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    -- Ensure luarocks parser packages are loaded into package.cpath before neorg initializes
    pcall(require('lazy').load, { plugins = { 'tree-sitter-norg', 'tree-sitter-norg-meta' } })
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
