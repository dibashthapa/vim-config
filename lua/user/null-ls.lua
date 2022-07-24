local M = {}
function M.config()
  -- Formatting and linting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim
  local status_ok, null_ls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  -- Check supported formatters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  local formatting = null_ls.builtins.formatting

  -- Check supported linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  local diagnostics = null_ls.builtins.diagnostics

  null_ls.setup {
    debug = true,
    log = {
    enable = true,
    level = "warn",
    use_console = "async",
    },
    sources = {
      -- Set a formatter
      formatting.rufo,
      formatting.prettier,
      formatting.lua_format,
      -- Set a linter
      diagnostics.rubocop,
      formatting.clang_format
    },
    -- NOTE: You can remove this on attach function to disable format on save
    on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
        vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 10000)"
        -- vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil , 1000)"
      end
    end,
  }
end

return M
