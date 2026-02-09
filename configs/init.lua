------------------------------ keymaps -------------------------------
vim.g.mapleader = " "
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--main navigation
keymap.set("i", "lk", "<ESC>", opts)
keymap.set("v", "lk", "<ESC>", opts)

--delete without copying into register
keymap.set('n', "d", "\"ad", opts)
keymap.set('n', "x", '"_x', opts)

-- save and quit
keymap.set('n', "<leader>w", ":w<CR>", opts)
keymap.set('n', "<leader>q", ":q<CR>", opts)

-- clear search highlight
keymap.set('n', "<leader>nh", ":nohl<CR>", opts)

-- split window
keymap.set('n', "<leader>sv", "<C-w>v", opts) --split window into vertical
keymap.set('n', "<leader>sh", "<C-w>s", opts) --split window into horizontal
keymap.set('n', "<leader>se", "<C-w>=", opts) -- make the splits equal size
keymap.set('n', "<leader>sx", ":close<CR>", opts) -- close the window

-- -- window navigation
keymap.set('n', "<C-h>", "<C-w>h", opts) -- move the cursor to right window
keymap.set('n', "<C-j>", "<C-w>j", opts) -- move the cursor to down window
keymap.set('n', "<C-k>", "<C-w>k", opts) -- move the cursor to upper window
keymap.set('n', "<C-l>", "<C-w>l", opts) -- move the cursor to left window

-- tab control
keymap.set('n', "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap.set('n', "<leader>tx", ":bdelete!<CR>", opts) -- close the tab
-- keymap.set('n', "<leader>tn", ":tabn<CR>", opts) -- go to next tab
-- keymap.set('n', "<leader>tp", ":tabp<CR>", opts) -- go to previou-- Buffers
keymap.set('n', '<Tab>', ':bnext<CR>', opts)
keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
-- keymap.set('n', '<leader>d', ':bdelete!<CR>', opts) -- close buffer
-- keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffers tab

-- tab navigations
keymap.set('n', "<leader>1", "1gt", opts) -- go 1st tab and so on
keymap.set('n', "<leader>2", "2gt", opts)
keymap.set('n', "<leader>3", "3gt", opts)
keymap.set('n', "<leader>4", "4gt", opts)
keymap.set('n', "<leader>5", "5gt", opts)
keymap.set('n', "<leader>6", "6gt", opts)
keymap.set('n', "<leader>7", "7gt", opts)
keymap.set('n', "<leader>7", "8gt", opts)
keymap.set('n', "<leader>8", "8gt", opts)
keymap.set('n', "<leader>0", "0gt", opts)

--to move the block of code in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts) -- move the highlighted block of code down
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts) -- move the highlighted block of code up

-- to make cursor to be in middle of the screen
keymap.set('n', "<C-d>", "<C-d>zz", opts) -- move the view part down by half screen
keymap.set('n', "<C-u>", "<C-u>zz", opts) -- move the view part up by half screen
keymap.set('n', 'n', "nzzzv", opts) -- find and center
keymap.set('n', 'n', "Nzzzv", opts) -- find and center

-- it paste the text after send the highlighted text into void register
keymap.set("x", "<leader>p", '"_dp', opts)

-- to copy to clipboard
keymap.set('n', "<leader>y", '"+y', opts)
keymap.set("v", "<leader>y", '"+y', opts)
keymap.set('n', "<leader>Y", '"+Y', opts)

-- warp lines
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

--to resize the window
keymap.set('n', "<C-Left>", ":vertical resize +3<CR>", opts) -- resize the buffer
keymap.set('n', "<C-Right>", ":vertical resize -3<CR>", opts) -- resize the buffer
keymap.set('n', "<C-Up>", ":resize +3<CR>", opts) -- resize the buffer
keymap.set('n', "<C-Down>", ":resize -3<CR>", opts) -- resize the buffer

-- indent and stay in visual mode
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)

-- keymap.set('n', '<leader>fm', vim.lsp.buf.format) -- formating

------------------------------------ end of keymaps -----------------------------------------------
------------------------------------ start of options ---------------------------------------------

local opt = vim.opt

