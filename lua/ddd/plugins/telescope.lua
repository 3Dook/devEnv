-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- configure telescope
telescope.setup({
  -- configure custom mappings
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
        -- ddd added to use arrow keys to move up and down preview file sections
        ["<C-up>"] = actions.preview_scrolling_up, -- scroll down the preview section
        ["<C-down>"] = actions.preview_scrolling_down, -- scroll down the preview section
      },
    },
  },
})

telescope.load_extension("fzf")
