-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use('preservim/tagbar')
    use('m4xshen/autoclose.nvim')
    use('nvim-treesitter/nvim-treesitter-context')
    use {
        'lewis6991/gitsigns.nvim',
        config = function ()
            require('gitsigns').setup()
        end
    }
    use('b3nj5m1n/kommentary')

    -- colorschemes -- 
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        --[[
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
        ]]--
    })
    use({
        'sainnhe/gruvbox-material',
        as = 'gruvbox-material'
    })
    use({
        'sainnhe/sonokai',
        as = 'sonokai'
    })

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    --[[ use {
      'nvim-tree/nvim-tree.lua', as = 'nvimtree',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    } ]]

    -- use { "xiyaowong/transparent.nvim" }
    use { "catppuccin/nvim", as = "catppuccin" }

end)
