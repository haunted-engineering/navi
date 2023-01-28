vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use 'nanotech/jellybeans.vim'
    use 'nlknguyen/papercolor-theme'
    use 'preservim/vim-colors-pencil'
    use 'tpope/vim-fugitive'
    use 'tmsvg/pear-tree'
    use { 'neoclide/coc.nvim', branch = "release" }
    use {
        'nvim-tree/nvim-tree.lua',
        tag = 'nightly'
    }
    use 'nvim-tree/nvim-web-devicons'
    use 'liuchengxu/vista.vim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'neovim/nvim-lspconfig'
    use 'rust-lang/rust.vim'
    use 'mhinz/vim-startify'
    use 'simrat39/rust-tools.nvim'
    use 'mfussenegger/nvim-dap'
    use 'github/copilot.vim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'ryanoasis/vim-devicons'
    use 'xiyaowong/nvim-transparent'
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
