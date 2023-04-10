require('go').setup({
    disable_defaults = false,
      lsp_diag_update_in_insert = true,
      run_in_floaterm = true
  })


  -- Run gofmt + goimport on save

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})

require('dap-go').setup()

