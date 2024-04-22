return {
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
██████╗░░█████╗░██╗░░░██╗███████╗███╗░░██╗
██╔══██╗██╔══██╗██║░░░██║██╔════╝████╗░██║
██████╔╝███████║╚██╗░██╔╝█████╗░░██╔██╗██║
██╔══██╗██╔══██║░╚████╔╝░██╔══╝░░██║╚████║
██║░░██║██║░░██║░░╚██╔╝░░███████╗██║░╚███║
╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░╚══╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          center = {
            {
              action = "qa",
              desc = "yolo",
              icon = "",
              key = "q",
            },
          },
        },
      }
      return opts
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "black_is_the_color",
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "cocopon/iceberg.vim",
  },
  {
    "plainfingers/black_is_the_color",
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "slide",
      timeout = 0,
    },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    },
    keys = function()
      local keys = {
        {
          "<leader>H",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Harpoon File",
        },
        {
          "<leader>h",
          function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon Quick Menu",
        },
        {
          "<leader>m",
          ":Telescope harpoon marks<CR>",
          desc = "Telescope Harpoon",
        },
      }

      for i = 1, 5 do
        table.insert(keys, {
          "<leader>" .. i,
          function()
            require("harpoon"):list():select(i)
          end,
          desc = "Harpoon to File " .. i,
        })
      end
      return keys
    end,
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "obsidian",
          path = "~/obsidian",
        },
      },

      -- see below for full list of options 👇
    },
  },
}
