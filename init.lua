local modules = {
  -- core
  "core.options",
  "core.autocmds",
  "core.mappings",

  -- plugins
  "customer.plugins",

  "customer.cmp",
  "customer.lsp",
  "customer.vim-go",

  "customer.colorscheme",
  "customer.treesitter",
  "customer.telescope",
  "customer.gitsigns",
  "customer.nerdtree",
  "customer.whichkey",
  "customer.lualine",
  --"customer.autopairs",
  "customer.indent-blankline",
}

for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)

  if not ok then
    error("Error loading " .. module .. "\n\n" .. err)
  end
end
