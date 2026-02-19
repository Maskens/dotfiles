local map = vim.keymap.set

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup();
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "zls",
          "clangd"
        }
      });
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      --local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem = {
        documentationFormat = { "markdown", "plaintext" },
        snippetSupport = true,
        preselectSupport = true,
        insertReplaceSupport = true,
        labelDetailsSupport = true,
        deprecatedSupport = true,
        commitCharactersSupport = true,
        tagSupport = { valueSet = { 1 } },
        resolveSupport = {
          properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
          },
        },
      }
      vim.lsp.config('elixirls', {
        cmd = { vim.fn.stdpath("data") .. "/mason/bin/elixir-ls"}
      })

      vim.lsp.config('zls', {
        settings = {
          zls = {
            capabilities = capabilities,
            -- zig_exe_path = "/Users/magnusstenqvist/.asdf/shims/zig"
            zig_exe_path = "/Users/magnusstenqvist/progg/zig/zig-aarch64-macos-0.16.0-dev.2510+bcb5218a2/zig"
          }
        }
      })

      vim.lsp.config('lua_ls', {
        capabilities = capabilities,
        settings = {
          Lua = {
            capabilities = capabilities,
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                vim.fn.expand "$VIMRUNTIME/lua",
                vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
                vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
                vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
                "${3rd}/luv/library",
              },
              maxPreload = 100000,
              preloadFileSize = 10000,
            },
          },
        },
      })

      map("n", "K", vim.lsp.buf.hover, { desc = "Hover"})
      map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action"})
      map("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition"})
      map("n", "gi", vim.lsp.buf.implementation, { desc = "Goto implementation" })
      map("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Signature help" })
      map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Diagnostics" })
      map("n", "<leader>dn", function () vim.diagnostic.jump({ count = 1}) end, { desc = "Goto next diagnostic"})
      map("n", "<leader>dp", function () vim.diagnostic.jump({ count = -1}) end, { desc = "Goto prev diagnostic"})

      map("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Goto type definition" })
      map("n", "gr", vim.lsp.buf.references, { desc = "Type references" })
    end
  }
}
