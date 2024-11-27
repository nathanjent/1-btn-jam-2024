-- title:   Cast Your Cards
-- author:  GR8N8
-- desc:    Entry for the 1-button jam 2024
-- site:    website link
-- license: MIT License
-- version: 0.1
-- script:  lua
-- palette: VIGAROS 16

function BOOT()
	Game.state = {
		player_deck = {
			{
				id = 256,
				bg_color = 12,
				transparent_color = 0,
				flip = 0,
			},
			{
				id = 258,
				bg_color = 3,
				transparent_color = 0,
				flip = 1,
			},
		},
		card_choice = {
		}
	}
end

Game = {
	t = 0,
}

function HexBorder(x, y, w, h, bevel, c)
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

function Card(id, x, y, bg_color, transparent_color, flip)
	rect(x, y, 20, 24, bg_color)
	HexBorder(x + 1, y + 1, 17, 21, 3, 8)
	spr(id, x + 2, y + 4, transparent_color, 1, flip, 0, 2, 2)
end

function TextDialog(text, x, y, w, h, text_color, bg_color, smallfont)
	if bg_color ~= nil then
		rect(x, y, w, h, bg_color)
	end
	HexBorder(x + 1, y + 1, w - 3, h - 3, 2, text_color)
	if type(text) == "table" then
		for i, t in ipairs(text) do
			print(t, x + 4, y + 3 + (i - 1) * 8, text_color, false, 1, smallfont)
		end
	else
		print(text, x + 4, y + 3, text_color, false, 1, smallfont)
	end
end

function ChooseCardDialog(card1, card2, x, y)
	local w, h = 78, 55
	rect(x, y, w, h, 10)
	HexBorder(x + 1, y + 1, w - 3, h - 3, 2, 8)
	Card(card1.id, x + 10, y + 4, card1.bg_color, card1.transparent_color, card1.flip)
	Card(card2.id, x + 40, y + 4, card2.bg_color, card2.transparent_color, card2.flip)
	TextDialog({ "Choose your", "next move" }, x + 3, y + 30, w - 8, 20, 8, 0)
end

function UI(state)
	if state.card_choice ~= nil then
		local choice = state.card_choice
		ChooseCardDialog(choice.card1, choice.card2, 80, 30)
	end
end

function Game:update()
	local card1_i = math.random(#Game.state.player_deck)
	local card2_i = card1_i
	while card2_i == card1_i do
		card2_i = math.random(#Game.state.player_deck)
	end

	Game.state.card_choice.card1 = Game.state.player_deck[card1_i]
	Game.state.card_choice.card2 = Game.state.player_deck[card2_i]

	self.t = self.t + 1
end

function Game:draw()
	cls()

	UI(Game.state)
end

function TIC()
	Game:update()
	Game:draw()
end

-- <TILES>
-- 224:0000000000808008080008000000000008000800008080080000008008000800
-- 225:0000000080080800008000800000000000800080800808000800000000800080
-- 226:0000000000808080088000800000000008800080008080800000800008088080
-- 240:0800080000000080008080080800080000000000080008000080800800000000
-- 241:0080008008000000800808000080008000000000008000808008080000000000
-- 242:0808808000008000008080800880008000000000088000800080808000000000
-- </TILES>

-- <SPRITES>
-- 000:0000000000a000000a4a0000066600ee00000777000006e60000066600000566
-- 001:000000000000000000000000eee0000077770000e66700006777000065500000
-- 002:0000000000002202000222220002211100021111000238130002121100021111
-- 003:0000000022000000222000002222000011220000811200001112000011220000
-- 004:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
-- 005:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
-- 016:0000345500033254000663230006623200000323000003330000033300000000
-- 017:5533000042333000232660003236600023266000333000000330000000000000
-- 018:0003215500002111000033110000d111000de112000eee12000fee1d000feeee
-- 019:122300001230000022ee00002deee0002deee000deeee000eeefe000eeffe000
-- 020:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
-- 021:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
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
