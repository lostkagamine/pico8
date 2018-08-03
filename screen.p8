pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
value = 0
addr = 0x5f2c

function _draw()
	poke(addr, value)
end

function _update()
	value = value + 1
	if value > 7 then value = 0 end
end
