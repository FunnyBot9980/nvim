local telescope = require('telescope')

telescope.setup {}
-- to get fzf loaded/working with telescope
-- you need to call load_extension after 
-- the setup function

telescope.load_extension('fzf')
