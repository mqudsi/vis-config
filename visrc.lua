require('vis')
require('plugins/filetype')

vis.events.subscribe(vis.events.INIT, function()
	--global configuration--
	vis:command('set change-256colors off') --see vis#613
	vis:command('set theme base16-tomorrow-night')

	--keyboard shortcuts--
	vis:command('map insert <C-s> <Escape>:w<Enter>')
	vis:command('map normal <C-s> :w<Enter>')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	--per-window configuration--
	vis:command('set number')
	vis:command('set autoindent on')
end)

