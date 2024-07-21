local api = vim.api

local config = {
  duration = 500,
  timer = (vim.uv or vim.loop).new_timer(),
  should_detach = true,
  current_hlgroup = nil,
  yank = {
    hlgroup = "LuminateYank",
    guibg = '#2d4f67',
    fg = '#ebcb8b',
    enabled = true,
  },
  paste = {
    hlgroup = "LuminatePaste",
    guibg = '#2d4f67',
    fg = '#ebcb8b',
    HIGHLIGHT_THRESHOLD = 0.9,
    enabled = true,
  },
  undo = {
    hlgroup = 'LuminateUndo',
    guibg = '#2d4f67',
    fg = '#ebcb8b',
    HIGHLIGHT_THRESHOLD = 0.9,
    mode = 'n',
    lhs = 'u',
    map = 'undo',
    opts = {},
  },
  redo = {
    hlgroup = 'LuminateRedo',
    guibg = '#2d4f67',
    fg = '#ebcb8b',
    HIGHLIGHT_THRESHOLD = 0.9,
    mode = 'n',
    lhs = '<C-r>',
    map = 'redo',
    opts = {},
  },
  highlight_for_count = true,
}

local namespaces = {
  yank = api.nvim_create_namespace('LuminateYankHighlight'),
  paste = api.nvim_create_namespace('LuminatePasteHighlight'),
  undo = api.nvim_create_namespace('LuminateUndoHighlight'),
  redo = api.nvim_create_namespace('LuminateRedoHighlight'),
}

return {
  config = config,
  namespaces = namespaces,
}
