-- mainMenuScreen.lua

local MMSPass = {}

mainMenuOpen = true
MMSPass.mainMenuOpen = mainMenuOpen

local function main()
	varStorageContainer.currScreen = "mainMenu"
	background = display.newRect(dccx, dccy, dccx*2, dccy*2)
	mainTitle = display.newText("MAIN TITLE", dccx, dccy/6, native.systemFont, dccy/6)
	mainTitle:setFillColor(0, 0, 0)
	beginGameButton = display.newRoundedRect(dccx, dccy/2, dccx, dccy/8, 15)
	beginGameButton:setFillColor(0, 0, 0)
	beginGameText = display.newText("Begin", dccx, dccy/2, native.systemFont, dccy/15)
	optionsButton = display.newRoundedRect(dccx, dccy, dccx, dccy/8, 15)
	optionsButton:setFillColor(0, 0, 0)
	optionsText = display.newText("Options", dccx, dccy, native.systemFont, dccy/15)
	creditsButton = display.newRoundedRect(dccx, dccy*1.5, dccx, dccy/8, 15)
	creditsButton:setFillColor(0, 0, 0)
	creditsText = display.newText("Credits", dccx, dccy*1.5, native.systemFont, dccy/15)
	--EventListeners
	beginGameButton:addEventListener("tap", editVar)
	optionsButton:addEventListener("tap", editVar)
	creditsButton:addEventListener("tap", editVar)
end
MMSPass.main = main

local function unload()
	--Objects
	background:removeSelf()
	background = nil
	mainTitle:removeSelf()
	mainTitle = nil
	beginGameButton:removeSelf()
	beginGameButton = nil
	beginGameText:removeSelf()
	beginGameText = nil
	optionsButton:removeSelf()
	optionsButton = nil
	optionsText:removeSelf()
	optionsText = nil
	creditsButton:removeSelf()
	creditsButton = nil
end
MMSPass.unload = unload

return MMSPass
