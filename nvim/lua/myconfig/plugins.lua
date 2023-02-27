return require("packer").startup(function(use)

    -- package manager
    use("wbthomason/packer.nvim")

    -- nerd tree
    use("preservim/nerdtree")
    use("preservim/nerdcommenter")

    -- color scheme
    -- use { "catppuccin/nvim", as = "catppuccin" }
    use "EdenEast/nightfox.nvim"
    -- use("sainnhe/gruvbox-material")
    -- use("dracula/vim")
    -- use("folke/tokyonight.nvim")
    -- use("arcticicestudio/nord-vim")

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- go language support
    -- use("fatih/vim-go")

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- git
    use("tpope/vim-fugitive")

    -- LSP
    -- use("prabirshrestha/vim-lsp")
    -- use("mattn/vim-lsp-settings")

    -- tree sitter
    use
    { 'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
    }

    -- bufferline
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    -- use({
    --     "kylechui/nvim-surround",
    --     tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    --     config = function()
    --         require("nvim-surround").setup({
    --             -- Configuration here, or leave empty to use defaults
    --         })
    --     end
    -- })
end)
