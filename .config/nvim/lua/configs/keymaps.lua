local kmp = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- turn off highlight
kmp.set("n", "<leader>nh", ":nohl<CR>")

-- cut but no copy
kmp.set("n", "x", '"_x')

-- inc/dec number
kmp.set("n", "<leader>+", "<C-a>")
kmp.set("n", "<leader>-", "<C-x>")

-- split window
kmp.set("n", "<leader>sv", "<C-w>v")
kmp.set("n", "<leader>sh", "<C-w>s")
kmp.set("n", "<leader>se", "<C-w>v=")
kmp.set("n", "<leader>sx", ":close<CR>")

-- resize with arrows
kmp.set("n", "<C-Up>", ":resize +2<CR>", opts)
kmp.set("n", "<C-Down>", ":resize -2<CR>", opts)
kmp.set("n", "<C-Left>", ":vertical resize +2<CR>", opts)
kmp.set("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- move text up and down
kmp.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
kmp.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)

-- open/close tab
kmp.set("n", "<C-n>", ":tabnew<CR>")
kmp.set("n", "<C-w>", ":tabclose<CR>")

-- multi-lines indenting
kmp.set("v", "<", "<gv", opts)
kmp.set("v", ">", ">gv", opts)

--
-- keymaps for plugins
--

-- vim-maximizer
kmp.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>")

-- nvim-tree
kmp.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
kmp.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
kmp.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- telescope
kmp.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>")
kmp.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
kmp.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
kmp.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

-- telescope-file-browser
kmp.set("n", "<space>fb", ":Telescope file_browser<CR>", opts)

-- bufferline
kmp.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
kmp.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
