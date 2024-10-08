-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  spec = {
    { import = "rurushu0.plugins" },
    { import = "rurushu0.plugins.editing" },
    { import = "rurushu0.plugins.ui" },
    { import = "rurushu0.plugins.util" },
    { import = "rurushu0.plugins.lsp" },
    { import = "rurushu0.plugins.formatting" },
    { import = "rurushu0.plugins.db" },
    { import = "rurushu0.plugins.term" },
  },

  checker == {
    enable = true,
    notifiy = false,
  },

  change_detection = {
    notify = false,
  },

  --  ui = {
  --    -- If you are using a Nerd Font: set icons to an empty table which will use the
  --    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
  --    icons = vim.g.have_nerd_font and {} or {
  --      cmd = '⌘',
  --      config = '🛠',
  --      event = '📅',
  --      ft = '📂',
  --      init = '⚙',
  --      keys = '🗝',
  --      plugin = '🔌',
  --      runtime = '💻',
  --      require = '🌙',
  --      source = '📄',
  --      start = '🚀',
  --      task = '📌',
  --      lazy = '💤 ',
  --    },
  --  },
}
