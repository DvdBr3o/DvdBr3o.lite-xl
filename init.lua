-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

-- dark themes:
-- core.reload_module("colors.monokai-pro-classic")
core.reload_module("colors.monokai")
-- core.reload_module("colors.vscode-dark")

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- pass 'true' for second parameter to overwrite an existing binding
-- keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
-- keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------

-- customize fonts:
-- style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 14 * SCALE)
-- style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 14 * SCALE)
--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts.
-- USERDIR is the location of the Lite XL configuration directory.
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false

------------------------------ Plugins ----------------------------------------

-- enable or disable plugin loading setting config entries:

-- enable plugins.trimwhitespace, otherwise it is disabled by default:
config.plugins.trimwhitespace = true
--
-- disable detectindent, otherwise it is enabled by default
-- config.plugins.detectindent = false

---------------------------- Miscellaneous -------------------------------------

-- modify list of files to ignore when indexing the project:
-- config.ignore_files = {
--   -- folders
--   "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
--   "^node_modules/", "^%.cache/", "^__pycache__/",
--   -- files
--   "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
--   "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
--   "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
--   "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
-- }

---------------------------- lsp ----------------------------------------------
local lspconfig = require "plugins.lsp.config"

config.plugins.lsp.mouse_hover = true
config.plugins.lsp.mouse_hover_delay = 300
config.plugins.lsp.show_diagnostics = true

lspconfig.clangd.setup()

-- local lspkind = require 'plugins.lspkind'

-- lspkind.setup {
-- 	symbols = {
-- 		Text = '',
-- 		Method = '',
-- 		Function = '',
-- 		Constructor = '',
-- 		Field = 'ﰠ',
-- 		Variable = '',
-- 		Class = 'ﴯ',
-- 		Interface = '',
-- 		Module = '',
-- 		Property = 'ﰠ',
-- 		Unit = '塞',
-- 		Value = '',
-- 		Enum = '',
-- 		Keyword = '',
-- 		Snippet = '',
-- 		Color = '',
-- 		File = '',
-- 		Reference = '',
-- 		Folder = '',
-- 		EnumMember = '',
-- 		Constant = '',
-- 		Struct = 'פּ',
-- 		Event = '',
-- 		Operator = '',
-- 		TypeParameter = '',
-- 		Unknown = ''
-- 	},
-- 	format = 'symbolText', -- available default formats are text, symbol, symbolText and textSymbol
-- 	fontName = 'Hack NF', -- doesn't have to be exact
-- 	size = 12 * SCALE, -- Size of font for icons
-- 	-- if the above font_name doesnt work (which will happen on windows)
-- 	font_raw = nil -- renderer.font.load(USERDIR .. '/path/to/font.ttf', size * SCALE) -- as example
-- }

---------------------------- formatter ----------------------------------------
require "plugins.formatter_clangformat"
config.format_on_save = true

--------------------------------- indent --------------------------------------
-- require "plugins.autoinsert"
require "plugins.lfautoinsert"
config.indent_size = 4


---------------------------------- etc ----------------------------------------
require "plugins.exterm"
require "plugins.indentguide"
-- require "plugins.settings"
