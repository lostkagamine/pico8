-- don't touch it
x = 0
-- end don't touch it

-- pride flag drawer
-- (public domain) 2018 ry00001/hazel
-- made probably maybe for gssp but idk

text = "hello everyone!"
-- change this to change
-- the text that scrolls
-- by at the bottom of the
-- screen.
data = {
	{s=1,p=-2},
	{s=2,p=-1},
	{s=3,p=0},
	{s=2,p=1},
	{s=1,p=2}
}
-- okay so this one is
-- a little confusing,
-- but basically
-- s is the sprite index
-- and p is the position
-- negative = higher
-- positive = lower
-- 0 = middle
-- you can draw anything
-- not just flags or colours

function _draw()
	cls()
	print(text, x, 128-10)

	for i=1,#data do
		local d = data[i]
		for j=0,128,8 do
			spr(d.s, j, (d.p*8)+20)
		end
	end
end

function _update()
	x = x+1
	if x > 128 then
		x = -#text*5
	end
end