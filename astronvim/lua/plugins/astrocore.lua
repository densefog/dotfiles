-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        iskeyword = vim.opt.iskeyword:append "-",
        scrolloff = 3,
        showmatch = true,
        smartcase = true,
        swapfile = false,
        -- updatetime = 300,
        -- showcmd = true,
        -- history = 1000,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapLeader` and `maplocalLeader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        ["<Leader>n"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
        ["<Leader>m"] = {
          function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end,
          desc = "Toggle Explorer Focus",
        },
        ["<F1>"] = { "<ESC>" },
        ["<F2>"] = { "<cmd>SessionManager! save_current_session<cr>", desc = "Save this session" },
        ["<F3>"] = { "<cmd>SessionManager! load_last_session<cr>", desc = "Load last session" },
        ["<F8>"] = { ":vertical wincmd F<CR>", desc = "Load file under cursor in vertical" },
        ["<c-w>["] = { ":wincmd _<cr><bar>:wincmd |<cr>" },
        ["<c-w>]"] = { ":wincmd =<cr>" },
        ["<left>"] = { "<c-w><" },
        ["<right>"] = { "<c-w>>" },
        ["<up>"] = { "<c-w>+" },
        ["<down>"] = { "<c-w>-" },
        ["<CR>"] = { ":noh<CR><CR>" },
        ["<Leader>d"] = { ":Dash<CR>" },
        ["<Leader>fw"] = { ":Ag<CR>" },
        ["<Leader>F"] = { ":Ack!<space>" },
        ["<c-p>"] = { require("telescope.builtin").find_files, desc = "Find Files" },
        ["<Leader>ht"] = { require("telescope.builtin").help_tags, desc = "Help Tags" },
        ["<Leader>e"] = {
          function() require("telescope.builtin").buffers { sort_mru = true } end,
          desc = "Last Buffers",
        },
        -- testing
        ["<Leader>s"] = { ":TestNearest<CR>", desc = "Test Nearest" },
        ["<Leader>t"] = { ":TestFile<CR>", desc = "Test File" },
        ["<Leader>a"] = { ":TestSuite<CR>", desc = "Test Suite" },
        ["<Leader>l"] = { ":TestLast<CR>", desc = "Test Last" },
        ["<Leader>v"] = { ":TestVisit<CR>", desc = "Test Visit" },
        ["<Leader>h"] = { ":SlimuxShellRun mtf<CR>", desc = "Mix test failed" },
        -- ["<Leader>db"] = { ":SlimuxShellRun iex --dbg pry -S mix test --timeout 999999999 ${relativeFile}:${lineNumber}<CR>", desc = "Run dbg" },
        -- swapping buffers between windows
        ["<Leader><Leader>h"] = { require("smart-splits").swap_buf_left, desc = "Swap buffer left" },
        ["<Leader><Leader>j"] = { require("smart-splits").swap_buf_down, desc = "Swap buffer down" },
        ["<Leader><Leader>k"] = { require("smart-splits").swap_buf_up, desc = "Swap buffer up" },
        ["<Leader><Leader>l"] = { require("smart-splits").swap_buf_right, desc = "Swap buffer right" },

        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
      i = {
        -- disable keys I keep fat fingering
        ["<S-F1>"] = { "<Nop>" },
        ["<S-F2>"] = { "<Nop>" },
        ["<S-F3>"] = { "<Nop>" },
        ["<S-F4>"] = { "<Nop>" },
        ["<S-F5>"] = { "<Nop>" },
        ["<S-F6>"] = { "<Nop>" },
        ["<S-F7>"] = { "<Nop>" },
        ["<S-F8>"] = { "<Nop>" },
        ["<S-F9>"] = { "<Nop>" },
        ["<S-F10>"] = { "<Nop>" },
        ["<S-F11>"] = { "<Nop>" },
        ["<S-F12>"] = { "<Nop>" },
        ["jj"] = { "<ESC>" },
        ["jk"] = { "<ESC>" },
        ["<F1>"] = { "<ESC>" },
        ["<C-l>"] = { function() require("luasnip").expand() end, desc = "Expand snippet" },
      },
    },
  },
}
