-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
local util = require("lspconfig/util")
local path = util.path
local null_ls = require("null-ls")

local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    return path.join(vim.env.VIRTUAL_ENV, "bin", "python")
  end
  -- Find and use virtualenv via poetry in workspace directory.
  local match = vim.fn.glob(path.join(workspace, "poetry.lock"))
  if match ~= "" then
    local venv = vim.fn.trim(vim.fn.system("poetry env info -p"))
    return path.join(venv, "bin", "python")
  end
  -- Fallback to system Python.
  return vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
end

require("lspconfig").pyright.setup({
  -- on_attach = function()
  --   require("lsp_signature").on_attach({
  --     hint_enable = false,
  --   })
  -- end,
  on_init = function(client)
    client.config.settings.python.pythonPath = get_python_path(client.config.root_dir)
  end,
})

local sources = {
  -- python
  null_ls.builtins.formatting.black.with({
    extra_args = { "--line-length=120" },
  }),
  null_ls.builtins.formatting.isort,
}

null_ls.setup({ sources = sources })
