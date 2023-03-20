local null_ls = require 'null-ls'
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

null_ls.setup {
  sources = {
    -- null_ls.builtins.formatting.deno_fmt,
    -- null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.formatting.yapf,
    -- null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.formatting.eslint,
    -- null_ls.builtins.formatting.stylua.with {
    --   extra_args = { '--config-path', vim.fn.expand '~/.stylua.toml' },
    -- },
    -- null_ls.builtins.formatting.shfmt.with {
    --   extra_args = { '-i', '4' },
    -- },
    -- null_ls.builtins.diagnostics.gitlint.with {
    --   extra_args = { '--contrib=contrib-title-conventional-commits', '--ignore=body-is-missing' },
    -- },
    -- null_ls.builtins.diagnostics.vale,
  },
  on_attach = function(client, bufnr)
    if client.supports_method 'textDocument/formatting' then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- vim.lsp.buf.formatting_sync()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}






-- local null_ls_status_ok, null_ls = pcall(require, "null-ls")
-- if not null_ls_status_ok then
--   return
-- end

-- null_ls.setup {
--   on_attach = function(client)
--     -- if client.resolved_capabilities.document_formatting then
--     if client.resolved_capabilities and client.resolved_capabilities.document_formatting then
--       vim.cmd([[
--         augroup LspFormatting
--             autocmd! * <buffer>
--             autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()
--         augroup END
--       ]])
--     end
--   end,
--   debug = true,
--   sources = {
--     null_ls.builtins.formatting.prettier.with {},
--     -- null_ls.builtins.formatting.eslint,
--     -- null_ls.builtins.code_actions.eslint,
--     -- null_ls.builtins.formatting.rustfmt,
--     -- --
--     -- null_ls.builtins.formatting.stylua,
--     -- null_ls.builtins.diagnostics.eslint,
--     -- null_ls.builtins.completion.spell,
--   },
-- }
