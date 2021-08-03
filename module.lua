library = {
  settings = {}
}
--// Data variables
	
settings = _G.settings
library.settings = settings

--// Global variables

currentVersion = "0.0.1";

--// Searching for blacklisted users
	
function blacklisted()
	local player = game:GetService("Players").LocalPlayer

	for _,threats in pairs(settings.blacklisted) do
		if settings.blacklisted and player.UserId == threats then
			player:Kick("You are blacklisted from this program.")
		end
	end
end; spawn(blacklisted)

--// Searching for blacklisted exploit programs
	
function exploitState()
	return (is_sirhurt_closure and "Sirhurt")
end
local _ = exploitState()
if _ then 
		game:GetService("Players").LocalPlayer:Kick("sirhurt is sus lol")
end

--// Creating the load function after logging into the gui.
	
function library:gui(callback)
	print("Initiated Callback")
	callback = callback or function() end

	local _, error = pcall(function()
		getgenv().loadClick = function()
			pcall(callback)
		end
	end)

	if error then
		print[[
			POTENTIAL INTERNAL-API BUG ⚠
			Your exploit may not support "getgenv"!
		]]
	end
end
--// Checking version to see if it's up to date.

spawn(function()
    if settings._version ~= currentVersion then
    	print[[
    			POTENTIAL INTERNAL-API BUG ⚠
    			The version you are using is dated! 
    	]]
    
    	print("Please change the '_version' setting to "..currentVersion.."!")
    end
end)

print[[

  _   ___   ___  
 / | / _ \ / _ \ 
 | || | | | | | |
 | || |_| | |_| |
 |_(_)___(_)___/ 

- Credits to Arman#9312 for the login template gui.
]]

--// Data packets
	
loginUI = loadstring(game:HttpGet(("https://raw.githubusercontent.com/ArmansBuildToDie/Loadlibrary/main/ui_data.lua"),true ))()
loginUI:begin_task(settings)
for _,v in pairs(settings) do
	print(settings)	
end
return library;
