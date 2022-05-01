local status_ok, blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end

vim.opt.list = true
--vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
    --show_current_context = true,
}
