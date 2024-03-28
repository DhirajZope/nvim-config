-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	-- transparency = true,
	statusline = {
		theme = "default",
		separator_style = "round",
    modules = {
      venv = function ()
        local venv = require('venv-selector').get_active_venv()
        if venv then
          local venv_parts = vim.fn.split(venv, '/')
          local venv_name = venv_parts[#venv_parts]
          return venv_name
        else
          return 'Select Venv'
        end
      end,
    }
	},

	theme = "pastelDark",
	theme_toggle = { "chadracula-evondev", "pastelDark" },
	telescope = { style = "bordered" },
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
	-- hl_add = {}
	-- nvdash = {}
}

-- M.settings = {
--   cc_size = "130",
--   so_size = 10,
--   blacklist = {
--     "NvimTree",
--     "nvdash",
--     "nvcheatsheet",
--     "terminal",
--     "Trouble",
--     "help",
--   },
-- }

-- M.lazy_nvim = {}

return M
