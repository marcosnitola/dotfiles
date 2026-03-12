local colorscheme = 'gruvbox'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

vim.g.gruvbox_transparent_bg = 1
vim.g.gruvbox_italic = 1
vim.g.gruvbox_bold = 1
