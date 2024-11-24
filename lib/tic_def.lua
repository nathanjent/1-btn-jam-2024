--- @wiki https://github.com/nesbox/TIC-80/wiki/btn
--- @param id? number id (0..31) of the key we want to interrogate (see the key map for reference)
--- @return boolean pressed button is pressed (true/false) or GAMEPAD data
function btn(id) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/btnp
--- @param id? number id (0..31) of the button we wish to interrogate (see the key map for reference)
--- @param hold? number the time (in ticks) the button must be pressed before checking again
--- @param period? number the amount of time (in ticks) after hold before this function will return true again.
--- @return boolean pressed button is pressed now but not in previous frame (true/false) or GAMEPAD data
function btnp(id, hold, period) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/clip
--- @param x? number x coordinate of the top left of the clipping region
--- @param y? number y coordinate of the top left of the clipping region
--- @param width? number width of the clipping region in pixels
--- @param height? number height of the clipping region in pixels
function clip(x, y, width, height) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/cls
--- @param color? number index (0..15) of a color in the current palette (defaults to 0)
function cls(color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/circ
--- @param x number the x coordinate of the circle center
--- @param y number the y coordinate of the circle center
--- @param radius number the radius of the circle in pixels
--- @param color number the index of the desired color in the current palette
function circ(x, y, radius, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/circb
--- @param x number the x coordinate of the circle center
--- @param y number the y coordinate of the circle center
--- @param radius number the radius of the circle in pixels
--- @param color number the index of the desired color in the current palette
function circb(x, y, radius, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/elli
--- @param x number the x coordinate of the ellipse center
--- @param y number the y coordinate of the ellipse center
--- @param rh number the horizontal radius of the ellipse in pixels
--- @param rv number the vertical radius of the ellipse in pixels
--- @param color number the index of the desired color in the current palette
function elli(x, y, rh, rv, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/ellib
--- @param x number the x coordinate of the ellipse center
--- @param y number the y coordinate of the ellipse center
--- @param rh number the horizontal radius of the ellipse in pixels
--- @param rv number the vertical radius of the ellipse in pixels
--- @param color number the index of the desired color in the current palette
function ellib(x, y, rh, rv, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/exit
function exit() end

--- @wiki https://github.com/nesbox/TIC-80/wiki/fget
--- @param sprite_id number sprite index (0..511)
--- @param flag number flag index to check (0..7)
--- @return boolean #whether the flag was set (true/false)
function fget(sprite_id, flag) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/fset
--- @param sprite_id number sprite index (0..511)
--- @param flag number index of flag (0-7) to set
--- @param enabled boolean What state to set the flag (true/false)
function fset(sprite_id, flag, enabled) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/font
--- @param text string the string to be printed
--- @param x number x coordinate of print position
--- @param y number y coordinate of print position
--- @param transcolor? number the palette index to use for transparency
--- @param char_width? number distance between characters, in pixels
--- @param char_height? number vertical distance between characters, in pixels, when printing multi-line text.
--- @param fixed? boolean indicates whether the font is fixed width (defaults to false ie variable width)
--- @param scale? number font scaling (defaults to 1)
--- @return number text_width the width of the rendered text in pixels
function font(text, x, y, transcolor, char_width, char_height, fixed, scale) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/key
--- @param code number the key code we want to check (1..65)
--- @return boolean pressed key is currently pressed (true/false)
function key(code) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/keyp

--- @param code number the key code we want to check (1..65) (see codes here)
--- @param hold? number time in ticks before autorepeat
--- @param period? number time in ticks for autorepeat interval
--- @return boolean pressed key is pressed (true/false)
function keyp(code, hold, period) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/line
--- @param x0 number the x coordinate where the line starts
--- @param y0 number the y coordinate where the line starts
--- @param x1 number the x coordinate where the line ends
--- @param y1 number the y coordinate where the line ends
--- @param color number the index of the color in the current palette
function line(x0, y0, x1, y1, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/map
--- @param x? number The leftmost map cell to be drawn.
--- @param y? number The uppermost map cell to be drawn.
--- @param w? number The number of cells to draw horizontally.
--- @param h? number The number of cells to draw vertically.
--- @param sx? number The screen x coordinate where drawing of the map section will start.
--- @param sy? number The screen y coordinate where drawing of the map section will start.
--- @param colorkey? number|number[] index (or array of indexes 0.80.0) of the color that will be used as transparent color. Not setting this parameter will make the map opaque.
--- @param scale? number Map scaling.
--- @param remap? fun(tile: table, x: number, y:number): table An optional function called before every tile is drawn. Using this callback function you can show or hide tiles, create tile animations or flip/rotate tiles during the map rendering stage: callback [tile [x y] ] -> [tile [flip [rotate] ] ]
function map(x, y, w, h, sx, sy, colorkey, scale, remap) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/memcpy
--- @param to number the address you want to write to
--- @param from number the address you want to copy from
--- @param length number the length of the memory block you want to copy (in bytes)
function memcpy(to, from, length) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/memset
--- @param addr number the address of the first byte of RAM you want to write to
--- @param value number the value you want to write (0..255)
--- @param length number the length of the memory block you want to set
function memset(addr, value, length) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/mget
--- @param x number x coordinate on the map
--- @param y number y coordinate on the map
--- @return number tile index
function mget(x, y) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/mset
--- @param x number x coordinate on the map
--- @param y number y coordinate on the map
--- @param tile_id number The background tile (0-255) to place in map at specified coordinates.
function mset(x, y, tile_id) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/mouse
--- @return number x x coordinate of the mouse pointer
--- @return number y y coordinate of the mouse pointer
--- @return boolean left left button is down (true/false)
--- @return boolean middle middle button is down (true/false)
--- @return boolean right right button is down (true/false)
--- @return number scrollx x scroll delta since last frame (-31..32)
--- @return number scrolly y scroll delta since last frame (-31..32)
function mouse() end

--- @wiki https://github.com/nesbox/TIC-80/wiki/music
--- @param track? number the id of the track to play from (0..7)
--- @param frame? number the index of the frame to play from (0..15)
--- @param row? number the index of the row to play from (0..63)
--- @param loop? boolean loop music (true) or play it once (false)
--- @param sustain? boolean sustain notes after the end of each frame or stop them (true/false)
--- @param tempo? number play track with the provided tempo, added in version 0.90
--- @param speed? number play track with the provided speed, added in version 0.90
function music(track, frame, row, loop, sustain, tempo, speed) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/peek
--- @param addr number the address of the 80k RAM byte you want to read
--- @param bits? number the number of bits to read (1, 2, 4, or 8) from address (default: 8)
--- @return number val the value read from the specified address. Each address stores a byte, so the the return value will be an integer between 0 and 255.
function peek(addr, bits) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/peek1
--- @param bitaddr number the address of the 80k RAM byte you want to read
--- @return number val the value read from the specified address. A single bit (0..1)
function peek1(bitaddr) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/peek2
--- @param addr2 number the address of the 80k RAM byte you want to read
--- @return number val the value read from the specified address. Two bits (0..3)
function peek2(addr2) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/peek4
--- @param addr4 number any address of the 96K RAM byte you want to read, divided in groups of 4 bits (nibbles). Therefore, to address the high nibble of position 0x2000 you should pass 0x4000 as addr4, and to access the low nibble (rightmost 4 bits) you would pass 0x4001.
--- @return number val the 4-bit value (0..15) read from the specified address.
function peek4(addr4) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/pix
--- @param x number x coordinate of the pixel
--- @param y number y coordinate of the pixel
--- @param color? number the index of the palette color to draw
--- @return number color the index (0-15) of the palette color at the specified coordinates.
function pix(x, y, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/pmem
--- @param index number an index (0..255) into the persistent memory of a cartridge.
--- @param val? number the value you want to store. Omit this parameter if you want to read the memory.
--- @return number val when the function is call with only an index parameter, it returns the value saved in that memory slot.
function pmem(index, val) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/poke
--- @param addr number the address in RAM
--- @param val number the value to write
--- @param bits? number the number of bits to write (1, 2, 4, or 8; default: 8)
function poke(addr, val, bits) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/poke4
--- @param bitaddr number the bit address in RAM to which to write,
--- @param val number the bit value (0..1) to write to the specified address
function poke1(bitaddr, val) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/poke4
--- @param addr2 number the two bit address in RAM to which to write,
--- @param val number the 2-bit value (0..3) to write to the specified address
function poke2(addr2, val) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/poke4
--- @param addr4 number the nibble (4 bits) address in RAM to which to write,
--- @param val number the 4-bit value (0-15) to write to the specified address
function poke4(addr4, val) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/print
--- @param text string any string to be printed to the screen
--- @param x? number x coordinate where to print the text
--- @param y? number y coordinate where to print the text
--- @param color? number the color to use to draw the text to the screen
--- @param fixed? boolean a flag indicating whether fixed width printing is required
--- @param scale? number font scaling
--- @param smallfont? boolean use small font if true
--- @return number text_width the width of the text in pixels.
function print(text, x, y, color, fixed, scale, smallfont) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/rect
--- @param x number x coordinate of the top left corner of the rectangle
--- @param y number y coordinate of the top left corner of the rectangle
--- @param w number the width the rectangle in pixels
--- @param h number the height of the rectangle in pixels
--- @param color number the index of the color in the palette that will be used to fill the rectangle
function rect(x, y, w, h, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/rectb
--- @param x number x coordinate of the top left corner of the rectangle
--- @param y number y coordinate of the top left corner of the rectangle
--- @param w number the rectangle's width in pixels
--- @param h number the rectangle's height in pixels
--- @param color number the index of the color in the palette that will be used to color the rectangle's border.
function rectb(x, y, w, h, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/reset
function reset() end

--- @wiki https://github.com/nesbox/TIC-80/wiki/sfx
--- @param id number the SFX id (0..63), or -1 to stop playing
--- @param note? number|string the note number (0..95) or name (exnumber C#3)
--- @param duration? number the duration (number of frames) (-1 by default, which plays continuously)
--- @param channel? number the audio channel to use (0..3)
--- @param volume? number the volume (0..15) (defaults to 15)
--- @param speed? number the speed (-4..3) (defaults to 0)
function sfx(id, note, duration, channel, volume, speed) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/spr
--- @param id number index of the sprite (0..2047)
--- @param x number x coordinate where the sprite will be drawn, starting from top left corner.
--- @param y number y coordinate where the sprite will be drawn, starting from top left corner.
--- @param transparent_color? number index (or array of indexes) of the color in the sprite that will be used as transparent color. Use -1 if you want an opaque sprite.
--- @param scale? number scale factor applied to sprite.
--- @param flip? number flip the sprite vertically(1) or horizontally(2) or both(3).
--- @param rotate? number rotate the sprite by 0, 90, 180 or 270 degrees.
--- @param w? number width of composite sprite
--- @param h? number height of composite sprite
function spr(id, x, y, transparent_color, scale, flip, rotate, w, h) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/sync
--- @param mask number mask of sections you want to switch:
--- tiles   = 1<<0 -- 1
--- sprites = 1<<1 -- 2
--- map     = 1<<2 -- 4
--- sfx     = 1<<3 -- 8
--- music   = 1<<4 -- 16
--- palette = 1<<5 -- 32
--- flags   = 1<<6 -- 64
--- screen  = 1<<7 -- 128 (as of 0.90)
--- 0 - will switch all the sections 1 | 2 | 4 - will switch only TILES, SPRITES and MAP sections, for example
--- @param bank number memory bank (0..7)
--- @param toCart boolean if true save memory from runtime to bank/cartridge, otherwise load data from bank/cartridge to runtime.
function sync(mask, bank, toCart) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/time
--- @return number ticks the number of milliseconds elapsed since the game was started
function time() end

--- @wiki https://github.com/nesbox/TIC-80/wiki/tstamp
--- @return number timestamp the current Unix timestamp in seconds
function tstamp() end

--- @wiki https://github.com/nesbox/TIC-80/wiki/trace
--- @param message string the message to print in the console. Can be a 'string' or variable.
--- @param color? number the index of a color in the current palette (0..15)
function trace(message, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/tri
--- @param x1 number the x coordinate of the first triangle corner
--- @param y1 number the y coordinate of the first triangle corner
--- @param x2 number the x coordinate of the second triangle corner
--- @param y2 number the y coordinate of the second triangle corner
--- @param x3 number the x coordinate of the third triangle corner
--- @param y3 number the y coordinate of the third triangle corner
--- @param color number the index of the desired color in the current palette
function tri(x1, y1, x2, y2, x3, y3, color) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/trib
--- @param x1 number the x coordinate of the first triangle corner
--- @param y1 number the y coordinate of the first triangle corner
--- @param x2 number the x coordinate of the second triangle corner
--- @param y2 number the y coordinate of the second triangle corner
--- @param x3 number the x coordinate of the third triangle corner
--- @param y3 number the y coordinate of the third triangle corner
--- @param color number the index of the desired color in the current palette
function trib(x1, y1, x2, y2, x3, y3, color) end

--- @deprecated use ttri
--- @wiki https://github.com/nesbox/TIC-80/wiki/textri
--- @param x1 number the x coordinate of the first corner
--- @param y1 number the y coordinate of the first corner
--- @param x2 number the x coordinate of the second corner
--- @param y2 number the y coordinate of the second corner
--- @param x3 number the x coordinate of the third corner
--- @param y3 number the y coordinate of the third corner
--- @param u1 number the U coordinate of the first corner
--- @param v1 number the V coordinate of the first corner
--- @param u2 number the U coordinate of the second corner
--- @param v2 number the V coordinate of the second corner
--- @param u3 number the U coordinate of the third corner
--- @param v3 number the V coordinate of the third corner
--- @param use_map? boolean if false (default), the triangle's texture is read from SPRITES RAM. If true, the texture comes from the MAP RAM.
--- @param transparent? number index (or array of indexes 0.80) of the color(s) that will be used as transparent
function textri(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, use_map, transparent) end

--- @wiki https://github.com/nesbox/TIC-80/wiki/ttri
--- @param x1 number the x coordinate of the first corner
--- @param y1 number the y coordinate of the first corner
--- @param x2 number the x coordinate of the second corner
--- @param y2 number the y coordinate of the second corner
--- @param x3 number the x coordinate of the third corner
--- @param y3 number the y coordinate of the third corner
--- @param u1 number the U coordinate of the first corner
--- @param v1 number the V coordinate of the first corner
--- @param u2 number the U coordinate of the second corner
--- @param v2 number the V coordinate of the second corner
--- @param u3 number the U coordinate of the third corner
--- @param v3 number the V coordinate of the third corner
--- @param texsrc number if 0 (default), the triangle's texture is read from SPRITES RAM. If 1, the texture comes from the MAP RAM.
--- @param chromakey number | number[] index (or array of indexes 0.80) of the color(s) that will be used as transparent
--- @param z1 number depth parameter for texture correction
--- @param z2 number depth parameter for texture correction
--- @param z3 number depth parameter for texture correction
function ttri(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, texsrc, chromakey, z1, z2, z3) end
