vim.cmd [[
    noremap <Space> <Nop>
    let mapleader = " "
]]

_G.map = function(mode, key, action, opts)
    local options = {
        remap = false,
        silent = true
    }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, key, action, options)
end

local function set()
    map("n", "<S-h>", "<C-w>h", { noremap = false })
    map("n", "<S-j>", "<C-w>j", { noremap = false })
    map("n", "<S-k>", "<C-w>k", { noremap = false })
    map("n", "<S-l>", "<C-w>l", { noremap = false })

    map("n", "<Leader>sv", "<C-w>v<cmd>enew<CR>", { desc = "Open a new vertical split" })
    map("n", "<Leader>sh", "<C-w>h<cmd>enew<CR>", { desc = "Open a new horizontal split" })

    map("n", "<Leader>wn", "<cmd>w <bar> bn<CR>")
    map("n", "<Leader>wp", "<cmd>w <bar> bp<CR>")

    map("n", "<Leader>bn", "<cmd>bn<CR>", { desc = "Go to next buffer" })
    map("n", "<Leader>bp", "<cmd>bp<CR>", { desc = "Go to previous buffer" })
    map("n", "<Leader>bq", "<cmd>bd|quit!<CR>", { desc = "Quit current buffer" })
    map("n", "<Leader>bQ", "<cmd>bw<CR>", { desc = "Completly wipe current buffer" })

    map("n", "<Leader>u", "<cmd>TSToggle highlight<CR>")
    map("n", "<F3>", "<cmd>TagbarToggle<CR>")

    map("n", "<F2>", "<cmd>NvimTreeToggle<CR>")
    map("n", "<Leader>`", "<cmd>ToggleTerm<CR>")

    map("n", "<Home>", extended_home)
    map("i", "<Home>", "<C-o><Home>", { remap = true })

    map("n", "<Leader>s", scratchpad, { desc = "Launch a scratchpad" })

    map("n", "tw", "<cmd>Twilight<CR>")

    map("n", "<Leader>tt", "<cmd>Trouble<CR>")
    map("n", "<Leader>td", "<cmd>Trouble document_diagnostics<CR>")
    map("n", "<Leader>tw", "<cmd>Trouble workspace_diagnostics<CR>")

    map("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files in the current directory" })
    map("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find files by content" })
    map("n", "<Leader>fr", "<cmd>Telescope frecency<CR>", { desc = "List frecently viewed files" })
    map("n", "<Leader>fp", "<cmd>Telescope projects<CR>", { desc = "List all projects" })

    map("n", "<C-s>", "<cmd>SessionSave<CR>", { desc = "Save the current session" })

    map("n", "<Tab>", "<cmd>foldopen<CR>")
    map("n", "<S-Tab>", "<cmd>foldclose<CR>")

    map("n", "<Leader>q", "<cmd>quit!<CR>", { desc = "Quit the current window without saving" })
    map("n", "<Leader>Q", "<cmd>quitall!<CR>", { desc = "Quit all windows without saving" })
end

return set()
