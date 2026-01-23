return {
  "startup-nvim/startup.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    require("startup").setup({
      -- ╭──────────────────────────────────────────────────────────╮
      -- │                      HEADER SECTION                      │
      -- ╰──────────────────────────────────────────────────────────╯
      header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
          "                                                    ",
          " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
          " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
          " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
          " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
          " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
          " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
          "                                                    ",
        },
        highlight = "StartupHeader",
        default_color = "#7aa2f7", -- Soft blue
        oldfiles_amount = 0,
      },

      -- ╭──────────────────────────────────────────────────────────╮
      -- │                    QUICK ACTIONS                         │
      -- ╰──────────────────────────────────────────────────────────╯
      body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Quick Actions",
        margin = 5,
        content = {
          { " Find File",     "Telescope find_files",    "<leader>ff" },
          { " Recent Files",  "Telescope oldfiles",      "<leader>fr" },
          { " Find Word",     "Telescope live_grep",     "<leader>fg" },
          { " File Browser",  "Telescope file_browser",  "<leader>fb" },
          { " New File",      "enew",                    "<leader>n"  },
          { " Bookmarks",     "Telescope marks",         "<leader>fm" },
          { " Sessions",      "Telescope sessions",      "<leader>fs" },
        },
        highlight = "StartupBody",
        default_color = "#3b82f6", -- Vibrant blue
        oldfiles_amount = 0,
      },

      -- ╭──────────────────────────────────────────────────────────╮
      -- │                     RECENT FILES                         │
      -- ╰──────────────────────────────────────────────────────────╯
      recent_files = {
        type = "oldfiles",
        oldfiles_directory = false,
        align = "center",
        fold_section = true,
        title = "Recent Files",
        margin = 5,
        content = {},
        highlight = "StartupRecent",
        default_color = "#60a5fa", -- Light blue
        oldfiles_amount = 8,
      },

      -- ╭──────────────────────────────────────────────────────────╮
      -- │                    CONFIG SHORTCUTS                      │
      -- ╰──────────────────────────────────────────────────────────╯
      tools = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = true,
        title = "Tools",
        margin = 5,
        content = {
          { " Config",       "e $MYVIMRC",              "<leader>vc" },
          { " Lazy",         "Lazy",                    "<leader>l"  },
          { " Mason",        "Mason",                   "<leader>m"  },
          { " Health",       "checkhealth",             "<leader>h"  },
          { " Quit",         "qa",                      "<leader>q"  },
        },
        highlight = "StartupTools",
        default_color = "#38bdf8", -- Cyan-blue
        oldfiles_amount = 0,
      },

      -- ╭──────────────────────────────────────────────────────────╮
      -- │                        FOOTER                            │
      -- ╰──────────────────────────────────────────────────────────╯
      footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 3,
        content = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return {
            "───────────────────────────────────────",
            "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
            "🌊 Code like water, flow like the ocean",
          }
        end,
        highlight = "StartupFooter",
        default_color = "#64748b", -- Muted blue-gray
        oldfiles_amount = 0,
      },

      -- ╭──────────────────────────────────────────────────────────╮
      -- │                       OPTIONS                            │
      -- ╰──────────────────────────────────────────────────────────╯
      options = {
        mapping_keys = true,
        cursor_column = 0.5,
        after = function()
          require("startup.utils").oldfiles_mappings()
        end,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 3, 3, 3, 2, 2 }, -- Must match number of sections
      },

      mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
      },

      colors = {
        background = "#0f172a",       -- Deep navy background
        folded_section = "#22d3ee",   -- Bright cyan for folded sections
      },

      parts = { "header", "body", "recent_files", "tools", "footer" },
    })

    -- ╭──────────────────────────────────────────────────────────╮
    -- │               CUSTOM HIGHLIGHT GROUPS                    │
    -- ╰──────────────────────────────────────────────────────────╯
    vim.api.nvim_set_hl(0, "StartupHeader", { fg = "#7aa2f7", bold = true })
    vim.api.nvim_set_hl(0, "StartupBody", { fg = "#3b82f6" })
    vim.api.nvim_set_hl(0, "StartupRecent", { fg = "#60a5fa" })
    vim.api.nvim_set_hl(0, "StartupTools", { fg = "#38bdf8" })
    vim.api.nvim_set_hl(0, "StartupFooter", { fg = "#64748b", italic = true })
    vim.api.nvim_set_hl(0, "StartupFoldedSection", { fg = "#22d3ee", bold = true })
  end,
}
