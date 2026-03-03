----------------------------- keymaps -------------------------------
vim.g.mapleader = " "
local keymap = vim.keymap

--main navigation
keymap.set("i", "lk", "<ESC>", { noremap = true, silent = true, desc = "" })
keymap.set("v", "lk", "<ESC>", { noremap = true, silent = true, desc = "" })

--delete without copying into register
keymap.set('n', "d", "\"ad", { noremap = true, silent = true, desc = "delete text without coping to register" })
keymap.set('n', "x", '"_x', { noremap = true, silent = true, desc = "delete text without coping to register" })

-- save and quit
keymap.set('n', "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "write the file to disk" })
keymap.set('n', "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "quit from neovim" })

-- clear search highlight
keymap.set('n', "<leader>nh", ":nohl<CR>", { noremap = true, silent = true, desc = "remove the hightlight" })

-- split window
keymap.set('n', "<leader>sv", "<C-w>v", { noremap = true, silent = true, desc = "split window into vertical" })
keymap.set('n', "<leader>sh", "<C-w>s", { noremap = true, silent = true, desc = "split window into horizontal" })
keymap.set('n', "<leader>se", "<C-w>=", { noremap = true, silent = true, desc = "make the splits equal size" })
keymap.set('n', "<leader>sx", ":close<CR>", { noremap = true, silent = true, desc = "close the split window" })

-- -- window navigation
keymap.set('n', "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "move the cursor to right window" })
keymap.set('n', "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "move the cursor to down window" })
keymap.set('n', "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "move the cursor to upper window" })
keymap.set('n', "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "move the cursor to left window" })

-- tab control
keymap.set('n', "<leader>to", ":tabnew<CR>", { noremap = true, silent = true, desc = "open new tab" })
keymap.set('n', "<leader>tx", ":bdelete!<CR>", { noremap = true, silent = true, desc = "close current tab" })
-- keymap.set('n', "<leader>tn", ":tabn<CR>", {noremap=true, silent=true, desc="go to next tab"})
-- keymap.set('n', "<leader>tp", ":tabp<CR>", {noremap=true, silent=true, desc="go to previous tab"})
-- keymap.set('n', '<Tab>', ':bnext<CR>', {noremap=true, silent=true, desc="move to next buffer"})
-- keymap.set('n', '<S-Tab>', ':bprevious<CR>', {noremap=true, silent=true, desc="move to previous buffer"})
-- keymap.set('n', '<leader>d', ':bdelete!<CR>', {noremap=true, silent=true, desc=""}) -- close buffer
-- keymap.set('n', '<leader>b', '<cmd> enew <CR>', {noremap=true, silent=true, desc=""}) -- new buffers tab

-- tab navigations
keymap.set('n', "<leader>1", "1gt", { noremap = true, silent = true, desc = "go to 1st tab" })
keymap.set('n', "<leader>2", "2gt", { noremap = true, silent = true, desc = "go to 2nd tab" })
keymap.set('n', "<leader>3", "3gt", { noremap = true, silent = true, desc = "go to 3rd tab" })
keymap.set('n', "<leader>4", "4gt", { noremap = true, silent = true, desc = "go to 4th tab" })
keymap.set('n', "<leader>5", "5gt", { noremap = true, silent = true, desc = "go to 5th tab" })
keymap.set('n', "<leader>6", "6gt", { noremap = true, silent = true, desc = "go to 6th tab" })
keymap.set('n', "<leader>7", "7gt", { noremap = true, silent = true, desc = "go to 7th tab" })
keymap.set('n', "<leader>8", "8gt", { noremap = true, silent = true, desc = "go to 8th tab" })
keymap.set('n', "<leader>9", "9gt", { noremap = true, silent = true, desc = "go to 9th tab" })

--to move the block of code in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "move visual block(highlighted) down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "move visual block(highlighted) up" })

-- to make cursor to be in middle of the screen
keymap.set('n', "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "scroll down by half screen" })
keymap.set('n', "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "scroll up by half screen" })
keymap.set('n', 'n', "nzzzv", { noremap = true, silent = true, desc = "find next and center" })
keymap.set('n', 'N', "Nzzzv", { noremap = true, silent = true, desc = "find previous and center" })

-- it paste the text after send the highlighted text into void register
keymap.set("x", "<leader>p", '"_dp', { noremap = true, silent = true, desc = "paste from clipboard" })

-- to copy to clipboard
keymap.set('n', "<leader>y", '"+y', { noremap = true, silent = true, desc = "copy the text in normal" })
keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "copy the text in visual" })
keymap.set('n', "<leader>Y", '"+Y', { noremap = true, silent = true, desc = "copy whole line" })

-- warp lines
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc = " wrap and unwrap line" })

--to resize the window
keymap.set('n', "<C-Left>", ":vertical resize +3<CR>",
    { noremap = true, silent = true, desc = "resize vertical +3 units" })
keymap.set('n', "<C-Right>", ":vertical resize -3<CR>", {
    noremap = true,
    silent = true,
    desc =
    "resize vertical -3 units"
})
keymap.set('n', "<C-Up>", ":resize +3<CR>", { noremap = true, silent = true, desc = "resize horizontal +3 units" })   -- resize the buffer
keymap.set('n', "<C-Down>", ":resize -3<CR>", { noremap = true, silent = true, desc = "resize horizontal -3 units" }) -- resize the buffer

-- indent and stay in visual mode
keymap.set('v', '<', '<gv', { noremap = true, silent = true, desc = "unindent" })
keymap.set('v', '>', '>gv', { noremap = true, silent = true, desc = "indent" })

-- copy the file path
keymap.set('n', '<leader>fy', ":let @+=expand('%:p')<CR>",
    { noremap = true, silent = true, desc = "copy full file path" })
keymap.set('n', '<leader>fry', ":let @+=expand('%:p')<CR>",
    { noremap = true, silent = true, desc = "copy full file path" })

------------------------------------ end of keymaps -----------------------------------------------
------------------------------------ start of options ---------------------------------------------

local opt = vim.opt

opt.conceallevel = 1                       -- So that `` is visible in markdown files (default: 1)
opt.number = true                          -- Make line numbers default (default: false)
opt.relativenumber = true                  -- Set relative numbered lines (default: false)
opt.tabstop = 4                            -- Insert n spaces for a tab (default: 8)
opt.shiftwidth = 4                         -- The number of spaces inserted for each indentation (default: 8)
opt.softtabstop = 4                        -- The number of space to delete (default :8)
opt.expandtab = true                       -- Convert tabs to spaces (default: false)
opt.autoindent = true                      -- Copy indent from current line when starting new one (default: true)
opt.showtabline = 2                        -- Always show tabs (default: 1)
opt.ignorecase = true                      -- Case-insensitive searching UNLESS \C or capital in search (default: false)
opt.smartcase = true                       -- Smart case (default: false)
opt.smartindent = true                     -- Make indenting smarter again (default: false)
opt.undofile = true                        -- Save undo history (default: false)
opt.updatetime = 200                       -- -- Decrease update time (default: 4000)
opt.backup = false                         -- Creates a backup file (default: false)
opt.incsearch = true                       -- highlighting the words while searching
opt.colorcolumn = "100"                    -- guide line on the right side to stop writing to long lines
opt.scrolloff = 10                         -- will have atleat 10 lines below
opt.wrap = false                           -- Display lines as one long line (default: true)
opt.linebreak = true                       -- Companion to wrap, don't split words (default: false)
opt.termguicolors = false                  -- Set termguicolors to enable highlight groups (default: false)
opt.background = "dark"                    -- to the backgrond as dark or light
opt.signcolumn = "yes"                     -- Keep signcolumn on by default (default: 'auto')
opt.swapfile = true                        -- create a swapfile (default : true)
opt.cursorline = false                     -- -- Highlight the current line (default: false)
opt.spell = true                           -- enables the spell checking
opt.spelllang = { "en_us" }                -- checks the spelling language as english
opt.clipboard = 'unnamedplus'              -- Sync clipboard between OS and Neovim. (default: '')
opt.splitbelow = true                      -- Force all horizontal splits to go below current window (default: false)
opt.splitright = true                      -- Force all vertical splits to go to the right of current window (default: false)
opt.hlsearch = true                        -- Set highlight on search (default: true)
opt.showmode = false                       -- We don't need to see things like -- INSERT -- anymore (default: true)
opt.whichwrap =
'bs<>[]hl'                                 -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
opt.numberwidth = 4                        -- Set number column width to 2 {default 4} (default: 4)
opt.backspace = 'indent,eol,start'         -- Allow backspace on (default: 'indent,eol,start')
opt.pumheight = 10                         -- Pop up menu height (default: 0)
opt.fileencoding = 'utf-8'                 -- The encoding written to a file (default: 'utf-8')
opt.cmdheight = 1                          -- More space in the Neovim command line for displaying messages (default: 1)
opt.breakindent = true                     -- Enable break indent (default: false)
opt.timeoutlen = 300                       -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
opt.completeopt =
'menuone,noselect'                         -- Set completeopt to have a better completion experience (default: 'menu,preview')
opt.shortmess:append 'c'                   -- Don't give |ins-completion-menu| messages (default: does not include 'c')
opt.iskeyword:append '-'                   -- Hyphenated words recognized by searches (default: does not include '-')
opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
opt.winborder = 'rounded'

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})



------------------------------- plugins ---------------------------------------

vim.pack.add({
    { src = 'https://github.com/projekt0n/github-nvim-theme' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/folke/which-key.nvim' },
    { src = 'https://github.com/nvim-mini/mini.nvim' },
    { src = 'https://github.com/nvim-lua/plenary.nvim', },
    { src = 'https://github.com/ThePrimeagen/harpoon', },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/akinsho/toggleterm.nvim' },
    { src = 'https://github.com/folke/trouble.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
    { src = 'https://github.com/sphamba/smear-cursor.nvim' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-ui-select.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-live-grep-args.nvim' },
    { src = 'https://github.com/christoomey/vim-tmux-navigator' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
    { src = 'https://github.com/hrsh7th/cmp-buffer' },
    { src = 'https://github.com/hrsh7th/cmp-path' },
    { src = 'https://github.com/hrsh7th/cmp-cmdline' },
    { src = 'https://github.com/hrsh7th/nvim-cmp' },
    { src = 'https://github.com/hrsh7th/cmp-vsnip' },
    { src = 'https://github.com/hrsh7th/vim-vsnip' },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
    { src = 'https://github.com/saadparwaiz1/cmp_luasnip' },
})


local function pack_clean()
    local active_plugins = {}
    local unused_plugins = {}
    for _, plugin in ipairs(vim.pack.get()) do
        active_plugins[plugin.spec.name] = plugin.active
    end

    for _, plugin in ipairs(vim.pack.get()) do
        if not active_plugins[plugin.spec.name] then
            table.insert(unused_plugins, plugin.spec.name)
        end
    end
    if #unused_plugins == 0 then
        print("no unused plugins.")
        return
    end

    local choice = vim.fn.confirm("Romove unused plugins?", "&Yes\n&NO", 2)
    if choice == 1 then
        vim.pack.del(unused_plugins)
    end
end

keymap.set('n', '<leader>pc', pack_clean)

require('github-theme').setup({
    options = {
        compile_path = vim.fn.stdpath('cache') .. '/github-theme',
        compile_file_suffix = '_compiled', -- Compiled file suffix
        hide_end_of_buffer = true,         -- Hide the '~' character at the end of the buffer for a cleaner look
        hide_nc_statusline = true,         -- Override the underline style for non-active statuslines
        transparent = true,                -- Disable setting bg (make neovim's background transparent)
        terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,              -- Non focused panes set to alternative background
        module_default = true,             -- Default enable value for modules
        darken = {                         -- Darken floating windows and sidebar-like windows
            floats = true,
            sidebars = {
                enable = true,
                list = {}, -- Apply dark background to specific windows
            },
        },
    },
})

vim.cmd('colorscheme github_dark_default')

-- toggling the background transparency
local transparency = true
vim.keymap.set("n", "<leader>bg", function()
    require("github-theme").setup({
        options = {
            transparent = not transparency,
        }
    })
    transparency = not transparency
    vim.cmd('colorscheme github_dark_default')
end, { desc = 'change the background to trasparent' })


keymap.set('n', 'C-l', '<cmd>TmuxNavigatorRight')
keymap.set('n', 'C-h', '<cmd>TmuxNavigatorLeft')
keymap.set('n', 'C-k', '<cmd>TmuxNavigatorUp')
keymap.set('n', 'C-j', '<cmd>TmuxNavigatorDown')


keymap.set('n', '<leader>fm', vim.lsp.buf.format, { desc = 'format the current file with lsp' })

require('mini.pairs').setup()
require('mini.surround').setup()
require('mini.statusline').setup()
require('mini.snippets').setup()

require('smear_cursor').setup({
    opts = {
        stiffness = 0.9,
    }
})

keymap.set("n", "<C-b>", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true })
keymap.set("n", "<C-q>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true })
keymap.set("n", "<C-n>", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true })
keymap.set("n", "<C-p>", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true })

require('gitsigns').setup({
    signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = 'â€¾' },
        changedelete = { text = '~' },
    },
    signs_staged = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = 'â€¾' },
        changedelete = { text = '~' },
    },
    auto_attach = true,
    signcolumn = true,
})

require("toggleterm").setup({
    -- size can be a number or function which is passed the current terminal
    size = 20,
    open_mapping = [[<c-]>]],
    hide_numbers = true,    -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
    shading_factor = 2,     -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    persist_mode = true,    -- if set to true (default) the previous terminal mode will be remembered
    direction = "float",
    close_on_exit = true,   -- close the terminal window when the process exits
    -- Change the default shell. Can be a string or a function returning a string
    shell = "zsh",
    auto_scroll = true, -- automatically scroll to the bottom on terminal output
    float_opts = {
        border = "curved",
        -- like `size`, width and height can be a number or function which is passed the current terminal
        winblend = 0,
        width = 300,
        height = 85,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    winbar = {
        enabled = false,
        name_formatter = function(term) --  term: Terminal
            return term.name
        end,
    },
})

require('trouble').setup()

keymap.set('n', '<leader>d', ':Trouble diagnostics toggle<CR>')


-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 40,
        number = true,
        relativenumber = true,
        signcolumn = "yes",
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    keymap.set('n', "<leader>e", ":NvimTreeToggle<CR>",
        { noremap = true, silent = true, desc = "open and close nvim-tree file manager" }) -- open the nvim tree file manager
})


