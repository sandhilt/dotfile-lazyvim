return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    window = {
      fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
        ["<C-j>"] = "move_cursor_down",
        ["<C-k>"] = "move_cursor_up",
      },
      mappings = {
        ["<space>"] = "none",
      },
      position = "right",
    },
    default_component_configs = {
      indent = {
        with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
  },
  --  config = function()
  --    local utils = require("neo-tree.utils")
  --    require("neo-tree").setup({
  --      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
  --      open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
  --      filesystem = {
  --        bind_to_cwd = false,
  --        follow_current_file = { enabled = true },
  --        use_libuv_file_watcher = true,
  --      },
  --      window = {
  --        fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
  --          ["<C-j>"] = "move_cursor_down",
  --          ["<C-k>"] = "move_cursor_up",
  --        },
  --        mappings = {
  --          ["<space>"] = "none",
  --          ["[b"] = "prev_source",
  --          ["]b"] = "next_source",
  --          F = utils.is_available("telescope.nvim") and "find_in_dir" or nil,
  --          O = "system_open",
  --          Y = "copy_selector",
  --          h = "parent_or_close",
  --          l = "child_or_open",
  --          o = "open",
  --        },
  --        position = "right",
  --      },
  --      default_component_configs = {
  --        indent = {
  --          with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
  --          expander_collapsed = "",
  --          expander_expanded = "",
  --          expander_highlight = "NeoTreeExpander",
  --        },
  --      },
  --    })
  --  end,
}
