vim.api.nvim_set_hl(0, 'Blurple', {fg = '#5865F2'})

vim.api.nvim_set_hl(0, 'Fuchsia1', {fg = '#ef5176'})
vim.api.nvim_set_hl(0, 'Fuchsia2', {fg = '#f57a82'})
vim.api.nvim_set_hl(0, 'Fuchsia3', {fg = '#f4cda4'})
vim.api.nvim_set_hl(0, 'Fuchsia4', {fg = '#5cb6a4'})
vim.api.nvim_set_hl(0, 'Fuchsia5', {fg = '#1f6a70'}) -- Not the real value, but better contrast

vim.api.nvim_set_hl(0, 'CustomTitle1', {fg = '#f05dc8'})
vim.api.nvim_set_hl(0, 'CustomTitle2', {fg = '#d759b7'})
vim.api.nvim_set_hl(0, 'CustomTitle3', {fg = '#bc55a5'})
vim.api.nvim_set_hl(0, 'CustomTitle4', {fg = '#9b5190'})
vim.api.nvim_set_hl(0, 'CustomTitle5', {fg = '#8c4f87'})
vim.api.nvim_set_hl(0, 'CustomTitle6', {fg = '#7b4e7d'})

function TableConcat(t1,t2)
   for i=1,#t2 do
      t1[#t1+1] = t2[i]
   end
   return t1
end

local acorn_tip = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⢦⢦⣢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣜⢗⣗⢵⢝⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⢮⡳⡵⣝⢽⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}
local acorn_hat = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡠⡢⡢⡢⡢⡢⡢⡢⡢⡢⡢⡢⡢⡢⡢⡢⡪⡣⡫⡪⡪⡣⡣⡢⡢⡆⣆⠦⡢⡢⣢⢢⡢⡢⣢⢢⡢⡢⡄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⢠⢪⢪⡪⣪⢪⡪⡪⣪⢪⡪⡪⣪⢪⡪⡪⣪⢪⢎⢎⢮⢪⡪⡎⡮⡪⡣⡣⡣⡣⡫⡪⣪⢪⢪⢪⡪⡪⡪⡪⡪⡪⣪⢢⡀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⡰⡱⡕⡕⡕⡕⡕⡕⡝⡜⡜⡜⣜⢜⢜⢜⢜⢜⢜⢜⡜⣜⢜⢜⢜⢜⢜⢜⢎⢇⢧⢓⢭⢪⢪⢣⢣⢣⢫⢪⢺⢸⢱⢱⢱⢱⡀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⡪⣪⢪⢺⢸⢪⢺⢸⢪⢪⡪⡪⡪⡪⡪⡣⡫⡪⡣⡣⡣⡣⡣⡳⡱⡕⡇⡗⡕⣕⢕⢕⡕⣕⢕⢵⢱⢕⢕⢵⢱⢕⢕⢵⢱⢕⠅⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⡪⡪⡪⡪⡎⡮⡪⡪⡪⡪⡪⡪⡣⡫⡪⣪⢪⡪⡪⡎⡮⡪⡎⡮⡪⡪⡪⡪⡪⡪⡪⡣⡣⡣⡣⡣⡣⡣⡳⡱⡱⡱⡕⣕⢕⢕⠅⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠘⢜⢕⢕⡕⣕⢕⢝⢜⢕⢝⢜⢎⢮⢪⢪⡪⡪⡪⡪⡪⡪⡪⡪⡪⡺⡸⡱⡹⡸⡪⡪⡪⡎⡞⡜⡎⡮⡪⡪⡎⡮⡪⡪⡪⡣⠁⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠈⠸⢸⡸⡸⡸⡪⡣⡣⡳⡱⡱⡱⡕⡕⣕⢕⢝⢜⢎⢞⢜⢎⢮⢪⡪⣪⢪⡪⣪⢪⡪⣪⢪⡪⡪⣪⢪⡪⡪⣪⢪⠪⠊⠀⠀⠀⠀⠀⠀⠀⠀]],
}
local acorn_body_top = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠨⢐⠐⠨⢐⠨⠐⠨⢐⠐⠨⢀⠂⠅⡂⡂⡂⠅⢂⢂⠂⡂⢂⠂⡂⢂⠂⡂⢂⠂⡂⠅⢂⠂⡂⠅⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⢁⠂⠌⠌⠄⢂⠡⢁⠂⠌⠌⡐⠨⢐⢀⢂⢐⠨⠐⡀⠢⢈⢐⠐⡈⠄⡂⠌⡐⢐⠠⢁⠂⡂⠂⠌⡐⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠅⡂⠌⠄⠅⠌⡐⡈⠄⠌⡐⠡⠠⢁⢂⢐⢀⠂⡂⡁⡂⠅⢂⠂⡂⢂⠡⠠⢁⠂⡂⠌⡐⢐⠠⠡⢁⢂⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡐⢐⠈⠄⠅⡂⢂⢐⠨⠐⠠⠡⠨⠐⡀⡂⡐⡐⢐⢀⠂⠌⡐⢐⠐⡐⢈⢐⠐⡐⠠⠡⠐⡐⢈⢐⠐⡠⠨⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⢐⠨⢈⢐⠐⡐⡀⡂⠅⠡⠡⠨⠐⡐⡀⡂⡐⡐⡀⡊⢐⠐⡐⢐⠠⠡⠐⡐⠠⠡⠨⢐⠠⠡⠐⡐⢐⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢐⠈⠄⢂⠂⡂⡐⠠⠁⠅⠌⠄⠅⢂⠐⡀⡂⡐⡀⢂⠂⠌⡐⢐⠈⠄⠅⢂⠡⠡⠨⢀⠂⠅⢂⠂⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}
local acorn_body_mid = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⡑⡑⠅⢕⠰⡘⡘⡘⡘⢌⢊⢊⠢⡃⡊⡢⡊⢌⠢⠣⡑⢜⢐⢅⠣⡑⡑⢌⠪⡘⡐⡑⡑⠅⠕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⡪⠨⡂⢕⢐⠌⡢⢑⢐⢑⢐⢅⠢⡑⡐⢌⠢⠡⡑⢌⢂⠢⠢⡑⡐⢌⠢⡑⡐⡑⠌⢌⢊⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⠨⡂⢕⠐⢅⢊⠢⡑⢌⢂⠢⡑⡐⢌⠢⠡⡑⢌⢂⠢⡑⡑⡐⢌⠢⡑⡐⢌⠌⡌⡢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢌⠢⠡⡑⡐⢅⠪⡐⠔⢅⠢⠪⡐⠅⢕⠨⡂⡢⢑⢐⠌⢌⠢⡑⡐⢌⠢⡑⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠪⠨⡂⡪⢐⠅⡪⠨⡂⢅⢕⠨⡨⡂⢕⢐⠌⡢⠡⡡⡑⢌⢂⠪⡐⢅⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢂⢪⢐⢅⢊⢢⠪⣐⢐⢅⠢⡪⡐⢔⢅⠪⡨⢢⠨⣂⠢⡑⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}
local acorn_body_bot = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢌⢆⢣⠱⡑⡌⢎⢢⠣⡱⡘⡌⢆⢣⠱⡡⢣⠢⡣⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀ ]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⡅⢇⢕⢜⠸⡐⡕⡱⡘⡌⢎⠪⡪⢸⠨⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠊⡆⢕⠱⡑⡜⢔⢱⢘⠜⡌⡪⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠸⡘⡌⡪⡸⡐⡅⢇⠕⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠜⡌⢆⢣⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

