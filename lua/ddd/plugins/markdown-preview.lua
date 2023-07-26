-- import markdown plugin safely
local setup, markdown = pcall(require, "markdown-preview")
if not setup then
  return
end

-- enable markdown
markdown.setup()