opt.conceallevel = 1 -- So that `` is visible in markdown files (default: 1)
opt.number = true  -- Make line numbers default (default: false)
opt.relativenumber = true -- Set relative numbered lines (default: false)
opt.tabstop = 4 -- Insert n spaces for a tab (default: 8)
opt.shiftwidth = 4  -- The number of spaces inserted for each indentation (default: 8)
opt.softtabstop = 4 -- The number of space to delete (default :8)
opt.expandtab = true -- Convert tabs to spaces (default: false)
opt.autoindent = true -- Copy indent from current line when starting new one (default: true)
opt.showtabline = 2 -- Always show tabs (default: 1)
opt.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search (default: false)
opt.smartcase = true -- Smart case (default: false)
opt.smartindent = true -- Make indenting smarter again (default: false)
opt.undofile = true -- Save undo history (default: false)
opt.updatetime = 200 -- -- Decrease update time (default: 4000)
opt.backup = false -- Creates a backup file (default: false)
opt.incsearch = true -- highlighting the words while searching
opt.colorcolumn = "100" -- guide line on the right side to stop writing to long lines
opt.scrolloff = 10 -- will have atleat 10 lines below
opt.wrap = false -- Display lines as one long line (default: true)
opt.linebreak = true -- Companion to wrap, don't split words (default: false)
opt.termguicolors = false -- Set termguicolors to enable highlight groups (default: false)
opt.background = "dark" -- to the backgrond as dark or light
opt.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')
opt.swapfile = true -- create a swapfile (default : true)
opt.cursorline = false -- -- Highlight the current line (default: false)
opt.spell = true -- enables the spell checking 
opt.spelllang = { "en_us" } -- checks the spelling language as english
opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. (default: '')
opt.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
opt.splitright = true -- Force all vertical splits to go to the right of current window (default: false)
opt.hlsearch = true -- Set highlight on search (default: true)
opt.showmode = false -- We don't need to see things like -- INSERT -- anymore (default: true)
opt.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
opt.numberwidth = 4 -- Set number column width to 2 {default 4} (default: 4)
opt.backspace = 'indent,eol,start' -- Allow backspace on (default: 'indent,eol,start')
opt.pumheight = 10 -- Pop up menu height (default: 0)
-- opt.fileencoding = 'utf-8' -- The encoding written to a file (default: 'utf-8')
opt.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
opt.breakindent = true -- Enable break indent (default: false)
opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
-- opt.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience (default: 'menu,preview')
opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages (default: does not include 'c')
opt.iskeyword:append '-' -- Hyphenated words recognized by searches (default: does not include '-')
opt.formatoptions:remove { 'c', 'r', 'o' } -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode. (default: 'croql')
-- opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Separate Vim plugins from Neovim in case Vim still in use (default: includes this path if Vim is installed)
--

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-------------------------------------- end of options ---------------------------------------------
-------------------------------------- loading the plugins ----------------------------------------

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
        {
           'projekt0n/github-nvim-theme', 
           lazy = false, -- make sure we load this during startup if it is your main colorscheme
           priority = 1000, -- make sure to load this before all the other start plugins
        },
        {
            "nvim-tree/nvim-tree.lua",
            version = "*",
            lazy = false,
            dependencies = {
                "nvim-tree/nvim-web-devicons",
            },
        },
        {
            "nvim-mini/mini.nvim",
            version = false,
        },
        {
           'nvim-lualine/lualine.nvim',
           dependencies = { 
               'nvim-tree/nvim-web-devicons'
           }
        },
	{
	   "christoomey/vim-tmux-navigator",
	        cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
			"TmuxNavigatorProcessList",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
        {
            "folke/which-key.nvim",
            event = "VeryLazy",
            init = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 500
            end,
            opts = {},
        },
        {
           'nvim-lua/plenary.nvim',
           'ThePrimeagen/harpoon'
        },
        {
           'lewis6991/gitsigns.nvim',
           opts = {
               signs = {
                   add = { text = '+' },
                   change = { text = '~' },
                   delete = { text = '_' },
                   topdelete = { text = '‾' },
                   changedelete = { text = '~' },
               },
               signs_staged = {
                   add = { text = '+' },
                   change = { text = '~' },
                   delete = { text = '_' },
                   topdelete = { text = '‾' },
                   changedelete = { text = '~' },
               },
           },
        },
        {
           "akinsho/toggleterm.nvim",
        },

        { 
           'nvim-treesitter/nvim-treesitter',
        },

        {
           'nvim-telescope/telescope.nvim',
           version = "0.1.x",
           dependencies = 
           {
               "nvim-lua/plenary.nvim",
                { 
                   'nvim-telescope/telescope-fzf-native.nvim',
                   build = 'make',
                },
                { 
                   'nvim-telescope/telescope-ui-select.nvim' 
                },
                { 
                   'nvim-tree/nvim-web-devicons', 
                   enabled = vim.g.have_nerd_font 
                },
                { 
                "nvim-telescope/telescope-live-grep-args.nvim" ,
                -- This will not install any breaking changes.
                -- For major updates, this must be adjusted manually.
                version = "^1.0.0",
                },
            },
           config = function()
               local telescope = require("telescope")
               -- then load the extension
               telescope.load_extension("live_grep_args")
           end
        },
        --lsp
        {
            "neovim/nvim-lspconfig",
            "mason-org/mason.nvim",
            -- "mason-org/mason-lspconfig.nvim",
            -- 'WhoIsSethDaniel/mason-tool-installer.nvim'
       },
        --completion
        {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
            "dcampos/nvim-snippy",
            "dcampos/cmp-snippy",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
            "onsails/lspkind.nvim",
            "uga-rosa/cmp-dictionary",
            "f3fora/cmp-spell",
        },
})
---------------------------------------- completion ----------------------------------------------
local cmp = require("cmp")
require("luasnip/loaders/from_vscode").lazy_load()