local discord = {
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣶⣾⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀]],
	[[⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀]],
	[[⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀]],
	[[⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠛⠉⠀⠀⠈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠋⠉⠀⠀⠈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀]],
	[[⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠁⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠁⠀⠀⠀⠀⠀⠀⠀⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀]],
	[[⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀]],
	[[⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀]],
	[[⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
	[[⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇]],
	[[⠘⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣥⣀⠉⠛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠋⢁⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠀]],
	[[⠀⠀⠀⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⠀⠀⠀⠀⠈⠉⠙⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠋⠁⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠻⠿⢿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⠿⠿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}
local padding = {
	[[]],
	[[]],
	[[]],
}

local pink_at = {
	[[██████╗ ██╗███╗   ██╗██╗  ██╗     ██████╗     ██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ██████╗ ]],
	[[██╔══██╗██║████╗  ██║██║ ██╔╝    ██╔═══██╗    ██╔══██╗██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗]],
	[[██████╔╝██║██╔██╗ ██║█████╔╝     ██║██╗██║    ██║  ██║██║███████╗██║     ██║   ██║██████╔╝██║  ██║]],
	[[██╔═══╝ ██║██║╚██╗██║██╔═██╗     ██║██║██║    ██║  ██║██║╚════██║██║     ██║   ██║██╔══██╗██║  ██║]],
	[[██║     ██║██║ ╚████║██║  ██╗    ╚█║████╔╝    ██████╔╝██║███████║╚██████╗╚██████╔╝██║  ██║██████╔╝]],
	[[╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝     ╚╝╚═══╝     ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ]],
}

local fuchsia_studios = {
	[[███████╗██╗   ██╗ ██████╗██╗  ██╗███████╗██╗ █████╗     ███████╗████████╗██╗   ██╗██████╗ ██╗ ██████╗ ███████╗]],
	[[██╔════╝██║   ██║██╔════╝██║  ██║██╔════╝██║██╔══██╗    ██╔════╝╚══██╔══╝██║   ██║██╔══██╗██║██╔═══██╗██╔════╝]],
	[[█████╗  ██║   ██║██║     ███████║███████╗██║███████║    ███████╗   ██║   ██║   ██║██║  ██║██║██║   ██║███████╗]],
	[[██╔══╝  ██║   ██║██║     ██╔══██║╚════██║██║██╔══██║    ╚════██║   ██║   ██║   ██║██║  ██║██║██║   ██║╚════██║]],
	[[██║     ╚██████╔╝╚██████╗██║  ██║███████║██║██║  ██║    ███████║   ██║   ╚██████╔╝██████╔╝██║╚██████╔╝███████║]],
	[[╚═╝      ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══════╝]],
}

local function color_me(input, color, gradient)
	local lines = {}
	for i, line in ipairs(input) do
		table.insert(lines, {
			type = 'text',
			val = line,
			opts = {
				hl = color .. (gradient and i or ""),
				shrink_margin = false,
				position = "center",
			}
		})
	end

	return lines
end

local acorn = TableConcat(color_me(acorn_tip, 'Fuchsia1', false), color_me(acorn_hat, 'Fuchsia2', false))
acorn = TableConcat(acorn, color_me(acorn_body_top, 'Fuchsia3', false))
acorn = TableConcat(acorn, color_me(acorn_body_mid, 'Fuchsia4', false))
acorn = TableConcat(acorn, color_me(acorn_body_bot, 'Fuchsia5', false))
acorn = TableConcat(acorn, { type = "padding", val = 6})
acorn = TableConcat(acorn, color_me(fuchsia_studios, 'CustomTitle', true))

local disc = TableConcat(color_me(discord, 'Blurple', false), { type = "padding", val = 6})
disc = TableConcat(disc, color_me(pink_at, 'CustomTitle', true))

local headers = {acorn, disc}

local function random()
	math.randomseed(os.time())
	return headers[math.random(#headers)]
end

local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
local config = dashboard.config
config.layout[2] = {
	type = 'group',
	val = random(),
	opts = { position = 'center' },
}

alpha.setup(dashboard.config)