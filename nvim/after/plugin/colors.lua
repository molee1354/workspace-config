
function set_color(color, transparent)
	color = color or "rose-pine"

    -- scheme-specific settings
    if color=="rose-pine" then
        require(color).setup({
            variant = 'dawn',
            disable_italics = true
        })
    end
	vim.cmd.colorscheme(color)

    if transparent==true then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

end

Color_scheme = "sonokai"
Transparent = false

set_color(Color_scheme, Transparent)
