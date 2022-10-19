local utils = require("colorscheme.utils")

local _waybar_template = {}

_waybar_template.name = "waybar"

_waybar_template.path = "waybar"
_waybar_template.filename = "theme.css"

_waybar_template.gen = function(schema)
	local template = utils.template(
		[[
/* ${theme} colorscheme for GTK CSS */

 /* ~/.config/waybar/theme.css */

@define-color accent ${accent};
@define-color bg0 ${bg0};
@define-color bg1 ${bg1};
@define-color bg2 ${bg2};
@define-color bg3 ${bg3};
@define-color bg4 ${bg4};

@define-color fg0 ${fg0};
@define-color fg1 ${fg1};
@define-color fg2 ${fg2};
@define-color fg3 ${fg3};
@define-color black ${black};
@define-color red ${red};
@define-color orange ${orange};
@define-color yellow ${yellow};
@define-color green ${green};
@define-color teal ${teal};
@define-color cyan ${cyan};
@define-color blue ${blue};
@define-color magenta ${magenta};
@define-color purple ${purple};
@define-color white ${white};
@define-color gray ${gray};
    ]],
		schema
	)

	return template
end

return _waybar_template
