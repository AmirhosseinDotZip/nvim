function opt(scope, key, value)
    vim[scope][key] = value
    if scope ~= 'o' then
        vim['o'][key] = value
    end
end

opt('wo', 'number', true)            -- Show absolute line number
opt('wo', 'relativenumber', true)    -- Show line number relative to the cursor's current position
opt('wo', 'cursorline', true)        -- Highlight line on cursor's position
opt('o', 'smartcase', true)          -- Ignore the case of normal letters
opt('o', 'ignorecase', true)         -- Ignore case when pattern contains lowercase
opt('o', 'mouse', 'a')
opt('o', 'pumheight', 36)            -- Pop up menu height
opt('o', 'showmatch', true)          -- Briefly jump to the matching bracket
opt('o', 'ttimeoutlen', 1000)        -- Time in ms to wait for a key code sequence to complete
opt('o', 'termguicolors', true)      -- Check if terminal has 24-bit color support
opt('o', 'fileencoding', 'utf-8')
opt('o', 'hlsearch', true)           -- Highlight all matches on previous search pattern
opt('o', 'undofile', true)           -- Saves undo history to an undo file
opt('o', 'swapfile', false)          -- Don't use swapfile for the current buffer
opt('o', 'backup', false)            -- Don't make a backup before overwriting a file
opt('o', 'writebackup', false)
opt('o', 'smartindent', true)        -- Smart autoindenting when starting a new line
opt('o', 'signcolumn', 'number')     -- Always show the sign column
opt('o', 'shiftwidth', 2)            -- Change the number of space characters inserted for indentation
opt('o', 'shiftround', true)         -- Round indent to multiple of 'shiftwidth'
-- opt('o', 'foldmethod', 'syntax')     -- Folding used for the current window
opt('o', 'scrolloff', 8)             -- Minimal number of screen lines to keep above and below the cursor
opt('o', 'clipboard', 'unnamedplus') -- Copy paste between vim and everything else
opt('o', 'ttimeoutlen', 100)         -- Time in ms to wait for a key code sequence to complete
