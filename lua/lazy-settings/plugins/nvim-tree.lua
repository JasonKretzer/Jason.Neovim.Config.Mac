return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")
    local nvimtree_api = require("nvim-tree.api")

    -- local function focus_current_file()
    --   local current_file = vim.fn.expand("%:p")

    --   if current_file == "" then
    --     return
    --   end

    --   nvimtree_api.tree.find_file(current_file, { focus = false, reveal = true })
    -- end
    vim.api.nvim_create_autocmd("BufEnter", {
      nested = true,
      callback = function()
          if (vim.fn.bufname() == "NvimTree_1") then return end

          nvimtree_api.tree.find_file({ buf = vim.fn.bufnr() })
      end,
  })



    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })


    -- set keymaps
    local keymap = vim
        .keymap                                                                                     -- for conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })     -- toggle file explorer
    -- keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })   -- refresh file explorer
    keymap.set("n", "<leader>ew", "<C-w>w<CR>", { desc = "Switch to other window" })                -- I use this to switch between the file explorer and the editor
    -- keymap.set("n", "<leader>ef", focus_current_file, { desc = "Focus current file" })
  end
}
