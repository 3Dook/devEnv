-- import telekasten plugin safely
local setup, telekasten = pcall(require, "Comment")
if not setup then
  return
end
local home = vim.fn.expand("C:/Users/Duke/zettelkasten/") -- Put the name of your notes directory here
-- enable telekasten
telekasten.setup({
  home = home,
  -- dir names for special notes (absolute path or subdir name)
  dailies = home .. "/" .. "daily",
  weeklies = home .. "/" .. "weekly",
  templates = home .. "/" .. "templates",
  template_new_note = home .. "/" .. "templates/new_note.md",
  template_new_daily = home .. "/" .. "templates/daily.md",
  template_new_weekly = home .. "/" .. "templates/weekly.md",

  -- when linking to a note in subdir/, create a [[subdir/title]] link
  -- instead of a [[title only]] link
  subdirs_in_links = true,
  template_handling = "smart",
  new_note_location = "smart",
  -- should all links be updated when a file is renamed
  rename_update_links = true,
  -- integrate with calendar-vim
  plug_into_calendar = true,
  calendar_opts = {
    -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
    weeknm = 4,
    -- use monday as first day of week: 1 .. true, 0 .. false
    -- calendar_monday = 1,
    -- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
    calendar_mark = "left-fit",
  },
})
