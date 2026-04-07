-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- TODO: Add nvim-lsp-file-operations

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set({ 'n', 'v' }, '<leader>tt', '<Cmd>Neotree filesystem reveal left<CR>', { desc = 'Filesystem [T]ree' })
    vim.keymap.set({ 'n', 'v' }, '<leader>te', '<Cmd>Neotree buffers reveal left<CR>', { desc = 'R[e]cent buffers tree' })
  end,
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
