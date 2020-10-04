pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
#include ./src/husk.lua

#include ./src/world.lua

world = make_world()

#include ./src/player.lua

player = make_player()

function _init()
  print(player.x)
  world.enemies[1] = make_husk()
  world.enemies[1].x = 64 - 32
  world.enemies[1].y = 64
end

function _draw()
  cls(0)
  world:draw(player)
  player:draw()
end

function _update()
  player:update()
  world:update(player)
end
__gfx__
01111110011111100111111000000777000007770000077700000777000000000000000000666660000000000066666006666600000000006066060006006060
00550500005505000055050000777770000777700007766000077660000000000000000006606606006666600660660666066060066666006600060000600606
00555500005555000055550007777700007777000776667007766670000000000000000000666660066066060066666006666600660660606600060060066666
00044000000440000504405077700000077770007666670076666700766660000000000000606060006666600060606006060600060006000066600006066666
00544500005445000054450000000000777000007666600076666700766660000000000000006000006060600606660600060000066666000006000000666666
05044050050440500004400000000000000000000766600007766670077666000666600000066600060666060006660000666000000600000066660000660660
00055000000550000550055000000000000000000777700000077660000776600006666006066606000666000066006060666060066660060066600600066666
00500500000550000000000000000000000000000000000000000777000007770000066600060600000606000000006000606000006060000060600000606000
01111110001111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000066666000000000
00550500000550500000000000000000000000000000000000000000000000000000000000666660000000000000000000000000000000000660660600666660
00555500000555500000000000000000000000000000000000000000000000000000000006606606006666600000000000666660000000006066666006606606
05044050005044050005000100000000000000000000000000000000000000000000000000666660066066060000000006606606006666600060606600666660
00544500000544500000055100000000000000000000000000000000000000000000000000606060006666600000000000666660066066060000600000606060
00044000000044000000055100000000000000000000000000000000000000000000000000066600006060600000000000606060006666600006660006066606
00055000000055000544450100000000000000000000000000000000000000000000000006066606060666060000000006066606066060660060006000066600
00500500000555005545455100000000000000000000000000000000000000000000000000060600006000600000000000600060006000600000000000060600
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
55555555555505550555055577777777777d777d777d777733333333300030003000303388888888808888000088880800000000000000000000000000000000
50005000500050005000500576667666766d766d766d766730303030330303030303030308000080880000800800008800000000033303000000000000888800
550555055505550555055505666d666d766d666d666d666700300030300030003000303380099008800990088009900800000000333333300000000008000080
005000505050005000500055dddddddd76dddddddddddd670030003033030303030303038090090880900908809009080000d0d0333303030000000080000008
055505555555055505550555777d777d777d777d777d77773000300030003000300030338090090880900908809009080d00ddd0033330330666666080999908
500050005000500050005005766d766d766d766d766d7667030303033303030303030303800990088009900880099008ddd0ddd03333333306666dd000899800
550555055505550555055505666d666d766d666d666d6667300030003000300030003033080000808800008008000088ddd0ddd03333333300666d0000898800
005000505050005000500055dddddddd76dddddddddddd670303030333030303030303030088880080888800008888080d00ddd03333333000666d0000889800
055505550555055500000000777d777d777d777d000000003000300030003000404040040088880000888800000000000d0ddddd40333340066666d000898800
500050005000500000000000766d766d766d766d000000000303030303030303040000400800008008000080000000000ddddddd04440400066666d000889800
550555055505550500000000666d666d666d666d000000003000300030003000060040608009900880099008000000000d00dddd00044000066666d000899800
005000500050005000000000dddddddddddddddd000000000303030303030303404000448090090880900908000000000d00ddd00044400066666ddd00898800
055505555555555500000000777d777d777d777d000000003000300030003000004040008090090880900908000000000d00ddd0040440006666d6dd00889800
500050005000500000000000766d766d766d766d000000000303030303000300400004048009900888099088000000000d00d0d004044400666d6ddd00899800
550555050000000000000000666d666d66606660000000003000300003030030040460000800008080900908000000000d00d0d0004444000666ddd000898800
005000500000000000000000dddddddd00000000000000000303030330003300044004040088880008000080000000000d0dd0dd4444444000dddd0008989980
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010333333330000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010333303030000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111333330330000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000333333330000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000303033330000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000330333330000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111333333330000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010333333330000000000000000
55555555555555555555555577777777777777777777777733333333333333333333333388888888888888888888888804000040000000000000000000000000
50000000000000000000000576666666666666666666666d03333333333333333333333080090090090990900900900804000040000000000000000000000000
50000000000000000000000576666666666666666666666d00303033300303300303030008009900009999000099008004444440000000000000000000000000
555555555555555555555555dddddddddddddddddddddddd00000330030300030300300000888888888888888888880004000040000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000040000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000040000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004444440000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000040000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000044535353535353534400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000444444444343434343444444440000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000044444444440000000000444444444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000004444444400000000000000000044444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000004444000000000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000004444000000000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000444400000000000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000444400000000000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000434343434343434343434343434343434300000000000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000434343434343434343434343434343434343436c006c00000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4d4d4d4d00000000000000006c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c43006c0000000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6d6d6d6d4d000000000000006c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c436c006c00000000000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6d6d6d6d4d000000000000006c4c006c4c006c4c006c6c6c6c6c6c6c6c6c6c6c6c6c6c006c00000000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5d5d5d5d00000000000000006c5c006c5c006c5c006c6c6c6c6c6c6c6c6c6c6c6c6c006c00006c0000000000004444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4646464646464646464646464343434343434343434343434343434343434344444444444444444444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5858585858585858585858584343434343434343434343434343434343434344444444444444444444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010000016500265004650056500665007650096500a650351403514035140351403514035140351403514035130351203512035120351203512035120351203511035110351103511035110351103511035110
00010000090500605002050010500105003050060500a0500d0501305013050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
