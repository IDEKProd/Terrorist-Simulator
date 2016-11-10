--			--
-- main.lua	--
--			--
dccx = display.contentCenterX
dccy = display.contentCenterY

varStorageContainer = require("varStorageContainer")
mainMenuScreen = require("mainMenuScreen")
charCreateScreen = require("charCreateScreen")

local function gameLoop()
	if not mainMenuOpen then
		print("mainMenu is done")
	end
	if varStorageContainer.charCreateButton then
		mainMenuScreen.unload()
		charCreateScreen.main()
	end
end

local function begin()
	mainMenuScreen.main()
	Runtime:addEventListener("enterFrame", gameLoop)
end

begin()