require('nvim-treesitter').setup({
    build = ":TSUpdate",
    ensure_installed = {},
    sync_install = false,
    auto_install = true,
    -- Enable highlighting
    highlight = {
        enable = true,
        disable = function(lang, buf)
            local max_filesize = 10000000 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enable = true,
    },
    folds = {
        enable = true,
    },
})


require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = require('telescope.actions').move_selection_previous, -- move to prev result
                ['<C-j>'] = require('telescope.actions').move_selection_next,     -- move to next result
                ['<C-l>'] = require('telescope.actions').select_default,          -- open file
            },
        },
    },
    find_files = {
        pickers = {
            file_ignore_patterns = { 'node_modules', '.git', '.venv' },
            hidden = true,
        },
    },
    live_grep = {
        file_ignore_patterns = { 'node_modules', '.git', '.venv' },
        additional_args = function(_)
            return { '--hidden' }
        end,
    },
    extensions = {
        ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
        },
    },
}

-- Enable Telescope extensions if they are installed
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
vim.keymap.set('n', "<leader>ff",
    "<cmd>lua require('telescope.builtin').find_files({ layout_config={ width=0.99, height=0.99}})<CR>",
    { desc = 'Search Files' })
vim.keymap.set('n', "<leader>fs",
    "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({ previewer=false, layout_config={ width=0.99, height=0.99}})<CR>",
    { desc = 'Fuzzily search in current buffer' })
