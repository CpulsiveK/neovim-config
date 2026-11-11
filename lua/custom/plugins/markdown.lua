-- render-markdown
-- https://github.com/MeanderingProgrammer/render-markdown.nvim

vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
}

require('render-markdown').setup {
  file_types = { 'markdown' },
  completions = { blink = { enabled = true } }, -- you use blink.cmp
  render_modes = { 'n', 'c', 't' }, -- show raw markdown in insert mode
}

vim.keymap.set('n', '<leader>tm', '<cmd>RenderMarkdown toggle<CR>', { desc = '[T]oggle [M]arkdown render' })
