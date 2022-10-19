local utils = require("colorscheme.utils")

local _swaync_template = {}

_swaync_template.name = "swaync"

_swaync_template.path = "swaync"
_swaync_template.filename = "theme.css"

_swaync_template.gen = function(schema)
	local template = utils.template(
		[[
/* ${theme} colorscheme for GTK CSS */
 /* ~/.config/swaync/theme.css */

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

return _swaync_template
