require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'auto',
})

function ColorMyPencils(color)
	color = color or "rose-pine"
        vim.cmd.colorscheme(color)
end

ColorMyPencils()