-- vim.keymap.set('n', "<leader>fds", "<cmd>lua require('telescope.builtin').live_grep({ layout_config={ width=0.99, height=0.99}})<CR>", {desc = '[S]earch by [G]rep'})
-- vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
-- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader>gb', builtin.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set("n", "<leader>fc",
    "<cmd>lua require('telescope.builtin').commands({ layout_config={ width=0.99, height=0.99}})<CR>", {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
-- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })

------------------------------------- telescope-args -----------------------------------------------
local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

telescope.setup {
    extensions = {
        live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = {         -- extend mappings
                i = {
                    -- ["<C-k>"] = lga_actions.quote_prompt(),
                    -- ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                    -- freeze the current list and start a fuzzy search in the frozen list
                    ["<C-space>"] = lga_actions.to_fuzzy_refine,
                },
            },
        }
    }
}

-- don't forget to load the extension
telescope.load_extension("live_grep_args")
keymap.set("n", "<leader>fds",
    ":lua require('telescope').extensions.live_grep_args.live_grep_args({layout_config={ width=0.99, height=0.99}})<CR>")


local cmp = require('cmp')
cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<C-s>'] = cmp.mapping.complete({ reason = cmp.ContextReason.Auto, })({ "i", "c" }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif require("luasnip").expandable() then
                require("luasnip").expand()
            elseif require("luasnip").expand_or_jumpable() then
                require("luasnip").expand_or_jumpable()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif require("luasnip").jumpable(-2) then
                require("luasnip").jump(-2)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
        { name = 'path' },
    })
}

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})



