require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "go", "rust", "vim", "help", "query" },

  auto_install = true,

  ignore_install = { "javascript", "typescript" },

  disable = { "lua" },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },

}
