local setup, harpoon = pcall(require, "harpoon")
if not setup then
	return
end

harpoon.setup({})
