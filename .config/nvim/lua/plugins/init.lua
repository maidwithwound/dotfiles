return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.nvim-dap"
    end,
  },
  "rcarriga/nvim-dap-ui",
  {
    "williamboman/mason-lspconfig.nvim",
    cmd = {"LspInstall", "LspUninstall"}
  }
}
