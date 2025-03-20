-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "cssls",
  "clangd",
  "zls"
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.zls.setup {
  settings = {
    zls = {
      zig_exe_path = "/Users/magnusstenqvist/.asdf/installs/zig/0.14.0/bin/zig"
    }
  }
}
--
