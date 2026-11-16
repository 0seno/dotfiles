return {
    "nvim-lualine/lualine.nvim",
    dependencies = {

    },
    config = function()
        require("lualine").setup({
            options = {
                theme = 'kanagawa-paper-ink',
                globalstatus = true,
                icons_enabled = false,
            },
            sections = {
                lualine_x = {
                    {
                        "encoding",
                        cond = function()
                            return vim.opt.fileencoding:get() ~= "utf-8"
                        end,
                    },
                    "filetype",
                }
            },
        })
    end,
}


