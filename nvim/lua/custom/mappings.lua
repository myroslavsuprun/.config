local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
  }
}

-- Your custom mappings
M.abc = {
  n = {
    ["<A-j>"] = {":m .+1<CR>==", "Move line down"},
    ["<A-k>"] = {":m .-2<CR>==", "Move line up"},
  },

  i = {
    ["<A-j> <Esc>"] = {":m .+1<CR>==gi", "Move line down"},
    ["<A-k> <Esc>"] = {":m .-2<CR>==gi", "Move line up"},
  },

  v = {
    ["<A-j>"] = {":m '>+1<CR>gv=gv", "Move line down"},
    ["<A-k>"] = {":m '<-2<CR>gv=gv", "Move line up"},

  }
}

return M

