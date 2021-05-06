assert(rb,"Run fbneo-training-mode.lua")

--p1maxhealth = 0x67
p2maxhealth = 0x67

p1maxmeter = 0x04
p2maxmeter = 0x04

print "Known Issues: with kof98"
print "GUI not workingk"
print ""

translationtable = {
	{
		"coin",
		"start",
		"select",
		"up",
		"down",
		"left",
		"right",
		"button1",
		"button2",
		"button3",
		"button4",
	},
	["Coin"] = 1,
	["Start"] = 2,
	["Select"] = 3,
	["Up"] = 4,
	["Down"] = 5,
	["Left"] = 6,
	["Right"] = 7,
	["Button A"] = 8,
	["Button B"] = 9,
	["Button C"] = 10,
	["Button D"] = 11,
}

function readPlayerOneHealth()
	return rb(0x108239)
end

function writePlayerOneHealth(health)
	wb(0x108239, health)
end

function readPlayerTwoHealth()
	return rb(0x108439)
end

function writePlayerTwoHealth(health)
	wb(0x108439, health)
end

function readPlayerOneMeter()
	return rb(0x1082E3)
end

function writePlayerOneMeter(meter)
	wb(0x1082E3, meter)
end

function readPlayerTwoMeter()
	return rb(0x1084E3)
end

function writePlayerTwoMeter(meter)
	wb(0x1084E3, meter)
end

function infiniteTime()
	memory.writebyte(0x100000, 0x04)
end

function Run() -- runs every frame
	infiniteTime()
end