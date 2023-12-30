return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("solarized-osaka").setup({
			transparent = false, -- Enable this to disable setting the background color
      -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
			terminal_colors = true,
			styles = {
				-- Style to be applied to different syntax groups
				-- Value is any valid attr-list value for `:help nvim_set_hl`
				comments = { italic = true },
				keywords = { italic = true },
				sidebars = "dark", -- style for sidebars, see below
				floats = "dark", -- style for floating windows
			},
			lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
		})

		vim.cmd("colorscheme solarized-osaka")
	end,
}
