return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", config = true },
    { "williamboman/mason-lspconfig.nvim", config = true },
    { "WhoIsSethDaniel/mason-tool-installer.nvim", config = true },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "nvim-java/nvim-java" },
  },
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("lsp-config", { clear = true }),

      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        local builtin = require "telescope.builtin"
        map("gd", builtin.lsp_definitions, "[G]o to [D]efinitions")
        map("gr", builtin.lsp_references, "[G]o to [R]erencens")
      end,
    })

    local cmp = require "cmp"

    cmp.setup {
      sources = {
        { name = "nvim_lsp" },
      },
      mapping = cmp.mapping.preset.insert {},
    }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

    require("java").setup()

    local servers = {
      rust_analyzer = {},
      jdtls = {},
    }

    ---
    -- mason
    ---
    require("mason").setup()

    local ensure_installed = vim.tbl_keys(servers or {})
    vim.list_extend(ensure_installed, {
      -- Formatting
      "stylua", -- Used to format Lua code
    })
    require("mason-tool-installer").setup {
      ensure_installed = ensure_installed,
    }

    require("mason-lspconfig").setup {
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    }
  end,
}
