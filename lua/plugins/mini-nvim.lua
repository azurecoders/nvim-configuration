return {

  {
    'nvim-mini/mini.ai',
    version = '*',
    config = function()
      require('mini.ai').setup()
    end,
  },

  -- {
  --   'nvim-mini/mini.statusline',
  --   version = '*',
  --   config = function()
  --     require('mini.statusline').setup()
  --   end,
  -- },
  {
    'nvim-mini/mini.comment',
    version = '*',
    config = function()
      require('mini.comment').setup()
    end,
  },

  {
    'nvim-mini/mini.move',
    version = '*',
    config = function()
      require('mini.move').setup()
    end,
  },

  {
    'nvim-mini/mini.surround',
    version = '*',
    config = function()
      require('mini.surround').setup()
    end,
  },

  {
    'nvim-mini/mini.cursorword',
    version = '*',
    config = function()
      require('mini.cursorword').setup()
    end,
  },

  {
    'nvim-mini/mini.indentscope',
    version = '*',
    config = function()
      require('mini.indentscope').setup({
        symbol = '│',
        options = { try_as_border = true },
      })
    end,
  },

  {
    'nvim-mini/mini.pairs',
    version = '*',
    config = function()
      require('mini.pairs').setup()
    end,
  },

  {
    'nvim-mini/mini.trailspace',
    version = '*',
    config = function()
      require('mini.trailspace').setup()
    end,
  },

  {
    'nvim-mini/mini.bufremove',
    version = '*',
    config = function()
      require('mini.bufremove').setup()
    end,
  },

  {
    'nvim-mini/mini.notify',
    version = '*',
    config = function()
      require('mini.notify').setup()
    end,
  },

}
