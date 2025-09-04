return {
  {
    'MattesGroeger/vim-bookmarks',
    lazy = false,
    keys = {
      {
        mode = { 'v', 'n' },
        'mm',
        '<cmd>BookmarkToggle<cr><cr>',
        desc = 'Toggle Bookmark',
        silent = true,
      },
      {
        mode = { 'v', 'n' },
        'mn',
        '<cmd>BookmarkNext<cr><cr>',
        desc = 'Next Bookmark',
        silent = true,
      },
      {
        mode = { 'v', 'n' },
        'mp',
        '<cmd>BookmarkPrev<cr><cr>',
        desc = 'Previous Bookmark',
        silent = true,
      },
    },
  },
}
