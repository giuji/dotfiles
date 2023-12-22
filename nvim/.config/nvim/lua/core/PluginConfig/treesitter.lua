require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_intalled = "all",

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  auto_intall = true,
  highlight = {
    enable = true,
  },
}
