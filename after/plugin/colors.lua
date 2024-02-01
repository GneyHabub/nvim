require("rose-pine").setup({
    variant = "auto",
})

function ColorMyPencils(color)
	color = color or "rose-pine"
        vim.cmd.colorscheme(color)
end

ColorMyPencils()
