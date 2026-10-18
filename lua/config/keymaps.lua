local keymap = vim.keymap

-- general
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- ==========================================
-- JetBrains-style keybindings (Cmd replaced by <leader> = Ctrl+F)
-- Keeps all standard Vim motions untouched
-- Plugins: nvim-tree, telescope.nvim
-- ==========================================

local map = vim.keymap.set

-- explorer: <leader>1 toggles and focuses nvim-tree
map("n", "<leader>1", function()
  local api = require("nvim-tree.api")

  if api.tree.is_visible() then
    api.tree.close()
  else
    api.tree.open()
    api.tree.focus()
  end
end, { desc = "Explorer" })

-- file navigation (Telescope)
map("n", "<leader>p", "<cmd>Telescope find_files<CR>", { desc = "Go to File" })
map("n", "<leader>e", "<cmd>Telescope oldfiles<CR>", { desc = "Recent Files" })
map("n", "<leader>F", "<cmd>Telescope live_grep<CR>", { desc = "Find in Files" })

-- pane navigation: <leader> + Arrow Keys
map("n", "<leader><Left>", "<C-w>h", { desc = "Focus Left Pane" })
map("n", "<leader><Right>", "<C-w>l", { desc = "Focus Right Pane" })
map("n", "<leader><Up>", "<C-w>k", { desc = "Focus Upper Pane" })
map("n", "<leader><Down>", "<C-w>j", { desc = "Focus Lower Pane" })

-- buffers
map("n", "<leader>w", function()
  if vim.bo.modified then
    vim.notify("Buffer has unsaved changes; save or discard first.", vim.log.levels.WARN)
  else
    vim.cmd("bdelete")
  end
end, { desc = "Close Buffer" })

-- NOTE: overrides Vim's built-in H / L (jump to top / bottom of screen)
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next Buffer" })

-- quick window splits
map("n", "<leader>\\", "<cmd>vsplit<CR>", { desc = "Vertical Split" })
map("n", "<leader>|", "<cmd>split<CR>", { desc = "Horizontal Split" })
