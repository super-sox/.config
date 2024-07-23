local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'clangd',
      'rust_analyzer',
      'pylsp',
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

cmp.setup({

    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },

    mapping = {
        ['<S-Tab>'] = cmp.mapping.confirm({select = true}),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
        ['<C-k>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item({behavior = 'insert'})
            else
                cmp.complete()
            end
        end),
        ['<C-j>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item({behavior = 'insert'})
            else
                cmp.complete()
            end
        end),
    },
})