require("cmp").setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			-- vim.fn["vsnip#anonymous"](args.body)
			-- require("snippy").expand_snippet(args.body) -- For `luasnip` users.
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.abort(),
		vim.keymap.set("i", "<C-p>", "cmp.mapping.select_prev_item()"),
		vim.keymap.set("i", "<C-n>", "cmp.mapping.select_next_item()"),
		vim.keymap.set("i", "<C-s>", function()
			cmp.mapping.complete({
				reason = cmp.ContextReason.Auto,
			})({ "i", "c" })
		end),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		vim.keymap.set("i", "<C-e>", "cmp.mapping.abort()"),

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

	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
			local strings = vim.split(kind.kind, "%s", { trimempty = true })
			kind.kind = " " .. (strings[1] or "") .. " "
			kind.menu = "    (" .. (strings[2] or "") .. ")"

			return kind
		end,
	},
	sources = cmp.config.sources({
        { name = "nvim_lsp" },
        -- { name = "nvim_lua" },
		{ name = "luasnip" }, -- For luasnip users.
		-- { name = "vsnip" },
		-- { name = "snippy" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
		{ name = "dictionary" },
		-- { name = "spell" },
	}),

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = "buffer" },
	}),
})
-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})


--------------------------------------- github theme ------------------------------------------

require('github-theme').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath('cache') .. '/github-theme',
    compile_file_suffix = '_compiled', -- Compiled file suffix
    hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
    hide_nc_statusline = true, -- Override the underline style for non-active statuslines
    transparent = true,       -- Disable setting bg (make neovim's background transparent)
    terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,      -- Non focused panes set to alternative background
    module_default = true,     -- Default enable value for modules
    styles = {                 -- Style to be applied to different syntax groups
      comments = 'NONE',       -- Value is any valid attr-list value `:help attr-list`
      functions = 'NONE',
      keywords = 'NONE',
      variables = 'NONE',
      conditionals = 'NONE',
      constants = 'NONE',
      numbers = 'NONE',
      operators = 'NONE',
      strings = 'NONE',
      types = 'NONE',
    },
    inverse = {                -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    darken = {                 -- Darken floating windows and sidebar-like windows
      floats = true,
      sidebars = {
        enable = true,
        list = {},             -- Apply dark background to specific windows
      },
    },
    modules = {                -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
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
end)

-------------------------------------- web devicon ------------------------------------------------

require("nvim-web-devicons").setup({
	-- your personal icons can go here (to override)
	-- you can specify color or cterm_color instead of specifying both of them
	-- DevIcon will be appended to `name`
	override = {
		pwsh = {
			icon = "",
			color = "#428850",
			cterm_color = "65",
			name = "pwsh",
		},
	},
	-- globally enable different highlight colors per icon (default to true)
	-- if set to false all icons will have the default icon's color
	color_icons = true,
	-- globally enable default icons (default to false)
	-- will get overridden by `get_icons` option
	default = true,
	-- globally enable "strict" selection of icons - icon will be looked up in
	-- different tables, first by filename, and if not found by extension; this
	-- prevents cases when file doesn't have any extension but still gets some icon
	-- because its name happened to match some extension (default to false)
	strict = true,
	-- same as `override` but specifically for overrides by filename
	-- takes effect when `strict` is true
	override_by_filename = {
		[".gitignore"] = {
			icon = "",
			color = "#f1502f",
			name = "Gitignore",
		},
	},
	-- same as `override` but specifically for overrides by extension
	-- takes effect when `strict` is true
	override_by_extension = {
		["log"] = {
			icon = "",
			color = "#81e043",
			name = "Log",
		},
	},
})

-------------------------------------- diagnostics --------------------------------------------------
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end
sign({ name = "DiagnosticSignError", text = "✘" })
sign({ name = "DiagnosticSignWarn", text = "▲" })
sign({ name = "DiagnosticSignHint", text = "⚑" })
sign({ name = "DiagnosticSignInfo", text = "" })

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<space>d", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>x", vim.diagnostic.setloclist, opts)

-------------------------------------- nvim tree --------------------------------------------------

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 40,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
    keymap.set('n', "<leader>e", ":NvimTreeToggle<CR>", opts) -- open the nvim tree file manager
})

