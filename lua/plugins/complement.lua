return {
    {
        "codota/tabnine-nvim",
        build = "./dl_binaries.sh",
        enabled = true,
        config = function()
            require("pluginConfig/tabnine")
        end,
    },
    {
        "github/copilot.vim",
        enabled = true,
    }
}
