require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("", "<C-p>", function ()
  require("telescope.builtin").find_files({
    hidden=true, layout_config={prompt_position="top"},
    file_ignore_patterns = { "^%.git/" },
  })
end)
map("", "<C-w>", function() require("nvchad.tabufline").close_buffer() end)
map("", "<C-PageUp>", function() require("nvchad.tabufline").next() end)
map("", "<C-PageDown>", function() require("nvchad.tabufline").prev() end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