--------------------------------------lueline ------------------------------------------------

-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require("lualine")

-- Color table for highlights
-- stylua: ignore
local colors = {
    bg       = '#202328',
    fg       = '#bbc2cf',
    yellow   = '#ECBE7B',
    cyan     = '#008080',
    darkblue = '#081633',
    green    = '#98be65',
    orange   = '#FF8800',
    violet   = '#a9a1e1',
    magenta  = '#c678dd',
    blue     = '#51afef',
    red      = '#ec5f67',
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand("%:p:h")
		local gitdir = vim.fn.finddir(".git", filepath .. ";")
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
}

-- Config
local config = {
	options = {
		-- Disable sections and component separators
		component_separators = "",
		section_separators = "",
		theme = {
			-- We are going to use lualine_c an lualine_x as left and
			-- right section. Both are highlighted by c theme .  So we
			-- are just setting default looks o statusline
			normal = { c = { fg = colors.fg, bg = colors.bg } },
			inactive = { c = { fg = colors.fg, bg = colors.bg } },
		},
	},
	sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		-- These will be filled later
		lualine_c = {},
		lualine_x = {},
	},
	inactive_sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
	table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
	table.insert(config.sections.lualine_x, component)
end

-- ins_left({
-- 	function()
-- 		return "▊"
-- 	end,
-- 	color = { fg = colors.blue }, -- Sets highlighting of component
-- 	padding = { left = 0, right = 1 }, -- We don't need space before this
-- })

ins_left({
	-- mode component
	function()
        return "▊"
	end, 
	color = function()
		-- auto change color according to neovims mode
		local mode_color = {
			n = colors.blue,
			i = colors.green,
			v = colors.red,
			[""] = colors.red,
			V = colors.red,
			c = colors.magenta,
			no = colors.blue,
			s = colors.orange,
			S = colors.orange,
			[""] = colors.orange,
			ic = colors.yellow,
			R = colors.violet,
			Rv = colors.violet,
			cv = colors.blue,
			ce = colors.blue,
			r = colors.cyan,
			rm = colors.cyan,
			["r?"] = colors.cyan,
			["!"] = colors.blue,
			t = colors.blue,
		}
		return { fg = mode_color[vim.fn.mode()] }
	end,
	padding = { right = 1 },
})

ins_left({
	-- filesize component
	"filesize",
	cond = conditions.buffer_not_empty,
})

ins_left({
	"filename",
    file_status = true,
    path = 2,
	cond = conditions.buffer_not_empty,
	color = { fg = colors.magenta, gui = "bold" },
})

ins_left({ "location" })

ins_left({ "progress", color = { fg = colors.fg, gui = "bold" } })

ins_left({
	"diagnostics",
	sources = { "nvim_diagnostic" },
	symbols = { error = " ", warn = " ", info = " " },
	diagnostics_color = {
		color_error = { fg = colors.red },
		color_warn = { fg = colors.yellow },
		color_info = { fg = colors.cyan },
	},
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
	function()
		return "%="
	end,
})

ins_left({
	-- Lsp server name .
	function()
		local msg = "No Active Lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	icon = " LSP:",
	color = { fg = "#ffffff", gui = "bold" },
})

