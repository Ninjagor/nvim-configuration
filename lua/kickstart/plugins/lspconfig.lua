-- return {
--   {
--     'folke/lazydev.nvim',
--     ft = 'lua',
--     opts = {
--       library = {
--         { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
--       },
--     },
--   },
--   {
--     'neovim/nvim-lspconfig',
--     dependencies = {
--       { 'mason-org/mason.nvim', opts = {} },
--       'mason-org/mason-lspconfig.nvim',
--       'WhoIsSethDaniel/mason-tool-installer.nvim',
--
--       -- Useful status updates for LSP.
--       { 'j-hui/fidget.nvim', opts = {} },
--
--       'hrsh7th/nvim-cmp',
--       'hrsh7th/cmp-nvim-lsp',
--
--       -- 'saghen/blink.cmp',
--     },
--     config = function()
--       vim.api.nvim_create_autocmd('LspAttach', {
--         group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
--         callback = function(event)
--           local map = function(keys, func, desc, mode)
--             mode = mode or 'n'
--             vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
--           end
--
--           map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
--
--           map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
--
--           ---@param client vim.lsp.Client
--           ---@param method vim.lsp.protocol.Method
--           ---@param bufnr? integer some lsp support methods only in specific files
--           ---@return boolean
--           local function client_supports_method(client, method, bufnr)
--             if vim.fn.has 'nvim-0.11' == 1 then
--               return client:supports_method(method, bufnr)
--             else
--               return client.supports_method(method, { bufnr = bufnr })
--             end
--           end
--
--           local client = vim.lsp.get_client_by_id(event.data.client_id)
--           if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
--             local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
--
--             vim.api.nvim_create_autocmd('LspDetach', {
--               group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
--               callback = function(event2)
--                 vim.lsp.buf.clear_references()
--                 vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
--               end,
--             })
--           end
--
--           if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
--             map('<leader>th', function()
--               vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
--             end, '[T]oggle Inlay [H]ints')
--           end
--         end,
--       })
--
--       vim.diagnostic.config {
--         severity_sort = true,
--         float = { border = 'rounded', source = 'if_many' },
--         underline = { severity = vim.diagnostic.severity.ERROR },
--         signs = vim.g.have_nerd_font and {
--           text = {
--             [vim.diagnostic.severity.ERROR] = '󰅚 ',
--             [vim.diagnostic.severity.WARN] = '󰀪 ',
--             [vim.diagnostic.severity.INFO] = '󰋽 ',
--             [vim.diagnostic.severity.HINT] = '󰌶 ',
--           },
--         } or {},
--         virtual_text = {
--           source = 'if_many',
--           spacing = 2,
--           format = function(diagnostic)
--             local diagnostic_message = {
--               [vim.diagnostic.severity.ERROR] = diagnostic.message,
--               [vim.diagnostic.severity.WARN] = diagnostic.message,
--               [vim.diagnostic.severity.INFO] = diagnostic.message,
--               [vim.diagnostic.severity.HINT] = diagnostic.message,
--             }
--             return diagnostic_message[diagnostic.severity]
--           end,
--         },
--       }
--
--       -- local capabilities = require('blink.cmp').get_lsp_capabilities()
--
--       local servers = {
--         -- clangd = {},
--         -- gopls = {},
--         pyright = {},
--         -- asm_lsp = {},
--         rust_analyzer = {},
--
--         cssls = {},
--         jdtls = {},
--         ts_ls = {},
--         tailwindcss = {},
--         clangd = {},
--
--         lua_ls = {
--           settings = {
--             Lua = {
--               completion = {
--                 callSnippet = 'Replace',
--               },
--             },
--           },
--         },
--       }
--       local ensure_installed = vim.tbl_keys(servers or {})
--       vim.list_extend(ensure_installed, {
--         'stylua', -- Used to format Lua code
--         'clangd',
--         -- 'zls',
--         'rust_analyzer',
--         -- 'asm_lsp',
--         'jdtls',
--         'cssls',
--       })
--       require('mason-tool-installer').setup { ensure_installed = ensure_installed }
--
--       require('mason-lspconfig').setup {
--         ensure_installed = {}, -- explicitly set to an empty table (Kickstart populates installs via mason-tool-installer)
--         automatic_installation = false,
--         handlers = {
--           function(server_name)
--             local server = servers[server_name] or {}
--             server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
--             require('lspconfig')[server_name].setup(server)
--           end,
--         },
--       }
--     end,
--   },
-- }
-- vim: ts=2 sts=2 sw=2 et

return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'mason-org/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

      -- LSP attach autocmd + keymaps
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
          map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

          local function client_supports_method(client, method, bufnr)
            if vim.fn.has 'nvim-0.11' == 1 then
              return client:supports_method(method, bufnr)
            else
              return client.supports_method(method, { bufnr = bufnr })
            end
          end

          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end

          if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
          end
        end,
      })

      vim.diagnostic.config {
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        underline = { severity = vim.diagnostic.severity.ERROR },
        signs = vim.g.have_nerd_font and {
          text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = '󰋽 ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
          },
        } or {},
        virtual_text = {
          source = 'if_many',
          spacing = 2,
          format = function(diagnostic)
            return diagnostic.message
          end,
        },
      }

      local servers = {
        pyright = {},
        rust_analyzer = {},
        cssls = {},
        jdtls = {},
        ts_ls = {},
        tailwindcss = {},
        clangd = {},
        lua_ls = {
          settings = {
            Lua = {
              completion = { callSnippet = 'Replace' },
            },
          },
        },
      }

      local ensure_installed = vim.tbl_keys(servers)
      vim.list_extend(ensure_installed, {
        'stylua',
        'clangd',
        'rust_analyzer',
        'jdtls',
        'cssls',
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        ensure_installed = {}, -- managed by mason-tool-installer
        automatic_installation = false,
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, cmp_capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
