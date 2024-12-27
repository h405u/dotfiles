return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    { require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/luasnip/" }) },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
    enable_autosnippets = true,
    cut_selection_keys = "<Tab>",
  },
}
