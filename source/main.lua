--			--
-- main.lua	--
--			--
dccx = display.contentCenterX
dccy = display.contentCenterY

varStorageContainer = require("varStorageContainer")
mainMenuScreen = require("mainMenuScreen")
charCreateScreen = require("charCreateScreen")

function editVar(event)
	if event.target == beginGameButton then
		print("beginGameButton")
		varStorageContainer.charCreateButton = true
	end
	if event.target == optionsButton then
		print("optionsButton")
		varStorageContainer.optionsButton = true
	end
	if event.target == creditsButton then
		print("creditsButton")
		varStorageContainer.creditsButton = true
	end
	if event.target == TEMPSKIPBUTTON then
		print("TEMPSKIPBUTTON")
		varStorageContainer.TEMPSKIPBUTTON = true
	end
	print(event.target)
	print(TEMPSKIPBUTTON)
end

local function unload()
	if varStorageContainer.currScreen == "mainMenu" then
		mainMenuScreen.unload()
	end
	if varStorageContainer.currScreen == "charCreate" then
		charCreateScreen.unload()
	end
	-- if varStorageContainer.currScreen == ""
	varStorageContainer.currScreen = nil
end

local function gameLoop()
	if not mainMenuOpen then
		print("mainMenu is done")
	end
	if varStorageContainer.charCreateButton then
		unload()
		charCreateScreen.main()
	end
	if varStorageContainer.TEMPSKIPBUTTON then
		print("FUCK")
	end
end

local function begin()
	mainMenuScreen.main()
	Runtime:addEventListener("enterFrame", gameLoop)
end

begin()
