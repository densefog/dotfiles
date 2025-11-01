-- if true then
--   return {}
-- end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  'rmagatti/auto-session',
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Downloads', '/' },
    -- log_level = 'debug',
  },
}

-- return {
--   'Shatur/neovim-session-manager',
--
-- }

-- return {
--   -- Disabled due to VimEnter <afile> error
--   -- {
--   --   'gennaro-tedesco/nvim-possession',
--   --   dependencies = {
--   --     'ibhagwan/fzf-lua',
--   --   },
--   --   config = function()
--   --     require('nvim-possession').setup {
--   --       autoload = false, -- Changed from true to prevent VimEnter <afile> error
--   --     }
--   --   end,
--   --   keys = {
--   --     {
--   --       '<leader>sl',
--   --       function()
--   --         require('nvim-possession').list()
--   --       end,
--   --       desc = '📌list sessions',
--   --     },
--   --     {
--   --       '<leader>sn',
--   --       function()
--   --         require('nvim-possession').new()
--   --       end,
--   --       desc = '📌create new session',
--   --     },
--   --     {
--   --       '<leader>su',
--   --       function()
--   --         require('nvim-possession').update()
--   --       end,
--   --       desc = '📌update current session',
--   --     },
--   --     {
--   --       '<leader>sd',
--   --       function()
--   --         require('nvim-possession').delete()
--   --       end,
--   --       desc = '📌delete selected session',
--   --     },
--   --   },
--   -- },
-- }
