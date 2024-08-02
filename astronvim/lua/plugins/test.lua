return {
  { "christoomey/vim-tmux-navigator", lazy = false },
  {
    "janko-m/vim-test",
    lazy = false,
    init = function()
      vim.g["test#strategy"] = "slimux"
      vim.g["test#preserve_screen"] = 0
    end,
  },
  { "esamattis/slimux", lazy = false },
}
