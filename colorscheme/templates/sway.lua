local utils = require("colorscheme.utils")

local _sway_template = {}

_sway_template.name = "sway"

_sway_template.path = "sway"
_sway_template.filename = "theme"

_sway_template.gen = function(schema)
	local template = utils.template(
		[[
# Sway window decorations
# class                 border              background          text                indicator           child_border
client.focused          ${accent}     ${bg4}        ${fg1}        ${red}        ${accent}
client.focused_inactive ${bg4}        ${bg4}        ${fg1}        ${red}        ${bg4}
client.unfocused        ${bg1}        ${bg1}        ${fg1}        ${red}        ${bg1}
client.urgent           ${red}        ${red}        ${bg1}        ${red}        ${red}
    ]],
		schema
	)

	return template
end

return _sway_template
