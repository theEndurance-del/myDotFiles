local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path
    })
end

vim.cmd [[packadd packer.nvim]]

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

local packer = require("packer")

packer.init({

    display = {
        open_fn = function()
            return require("packer.util").float({ border = 'rounded' })
        end
    }
})

return packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        use 'lewis6991/impatient.nvim'
        use 'olimorris/persisted.nvim'
        use "s1n7ax/nvim-terminal"
        use 'samjwill/nvim-unception'
        use 'jghauser/mkdir.nvim'
        use 'brenoprata10/nvim-highlight-colors'
        use "preservim/tagbar"
        use 'elkowar/yuck.vim'
        use "preservim/vim-markdown"
        use "godlygeek/tabular"
        use 'xolox/vim-misc'
        use 'lifepillar/vim-colortemplate'
        use 'ryanoasis/vim-devicons'
        use 'numToStr/Comment.nvim'
        use "folke/twilight.nvim"
        use 'antoinemadec/FixCursorHold.nvim'
        use 'rbgrouleff/bclose.vim'
        use 'Darazaki/indent-o-matic'
        use 'bluz71/vim-nightfly-guicolors'
        use { 'Everblush/everblush.nvim', as = 'everblush' }
        use 'lewis6991/gitsigns.nvim'
        use 'folke/which-key.nvim'
        use 'ahmedkhalf/project.nvim'
        use 'windwp/nvim-autopairs'
        use 'folke/trouble.nvim'
        use 'akinsho/toggleterm.nvim'
        use 'kyazdani42/nvim-web-devicons'
        use 'romgrk/barbar.nvim'
        use "kyazdani42/nvim-tree.lua"
        use 'goolord/alpha-nvim'
        use 'simrat39/rust-tools.nvim'
        use "lukas-reineke/lsp-format.nvim"
        use 'nvim-lualine/lualine.nvim'
        use 'kosayoda/nvim-lightbulb'
        use 'gelguy/wilder.nvim'
        use {
            'petertriho/nvim-scrollbar',
            requires = 'kevinhwang91/nvim-hlslens'
        }
        use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
        use {
            'nvim-telescope/telescope.nvim',
            requires = 'nvim-lua/plenary.nvim',
        }
        use {
            'TimUntersberger/neogit',
            requires = 'nvim-lua/plenary.nvim'
        }
        use {
            'nvim-telescope/telescope-frecency.nvim',
            requires = 'tami5/sqlite.lua',
        }
        use {
            'hrsh7th/cmp-nvim-lsp',
            requires = {
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-nvim-lua',
                'hrsh7th/nvim-cmp',
                'dcampos/nvim-snippy',
                'dcampos/cmp-snippy',
                'onsails/lspkind.nvim',
                'saecki/crates.nvim',
                'ray-x/lsp_signature.nvim'
            }
        }
        use {
            'neovim/nvim-lspconfig',
            requires = 'williamboman/nvim-lsp-installer'
        }
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ":TSUpdate",
            requires = {
                'yioneko/nvim-yati',
                'nvim-treesitter/nvim-treesitter-context',
                'nvim-treesitter/nvim-treesitter-textobjects',
                'p00f/nvim-ts-rainbow'
            }
        }
        use {
            "lukas-reineke/indent-blankline.nvim",
            after = "nvim-treesitter",
        }
        use 'nvim-neorg/neorg'


        if PACKER_BOOTSTRAP then
            require('packer').sync()
        end
    end
})
