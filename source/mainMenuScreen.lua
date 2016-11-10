-- mainMenuScreen.lua

local MMSPass = {}

mainMenuOpen = true
MMSPass.mainMenuOpen = mainMenuOpen

local function main_()
	local function editVar(event)
		if event.target == beginGameButton then
			print("beginGameButton")
			varStorageContainer.charCreateButton = true
		end
		if event.target == optionsButton then
			print("optionsButton")
		end
		if event.target == creditsButton then
			print("creditsButton")
		end
	end
	background = display.newRect(dccx, dccy, dccx*2, dccy*2)
	mainTitle = display.newText("MAIN TITLE", dccx, dccy/6, native.systemFont, dccy/6)
	mainTitle:setFillColor(0, 0, 0)
	beginGameButton = display.newRoundedRect(dccx, dccy/2, dccx, dccy/8, 15)
	beginGameButton:setFillColor(0, 0, 0)
	optionsButton = display.newRoundedRect(dccx, dccy, dccx, dccy/8, 15)
	optionsButton:setFillColor(0, 0, 0)
	creditsButton = display.newRoundedRect(dccx, dccy*1.5, dccx, dccy/8, 15)
	creditsButton:setFillColor(0, 0, 0)
	--EventListeners
	beginGameButton:addEventListener("tap", editVar)
	optionsButton:addEventListener("tap", editVar)
	creditsButton:addEventListener("tap", editVar)
end
MMSPass.main = main_

local function unload_()
	background:removeSelf()
	background = nil
end
MMSPass.unload = unload_

return MMSPass
