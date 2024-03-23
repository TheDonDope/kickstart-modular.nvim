function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
        require('rose-pine').setup({
            styles = {
                transparency = true
            }
        })

        vim.cmd("colorscheme rose-pine")

        ColorMyPencils()
    end

}
