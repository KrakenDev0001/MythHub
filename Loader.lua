-- Detecting Game --
local detectedGame = "Future thing ;)"

if tostring(game.PlaceId) == '9498006165' then
    suggestedScript = "https://scripts.luawl.com/MythHub/TappingSimulator.lua"
end
if tostring(game.PlaceId) == '537413528' then
    suggestedScript="https://scripts.luawl.com/MythHub/BaBfT.lua"
end
if tostring(game.PlaceId) == '7991339063' then
    suggestedScript="https://scripts.luawl.com/MythHub/RainbowFriends.lua"
end
if tostring(game.PlaceId) == '8540346411' then
    suggestedScript="https://scripts.luawl.com/MythHub/RebirthChampionsX.lua"
end
if tostring(game.PlaceId) == '9598746251' then
    suggestedScript="https://scripts.luawl.com/MythHub/HomeRunSimulator.lua"
end

-- GUI Loading --
local Luminosity = loadstring(game:HttpGet("https://raw.githubusercontent.com/iHavoc101/Genesis-Studios/main/UserInterface/Luminosity.lua", true))()

local Loader = Luminosity.new("Myth Hub", "")

local Suggested = Loader.Tab("Suggested", "Auto detected for your game", "")
local YourGame = Suggested.Folder("For your game", "")
	if (suggestedScript) then 
		YourGame.Button("Launch Suggested Script", "Load", function()
			loadstring(game:HttpGet(suggestedScript))()
		end)
	end
local MainSettings = Loader.Tab("GUI")
local GUISettings = MainSettings.Folder("GUI Settings", "Control the GUI")
    KillGUI = GUISettings.Button("Self Drestruct GUI", "Delete evidence", function()
            game:GetService("CoreGui").Luminosity:Destroy()
        end)
		
local BuildABoatTab = Loader.Tab("Build a Boat")
	local BaBScript = BuildABoatTab.Folder("Script", "Options for the BaBfT script")
		BaBExecute = BaBScript.Button("Execute", "Do it B)", function()
			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/BaBfT.lua'))()
			end)
local TapSimTab = Loader.Tab("Tapping Simulator")
	local TapScript = TapSimTab.Folder("Script", "Options for the Tapping Sim script")
		BaBExecute = TapScript.Button("Execute", "Really?", function()
			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/TappingSimulator.lua'))()
			end)
local RFTab = Loader.Tab("Rainbow Friends")
	local RFScript = RFTab.Folder("Script", "Options for the Rainbow Friends script")
		RFExecute = RFScript.Button("Execute", "Mommy?", function()
			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/RainbowFriends.lua'))()
		end)
local RCXTab = Loader.Tab("RebirthChampionsX")
	local RCXScript = RCXTab.Folder("Script", "Options for the RebirthChampionsX script")
		RCXxecute = RCXScript.Button("Execute", "Bruh.", function()
			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/RebirthChampionsX.lua'))()
		end)
local HRSTab = Loader.Tab("Home Run Simulator")
	local HRSScript = HRSTab.Folder("Script", "Options for the Home Run Simulator script")
		HRSexecute = HRSScript.Button("Execute", "U=Hecker", function()
			loadstring(game:HttpGet('https://scripts.luawl.com/MythHub/HomeRunSimulator.lua'))()
		end)
