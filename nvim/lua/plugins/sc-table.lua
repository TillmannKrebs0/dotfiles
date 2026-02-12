return {
  'SCJangra/table-nvim',
  opts = {
    padd_column_separators = true,
    mappings = {
      next = '<TAB>',
      prev = '<S-TAB>',
      insert_row_up = '<A-k>',
      insert_row_down = '<A-j>',
      move_row_up = '<A-S-k>',
      move_row_down = '<A-S-j>',
      insert_column_left = '<A-h>',
      insert_column_right = '<A-l>',
      move_column_left = '<A-S-h>',
      move_column_right = '<A-S-l>',
      insert_table = '<leader>t',
      insert_table_alt = '<A-S-t>',
      delete_column = '<A-d>',
    },
  },
}

