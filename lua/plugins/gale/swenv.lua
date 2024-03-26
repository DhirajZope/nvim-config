return {
	"AckslD/swenv.nvim",
	ft = "python",
	config = function()
		require("swenv").setup({
			-- Should return a list of tables with a `name` and a `path` entry each.
			-- Gets the argument `venvs_path` set below.
			-- By default just lists the entries in `venvs_path`.
			get_venvs = function(venvs_path)
				return require("swenv.api").get_venvs(venvs_path)
			end,
			get_current_venv = function()
				return require("swenv.api").get_current_venv()
			end,
			-- Path passed to `get_venvs`.
			venvs_path = vim.fn.expand("~/.venvs"),
			post_set_env = function()
				vim.cmd("LspRestart")
			end,
		})
	end,
}
