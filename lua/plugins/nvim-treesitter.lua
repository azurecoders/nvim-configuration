return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function ()
		require("nvim-treesitter").setup({})
		require('treesitter-modules').setup({
			sync_install = true,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '<Enter>',
					node_incremental = '<Enter>',
					scope_incremental = false,
					node_decremental = '<Backspace>',
				},
			},
		})
		require("nvim-treesitter").install({"html", "css", "javascript", "typescript", "jsx", "typescript", "lua", "vim"})
	end
}
