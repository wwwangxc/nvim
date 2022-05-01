local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
    -- diagnostics.flake8

    diagnostics.golangci_lint,
	},
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then

      --vim.cmd("autocmd BufWritePre *.go :silent! lua go_organize_imports_sync(1000)")
      --vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
      --vim.api.nvim_command("au BufWritePre *.go lua goimports(1000)")
      --vim.api.nvim_command("au BufWritePost <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})
