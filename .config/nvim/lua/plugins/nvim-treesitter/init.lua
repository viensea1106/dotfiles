local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"json",
			"yaml",
			"bash",
			"lua",
			"dockerfile",
			"gitignore",
			"python",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})

  vim.treesitter.language.register("python", "sage")
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
}