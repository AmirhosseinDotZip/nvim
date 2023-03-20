function keymap(mode, lhs, rhs, opts)
    return vim.api.nvim_set_keymap(mode, lhs, rhs, vim.tbl_extend('keep', opts or {}, {
        nowait = true,
        silent = true,
        noremap = true,
    }))
end

keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- source config

keymap('n', '<leader>s',
    ':source C:\\Users\\baniminator\\AppData\\Local\\nvim\\lua\\settings\\keymaps.lua<CR>:source C:\\Users\\baniminator\\AppData\\Local\\nvim\\lua\\settings\\options.lua<CR>')

keymap('i', 'jj', '<ESC>')                          -- Escape i mode

keymap('i', '<C-s>', '<C-o>:w<CR>')                 -- Save
keymap('n', '<leader>w', ':w<CR>')                      -- Save
keymap('n', '<S-q>', ':wq!<CR>')                    -- Save and exit
keymap('n', '<C-q>', ':q!<CR>')                    -- Save and exit
keymap('n', '<leader>q', ':q<CR>')                    -- Save and exit

-- Harpoon
keymap('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<cr>')
keymap('n', '<leader>hl', ':lua require("harpoon.ui").toggle_quick_menu()<cr>')
-- keymap('n', '<leader>h1', ':lua require("harpoon.ui").nav_file(3)<cr>')
keymap('n', '<leader>hn', ':lua require("harpoon.ui").nav_next()<cr>')
keymap('n', '<leader>hp', ':lua require("harpoon.ui").nav_prev()<cr>')


keymap('n', '<C-h>', '<C-w>h')                      -- Left slit
keymap('n', '<C-j>', '<C-w>j')                      -- Top slit
keymap('n', '<C-k>', '<C-w>k')                      -- Bot slit
keymap('n', '<C-l>', '<C-w>l')                      -- Right Slit

keymap('n', '<C-Up>', ':resize -2<CR>')             -- Top resize
keymap('n', '<C-Down>', ':resize +2<CR>')           -- Bottom resize
keymap('n', '<C-Right>', ':vertical resize -2<CR>') -- Right resize
keymap('n', '<C-Left>', ':vertical resize +2<CR>')  -- Left resize

keymap('n', '<S-l>', ':bnext<CR>')                  -- Next buffer
keymap('n', '<S-h>', ':bprevious<CR>')              -- Previous buffer
-- keymap('n', '<C-w>', ':bdelete<CR>')                  -- Close buffer
keymap('n', '<C-w>', ':bdelete<CR>')                -- Close buffer

keymap('n', 'n', 'nzzzv')                           -- Better movement for next command
keymap('n', 'N', 'Nzzzv')                           -- Better movement for next command



keymap('n', '<C-c>', '"+yy')       -- Copy current line in normal mode
keymap('v', '<C-c>', '"+y')        -- Copy selected lines in visual mode
keymap('i', '<C-c>', '<Esc>"+yyi') -- Copy current line in insert mode
keymap('n', '<C-v>', '"+p')        -- Paste copied line in normal mode
keymap('v', '<C-v>', '"+p')        --- Paste copied line in visual mode
keymap('i', '<C-v>', '<Esc>"+pi')  -- Paste copied line in insert mode


keymap('n', '<C-b>', ':NvimTreeToggle<cr>')               -- Open explorer tree

keymap("n", "<M-j>", ":m .+1<CR>==")                      -- Move line once in n mode (bottom)
keymap("n", "<M-k>", ":m .-2<CR>==")                      -- Move line once in n mode (top)
keymap("i", "<M-j>", "<Esc>:m .+1<CR>==")                 -- Move line in n mode (bottom)
keymap("i", "<M-k>", "<Esc>:m .-2<CR>==")                 -- Move line in n mode (top)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")                  -- Move line (bottom)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")                  -- Move line (top)

keymap('v', '<', '<gv')                                   -- Better indentation with tab
keymap('v', '>', '>gv')                                   -- Better indentation with tab (reverse)

keymap('x', 'd', '"_d')                                   -- Delete a line in v mode

keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>")     -- Find specific files
keymap("n", "<leader>p", "<cmd>Telescope live_grep<cr>")  -- Find specific text
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>")    -- Find specific text
keymap("n", "<leader>hh", "<cmd>Telescope help_tags<cr>") -- Find specific text
keymap("n", "<leader>k", "<cmd>Telescope keymaps<cr>")    -- Find specific text
keymap("n", "<leader>tp", "<cmd>Telescope projects<cr>")  -- List of projects
keymap("n", "<leader>c", "<cmd>Telescope commands<cr>")   -- List of projects


-- Kommentary
-- Default configuration
keymap("n", "<leader>/", "<Plug>kommentary_line_default")
keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>")

keymap("n", "<leader>l", ":LspInstallInfo<cr>")
