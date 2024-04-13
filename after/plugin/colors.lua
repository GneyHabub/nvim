require("rose-pine").setup({
    variant = "auto",
})

function ColorMyPencils(color)
	color = color or "everforest"
        vim.cmd.colorscheme(color)
end

ColorMyPencils()
