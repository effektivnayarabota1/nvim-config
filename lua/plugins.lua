return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- COLORSCHEME

	-- INTERFACE

	use 'mhinz/vim-startify'

	-- веритикальные разделители
	use 'lukas-reineke/indent-blankline.nvim'

	use 'ap/vim-css-color'

	use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }
	-- Or lazy load with `module` option. See further down for info on how to lazy load when using FocusSplit commands
	-- Or lazy load this plugin by creating an arbitrary command using the cmd option in packer.nvim
	-- use { 'beauwilliams/focus.nvim', cmd = { "FocusSplitNicely", "FocusSplitCycle" }, module = "focus",
	--     config = function()
	--         require("focus").setup({hybridnumber = true})
	--     end
	-- }

	use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
		require("toggleterm").setup{
			open_mapping = [[<c-\>]],
		}
		end
	}

	use {
	    'numToStr/Comment.nvim',
	    config = function()
	        require('Comment').setup{}
	    end
	}

	use {
		"folke/todo-comments.nvim",
	    requires = "nvim-lua/plenary.nvim",
		config = function()
				require("todo-comments").setup {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				}
		end
	}

	use { 
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function() require('lualine').setup{} end 
	}

	use { 
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('nvim-tree').setup{
			open_on_setup = true,
			open_on_setup_file = true,
			open_on_tab = true,
			ignore_buffer_on_setup = true,
			hijack_unnamed_buffer_when_opening = true,
			respect_buf_cwd = true,
      		hijack_directories = {
        		enable = true,
        		auto_open = true,
      		},
      		update_cwd = false,
			}
		end
	}

	use {
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require("bufferline").setup{
			options = {
				    mode = "buffers",
				    -- mode = "tabs",
					offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
			}
		} end
	}

	-- SYSTEM

	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}

end)
