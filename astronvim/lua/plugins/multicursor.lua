return {
  "smoka7/multicursors.nvim",
  event = "VeryLazy",
  dependencies = { "smoka7/hydra.nvim" },
  opts = {},
  keys = {
    {
      mode = { "v", "n" },
      "<c-n>",
      "<cmd>MCstart<cr>",
      desc = "Create a selection for word under the cursor",
    },
  },
}
