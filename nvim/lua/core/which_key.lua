local which_key = require("which-key")
local config = require("config.which_key")
local keymap = require("config.keymap")

which_key.setup(config)
which_key.register(keymap["common"])
