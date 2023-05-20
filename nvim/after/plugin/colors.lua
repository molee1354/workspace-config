
function set_color(color)
	color = color or "rose-pine"

    -- scheme-specific settings
    if color=="rose-pine" then
        require(color).setup({
            disable_italics = true
        })
    end
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

set_color()
