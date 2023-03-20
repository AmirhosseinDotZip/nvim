local present, impatient = pcall(require, "impatient")

if present then
    impatient.enable_profile()
end

-- Setting files
require "settings.options"
require "settings.keymaps"

-- Plugin files
require "plugins"
require "plugins.impatient"
require "plugins.telescope"
require "plugins.treesitter"
require "plugins.alpha"
require "plugins.autopairs"
require "plugins.cmp"
require "plugins.colorscheme"
require "plugins.nvim-tree"
require "plugins.project"
require "plugins.lsp"
require "plugins.lualine"
require "plugins.toggleterm"
require "plugins.bufferline"
require "plugins.harpoon"