local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gD", '<cmd>lua vim.lsp.buf.declaration()<CR>', bufopts)
    vim.keymap.set("n", "gd", '<cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
    vim.keymap.set("n", "K", '<cmd>lua vim.lsp.buf.hover()<CR>', bufopts)
    vim.keymap.set("n", "gi", '<cmd>lua vim.lsp.buf.implementation()<CR>', bufopts)
    vim.keymap.set("n", "<c-s>", '<cmd>lua vim.lsp.buf.signature_help()<CR>', bufopts)
    vim.keymap.set("n", "<space>D", '<cmd>lua vim.lsp.buf.type_definition()<CR>', bufopts)
    vim.keymap.set("n", "<space>rn", '<cmd>lua vim.lsp.buf.rename()<CR>', bufopts)
    vim.keymap.set("n", "<space>ca", '<cmd>lua vim.lsp.buf.code_action()<CR>', bufopts)
    vim.keymap.set("n", "gr", '<cmd>lua vim.lsp.buf.references()<CR>', bufopts)
    vim.keymap.set("n", "<space>Wa", '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', bufopts)
end


local lsp_servers = { 'clangd', 'pyright', 'lua_ls', 'jsonls' }
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs(lsp_servers) do
    vim.lsp.config(server, {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = lsp_flags
    })
    vim.lsp.enable(server)
end

require('mason').setup()
