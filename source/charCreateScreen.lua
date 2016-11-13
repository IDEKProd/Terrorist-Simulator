-- charCreateScreen.lua

local CCSPass = {}

varStorageContainer.facialHair = nil
varStorageContainer.upperClothing = nil
varStorageContainer.lowerClothing = nil
varStorageContainer.headClothing = nil
varStorageContainer.skinColour = nil
varStorageContainer.race = nil

local function main()
	varStorageContainer.charCreateButton = false
	local background = display.newRect(dccx, dccy, dccx*2, dccy*2)
	local TEMPSKIPBUTTON = display.newRoundedRect(dccx, dccy, dccx, dccy/8, 15)
	TEMPSKIPBUTTON:setFillColor(0, 0, 0)
	local TEMPSKIPTEXT = display.newText("TEMP SKIP", dccx, dccy, native.systemFont, dccy/15)
	TEMPSKIPBUTTON:addEventListener("tap", editVar)
end
CCSPass.main = main

local function unload()
	backgorund:removeSelf()
	background = nil
	TEMPSKIPBUTTON:removeSelf()
	TEMPSKIPBUTTON = nil
	TEMPSKIPTEXT:removeSelf()
	TEMPSKIPTEXT = nil
end
CCSPass.unload = unload

return CCSPass
