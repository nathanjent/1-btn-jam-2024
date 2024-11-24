-- title:   Cards of Candor
-- author:  GR8N8
-- desc:    Entry for the 1-button jam 2024
-- site:    website link
-- license: MIT License
-- version: 0.1
-- script:  lua
-- palette: VIGAROS 16

function BOOT()
	local cards = {
		256,
		258,
	}

	Game.scenes = {
		Scene:new({
		}),
	}
end

Game = {
	t = 0,
	scenes = {},
}

Card = {}
Scene = {}

function Card:new(o)
	self.__index = self
	o = o or {}
	return setmetatable({
			id = o.id or 256,
			x = o.x or 0,
			y = o.y or 0,
		},
		self
	)
end

function Card:update() end

function Card:draw() end

function Scene:new(o)
	self.__index = self
	o = o or {}
	return setmetatable({
		},
		self
	)
end

function Scene:update() end

function Scene:draw() end

function hexb(x, y, w, h, bevel, c)
	local x1, y1 = x + bevel, y
	local x2, y2 = x + w - bevel, y
	local x3, y3 = x + w, y + bevel
	local x4, y4 = x + w, y + h - bevel
	local x5, y5 = x + w - bevel, y + h
	local x6, y6 = x + bevel, y + h
	local x7, y7 = x, y + h - bevel
	local x8, y8 = x, y + bevel
	line(x1, y1, x2, y2, c)
	line(x2, y2, x3, y3, c)
	line(x3, y3, x4, y4, c)
	line(x4, y4, x5, y5, c)
	line(x5, y5, x6, y6, c)
	line(x6, y6, x7, y7, c)
	line(x7, y7, x8, y8, c)
	line(x8, y8, x1, y1, c)
end

function draw_card(id, x, y, transparent_color, bg_color, flip)
	rect(x, y, 20, 24, bg_color)
	hexb(x + 1, y + 1, 17, 21, 3, 8)
	spr(id, x + 2, y + 2, transparent_color, 1, flip, 0, 2, 2)
end

function dialog(text, x, y, w, h, text_color, bg_color)
	rect(x, y, w, h, bg_color)
	hexb(x + 1, y + 1, w - 3, h - 3, 2, text_color)
	print(text, x + 4, y + 3, text_color, false, 1, true)
end

function Game:update()
	Game.t = Game.t + 1
end

function Game:draw()
	cls()
	draw_card(256, 96, 24, 0, 14)
	dialog("Knight", 90, 34, 40, 12, 8, 0)
	draw_card(258, 42, 24, 0, 12, 1)
	dialog("Princess", 42, 34, 40, 12, 8, 0)
	dialog("what the what?", 50, 60, 80, 30, 8, 14)
end

function TIC()
	Game:update()
	Game:draw()
end

-- <SPRITES>
-- 000:0000000000a000000a4a0000066600ee00000777000006e60000066600000566
-- 001:000000000000000000000000eee0000077770000e66700006777000065500000
-- 002:0000000000002202000222220002211100021111000238130002121100021111
-- 003:0000000022000000222000002222000011220000811200001112000011220000
-- 016:0000345500033254000663230006623200000323000003330000033300000000
-- 017:5533000042333000232660003236600023266000333000000330000000000000
-- 018:0003215500002111000033110000d111000de112000eee12000fee1d000feeee
-- 019:122300001230000022ee00002deee0002deee000deeee000eeefe000eeffe000
-- </SPRITES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:0d1013b3cac97996945569678d4640833735642f2f492622f6e5d3c9c1b0c19e8997867d7c66645b4d4c393939252528
-- </PALETTE>
