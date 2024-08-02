return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local actions = require "telescope.actions"
    -- local get_icon = require("astronvim.utils").get_icon
    local builtin = require "telescope.builtin"
    return {
      defaults = {
        layout_config = {
          horizontal = { prompt_position = "bottom", preview_width = 0.55 },
          vertical = { mirror = false },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        mappings = {
          i = {
            -- ["<C-n>"] = actions.cycle_history_next,
            -- ["<C-p>"] = actions.cycle_history_prev,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
          n = {
            q = actions.close,
          },
        },
      },
    }
  end,
}
