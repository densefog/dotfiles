require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {'filetype'},
    --lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}

    --lualine_a = {
      --{
        --'filename',
        --path = 1,
      --}
    --},
    --lualine_c = {
      --{
        --'filename',
        --path = 1,
      --}
    --}
  }
}

