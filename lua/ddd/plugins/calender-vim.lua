-- import calender plugin safely
local setup, calender = pcall(require, "calender-vim")
if not setup then
  return
end

-- enable calender
calender.setup()
