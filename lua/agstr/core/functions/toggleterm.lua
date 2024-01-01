local ToggleTerm = {}

ToggleTerm = {

	term = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local t = Terminal:new({ cmd = "$SHELL", direction = "float" })
		return t:toggle()
	end,

	node = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local t = Terminal:new({ cmd = "node", direction = "float" })
		return t:toggle()
	end,

	python = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local t = Terminal:new({ cmd = "python3", direction = "float" })
		return t:toggle()
	end,

	lf = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local t = Terminal:new({ cmd = "lf", direction = "float" })
		return t:toggle()
	end,

	gotop = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local t = Terminal:new({ cmd = "gotop", direction = "float" })
		return t:toggle()
	end,
}

return ToggleTerm
