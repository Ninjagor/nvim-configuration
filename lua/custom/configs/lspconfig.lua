local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "clangd", "tailwindcss", "prismals" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})


lspconfig.prismals.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"prisma"},
})

-- lspconfig.jdtls.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"java"},
-- })
