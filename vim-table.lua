return {
  'dhruvasagar/vim-table-mode',
  ft = { 'markdown', 'norg' },
  config = function()
    vim.g.table_mode_corner = '|'
  end
}
