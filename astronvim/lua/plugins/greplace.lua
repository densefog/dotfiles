-- Gsearch and replace for text in files
return {
  {
    "skwp/greplace.vim",
    lazy = false,
    init = function()
      vim.o.grepprg = "ag"
      vim.g.grep_cmd_opts = "--line-numbers --noheading"
    end,
  },
}
