return {

    {'tpope/vim-fugitive'},

    {'mbbill/undotree'},

    {
        --- Uncomment the two plugins below if you want to manage the language servers from neovim
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
    },

    {
        'ThePrimeagen/harpoon',
        branch = "harpoon2",
        dependencies = { 'nvim-lua/plenary.nvim' }
    },


    {"EdenEast/nightfox.nvim"},

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

}
