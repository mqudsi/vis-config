require('vis')
require('plugins/filetype')

--plugins--
require('plugins/twofinger-surround/surround')
require('plugins/vis-commentary/vis-commentary')
require('plugins/vis-ctags/ctags')
require('plugins/vis-fzf-open/fzf-open')
require('plugins/vis-modelines/vis-modelines')
require('plugins/vis-surround/vis-surround')

vis.events.subscribe(vis.events.INIT, function()
	--global configuration--
	vis:command('set change-256colors off') --see vis#613
	vis:command('set theme base16-tomorrow-night')

	--keyboard shortcuts--
	vis:command('map insert <C-s> <Escape>:w<Enter>')
	vis:command('map normal <C-s> :w<Enter>')
	vis:command('map! normal _ ^')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	--per-window configuration--
	vis:command('set number')
	vis:command('set autoindent on')
	vis:command('set cursorline on')
	vis:command('set tabwidth 4')
end)

