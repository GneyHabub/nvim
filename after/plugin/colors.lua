require('nordtheme').setup({
})

function ColorMyPencils(color)
	color = color or "nordtheme"
        vim.cmd.colorscheme(color)
end

ColorMyPencils()
