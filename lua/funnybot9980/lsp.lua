local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumnecko_lua',
    'rust_analyzer',
    'pyright',
    'java_language_server',
    'kotlin_language_server',
    'html',
    'luau_lsp',
    'phpactor'
})

lsp.nvim_workspace()
lsp.setup()
