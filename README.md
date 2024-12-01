# Neovim configuration

This repository contains my current Neovim configuration.

## Dependencies

The following things need to be installed in order for this configuration to properly function.

* ripgrep
** Dependency of Telescope
* pyright
** Language server used for Python
** Technically this could be installed via Mason, but that would require Node and I am not willing to install it for this purpose.
* Lazygit
** TUI for git that is called via a plugin

## Complete List of plugins

* [  'lazy.nvim' ]( https://github.com/folke/lazy.nvim.git ) - neovim plugin manager
* ['folke/lazydev.nvim']( https://github.com/folke/lazydev.nvim.git ) - lua languageserver configuration
* ['nvim-treesitter/nvim-treesitter']( https://github.com/nvim-treesitter/nvim-treesitter.git ) - syntax highlighting
* ['echasnovski/mini.surround']( https://github.com/echasnovski/mini.surround.git ) - functionality to add / modify / remove surrounds like braces or quotes etc
* ['echasnovski/mini.pairs']( https://github.com/echasnovski/mini.pairs.git ) - automatic closing for pairwise characters like braces or quotes
* ['hrsh7th/cmp-nvim-lsp']( https://github.com/hrsh7th/cmp-nvim-lsp.git ) - nvim-cmp source for neovim's built-in language server client
* ['folke/tokyonight.nvim']( https://github.com/folke/tokyonight.nvim.git ) - colorscheme
* ['numToStr/Comment.nvim']( https://github.com/numToStr/Comment.nvim.git ) - commenting and uncommenting individual lines and blocks
* ['lukas-reineke/indent-blankline.nvim']( https://github.com/lukas-reineke/indent-blankline.nvim.git ) - adding indentation guides
* ['akinsho/bufferline.nvim']( https://github.com/akinsho/bufferline.nvim.git ) - bufferline with tabpage integration
* ['hrsh7th/nvim-cmp']( https://github.com/hrsh7th/nvim-cmp.git ) - completion engine plugin
* ['hrsh7th/cmp-buffer']( https://github.com/hrsh7th/cmp-buffer.git ) - completion suggestions from current buffer
* ['hrsh7th/cmp-nvim-lsp']( https://github.com/hrsh7th/cmp-nvim-lsp.git ) - completion suggestions from LSP
* ['hrsh7th/cmp-path']( https://github.com/hrsh7th/cmp-path.git ) - completion suggestions for paths
* ['L3MON4D3/LuaSnip']( https://github.com/L3MON4D3/LuaSnip.git ) - snippet engine 
* ['rafamadriz/friendly-snippets']( https://github.com/rafamadriz/friendly-snippets.git ) - snippet collection for different languages
* ['kdheepak/lazygit.nvim']( https://github.com/kdheepak/lazygit.nvim.git ) - lazygit integration for nvim
* ['nvim-lua/plenary.nvim']( https://github.com/nvim-lua/plenary.nvim.git ) - set of utility functions used in other plugins
* ['neovim/nvim-lspconfig']( https://github.com/neovim/nvim-lspconfig.git ) - default lsp client configurations for different LSPs
* ['williamboman/mason.nvim']( https://github.com/williamboman/mason.nvim.git ) - package manager for LSPs, DAPs, formatters and linters
* ['williamboman/mason-lspconfig.nvim']( https://github.com/williamboman/mason-lspconfig.nvim.git ) - bridge between mason and lspconfig plugins
* ['WhoIsSethDaniel/mason-tool-installer.nvim']( https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim.git ) - install and update 3rd party tools
* ['nvim-neo-tree/neo-tree.nvim']( https://github.com/nvim-neo-tree/neo-tree.nvim.git ) - browse filesystem and other treelike structures
* ['coffebar/neovim-project']( https://github.com/coffebar/neovim-project.git ) - project manager for neovim
* ['Shatur/neovim-session-manager']( https://github.com/Shatur/neovim-session-manager.git ) - store and load nvim sessions
* ['nvim-telescope/telescope.nvim']( https://github.com/nvim-telescope/telescope.nvim.git ) - fuzzy finder over lists
* ['akinsho/toggleterm.nvim']( https://github.com/akinsho/toggleterm.nvim.git ) - terminal integration for nvi
* ['folke/which-key.nvim']( https://github.com/folke/which-key.nvim.git ) - display available key bindings in a pop-up
* ['']( https://github.com/#.git ) - 
