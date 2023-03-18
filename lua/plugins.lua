local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
end

-- Autocommand to reload plugins.lua on save
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}


return packer.startup(function(use)
    -- Dependencies
    use "wbthomason/packer.nvim"        -- Packer manage itself
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'kyazdani42/nvim-tree.lua'      -- File explorer tree
    use "nvim-telescope/telescope.nvim" -- Find, Filter, Preview, Pick. All lua, all the time.
    use "nvim-lua/plenary.nvim"         -- Useful lua functions used by lots of plugins
    use 'kyazdani42/nvim-web-devicons'  -- Adds file type icons to Vim plugins
    use 'goolord/alpha-nvim'            -- Greeter like startify

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
