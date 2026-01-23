return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
  keys = {
    {"<leader>ff", function() require("fzf-lua").files() end, desc = "Find Files in Current Working Directory"},
    {"<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Find by Grepping Current Working Directory"},
    {"<leader>fb", function() require("fzf-lua").builtin() end, desc = "Find the builtin commands"},
    {"<leader>fk", function() require("fzf-lua").keymaps() end, desc = "Find the keymaps"},
    {"<leader><leader>", function() require("fzf-lua").buffers() end, desc = "Find files in buffer"},
  }
}
