return {
  {
    "codota/tabnine-nvim",
    enabled = true,
    build = "./dl_binaries.sh",
    config = function()
      require("pluginConfig/tabnine")
    end,
  },
  {
    "github/copilot.vim"
    enabled = true,
  },
}