-- Add components to right sections
ins_right({
	"o:encoding", -- option component same as &encoding in viml
	fmt = string.upper, -- I'm not sure why it's upper case either ;)
	cond = conditions.hide_in_width,
	color = { fg = colors.green, gui = "bold" },
})

ins_right({
	"fileformat",
	fmt = string.upper,
	icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
	color = { fg = colors.green, gui = "bold" },
})

ins_right({
	"branch",
	icon = "",
	color = { fg = colors.violet, gui = "bold" },
})

ins_right({
	"diff",
	-- Is it me or the symbol for modified us really weird
	symbols = { added = " ", modified = "󰝤 ", removed = " " },
	diff_color = {
		added = { fg = colors.green },
		modified = { fg = colors.orange },
		removed = { fg = colors.red },
	},
	cond = conditions.hide_in_width,
})

ins_right({
	function()
		return "▊"
	end,
	color = { fg = colors.blue },
	padding = { left = 1 },
})

-- Now don't forget to initialize lualine
lualine.setup(config)

-------------------------------------- treesitter ------------------------------------------------
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

-------------------------------------- telescope ------------------------------------------------
require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = require('telescope.actions').move_selection_previous, -- move to prev result
                ['<C-j>'] = require('telescope.actions').move_selection_next, -- move to next result
                ['<C-l>'] = require('telescope.actions').select_default, -- open file
            },
        },
    },
    pickers = {
        find_files = {
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
vim.keymap.set('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({ layout_config={ width=0.99, height=0.99}})<CR>", { desc = '[S]earch [F]iles' })
vim.keymap.set('n', "<leader>fs", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({ previewer=false, layout_config={ width=0.99, height=0.99}})<CR>", {desc = '[/] Fuzzily search in current buffer'})
-- vim.keymap.set('n', "<leader>fds", "<cmd>lua require('telescope.builtin').live_grep({ layout_config={ width=0.99, height=0.99}})<CR>", {desc = '[S]earch by [G]rep'})
-- vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
-- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader>gb', builtin.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set("n", "<leader>fc", "<cmd>lua require('telescope.builtin').commands({ layout_config={ width=0.99, height=0.99}})<CR>", {})
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
      mappings = { -- extend mappings
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
keymap.set("n", "<leader>fds", ":lua require('telescope').extensions.live_grep_args.live_grep_args({layout_config={ width=0.99, height=0.99}})<CR>")

-------------------------------------- harpoon ------------------------------------------------

keymap.set("n", "<C-b>", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true })
keymap.set("n", "<C-q>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true })
keymap.set("n", "<C-n>", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true })
keymap.set("n", "<C-p>", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true })

---------------------------------------- mason ------------------------------------------------
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
-- require("mason-lspconfig").setup()

-- ---------------------------------------- mason tool installer ------------------------------------
-- require('mason-tool-installer').setup({
--     ensure_installed = {},
--     auto_update = true,
--     run_on_start = true,
--     start_delay = 1000, -- 3 second delay
--     debounce_hours = 5, -- at least 5 hours between attempts to install/update
--     integrations = {
--         ['mason-lspconfig'] = true,
--         -- ['mason-null-ls'] = true,
--         -- ['mason-nvim-dap'] = true,
--     },
-- })

require("toggleterm").setup({
	-- size can be a number or function which is passed the current terminal
	size = 20,
	open_mapping = [[<c-]>]],
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
	shading_factor = 2, -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
	direction = "float",
	close_on_exit = true, -- close the terminal window when the process exits
	-- Change the default shell. Can be a string or a function returning a string
	shell = "zsh",
	auto_scroll = true, -- automatically scroll to the bottom on terminal output
	-- This field is only relevant if direction is set to 'float'
	float_opts = {
		border = "curved",
		-- like `size`, width and height can be a number or function which is passed the current terminal
		winblend = 0,
		width = 230,
        height = 40,
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

---------------------------------------- lsp ------------------------------------------------
-- require'lspconfig'.clangd.setup{}
local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr}
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


local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}


vim.lsp.config("lus_ls", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.config("diagnosticls", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.config("bashls", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.config("pyright", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.config("clangd", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.config("cmake", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.config("yamlls", {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("diagnosticls")
vim.lsp.enable("bashls")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
vim.lsp.enable("cmake")
vim.lsp.enable("yamlls")

