---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  n = {
    ["<leader>tb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle Breakpoint",
    },
    ["<leader>tu"] = {
      function()
        local w = require("dap.ui.widgets");
        local sidebar = w.sidebar(w.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

-- more keybinds!

return M
