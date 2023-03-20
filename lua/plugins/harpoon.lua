---@diagnostic disable: different-requires
require("harpoon").setup({
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,
    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,
})


require("telescope").load_extension('harpoon')
