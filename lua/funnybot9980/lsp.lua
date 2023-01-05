local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'sumneko_lua',
    'rust_analyzer',
    'kotlin_language_server',
    'html',
})

lsp.nvim_workspace()
lsp.setup()
