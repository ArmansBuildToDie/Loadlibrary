repeat wait() until game:IsLoaded()

local ui = {
	settings = {}
}

--// Setup variables

settings = ui.settings

wait()

keyExpires = settings.keyDetails.KeyExpires
customKey = settings.CustomKey[1]	
customPass = settings.CustomKey[2]

twoStep = settings.twoStepAuth[1]

credits = settings.ownership[2]
title = settings.ownership[1]

--// Setting up functions

local globalKey

function generateKey(keybin)
	local _,error = pcall(function()
		local http = game:GetService("HttpService")
		
		if	readfile("data."..title) then

			local respitory = readfile("data."..title)
			local keyData = http:JSONDecode(respitory) 

			if keyData and keyData.expires == true then
				if os.time > keyData.expireData then
					keybin.Text = "You previous key expired; generated a new one. (copied to clipboard)"

					local expireTime = os.time + 259200

					local newKey = http:GenerateGUID(true)
					local data = {
						key = newKey;		
						expires = keyExpires;
						expireDate = expireTime
					};

					writefile("data."..title, data)

					setclipboard(newKey)
					
					wait(3.5)
					keybin.Text = newKey
				end
			end

			if keyData and keyData.expires == false then
				globalKey = keyData.key
			end
		else
			local expireTime = os.time + 259200
			local newKey = http:GenerateGUID(true)
			local data = {
				key = newKey;		
				expires = keyExpires;
				expireDate = expireTime
			};

			writefile("data."..title, data)

			setclipboard(newKey)	
			keybin.Text = newKey
		end
	end)

	if error then
		local player = game:GetService("Players").LocalPlayer

		player:Kick([[
				Your exploit does not support "writefile" nor "readfile".
				Please contact the script owner to make a custom key, instead.
		]])
	end
end

function tween(obj, sec, sty, dir, custom)
	local tween = game:GetService("TweenService")
	tween:Create(obj, TweenInfo.new(sec, Enum.EasingStyle[sty], Enum.EasingDirection[dir]),custom):Play()
end

function ui:begin_task(data)
	ui.settings = data
	
	

	local logGUi = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local loadingFrame = Instance.new("Frame")
	local img2 = Instance.new("Frame")
	local img1 = Instance.new("Frame")
	local img3 = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local mainGui = Instance.new("Frame")
	local keybin = Instance.new("TextBox")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local information = Instance.new("TextLabel")
	local getKey = Instance.new("TextButton")
	local mathFrame = Instance.new("Frame")
	local answerbin = Instance.new("TextBox")
	local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
	local information_2 = Instance.new("TextLabel")
	local information_3 = Instance.new("TextLabel")
	local information_4 = Instance.new("TextLabel")
	local bar = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")

	--Properties:

	logGUi.Name = "logGUi"
	logGUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	logGUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	logGUi.ResetOnSpawn = false

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = logGUi
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, 0, 0.451132298, 0)
	MainFrame.Size = UDim2.new(0, 436, 0, 222)

	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 0, 0.0180180185, 0)
	Title.Size = UDim2.new(0, 436, 0, 30)
	Title.Font = Enum.Font.GothamBlack
	Title.Text = "PLACEHOLDER by [name]"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 23.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint.Parent = Title
	UITextSizeConstraint.MaxTextSize = 23

	loadingFrame.Name = "loadingFrame"
	loadingFrame.Parent = MainFrame
	loadingFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	loadingFrame.BorderSizePixel = 0
	loadingFrame.Position = UDim2.new(0, 0, 0.153153151, 0)
	loadingFrame.Size = UDim2.new(0, 436, 0, 188)

	img2.Name = "img2"
	img2.Parent = loadingFrame
	img2.AnchorPoint = Vector2.new(0.5, 0.5)
	img2.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	img2.BorderSizePixel = 0
	img2.Position = UDim2.new(0.498853207, 0, 0.473404258, 0)
	img2.Size = UDim2.new(0, 16, 0, 15)

	img1.Name = "img1"
	img1.Parent = loadingFrame
	img1.AnchorPoint = Vector2.new(0.5, 0.5)
	img1.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	img1.BorderSizePixel = 0
	img1.Position = UDim2.new(0.546000063, 0, 0.473404258, 0)
	img1.Size = UDim2.new(0, 16, 0, 15)

	img3.Name = "img3"
	img3.Parent = loadingFrame
	img3.AnchorPoint = Vector2.new(0.5, 0.5)
	img3.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	img3.BorderSizePixel = 0
	img3.Position = UDim2.new(0.455000013, 0, 0.473404258, 0)
	img3.Size = UDim2.new(0, 16, 0, 15)

	TextLabel.Parent = loadingFrame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.277522922, 0, 0.930851042, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 13)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "login template by Arman#9312"
	TextLabel.TextColor3 = Color3.fromRGB(80, 80, 80)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	mainGui.Name = "mainGui"
	mainGui.Parent = MainFrame
	mainGui.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	mainGui.BorderSizePixel = 0
	mainGui.Position = UDim2.new(0, 0, 0.153153151, 0)
	mainGui.Size = UDim2.new(0, 436, 0, 188)
	mainGui.Visible = false

	keybin.Name = "keybin"
	keybin.Parent = mainGui
	keybin.AnchorPoint = Vector2.new(0.5, 0.5)
	keybin.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	keybin.BorderSizePixel = 0
	keybin.Position = UDim2.new(0.498566538, 0, 0.242021278, 0)
	keybin.Size = UDim2.new(0, 425, 0, 32)
	keybin.Font = Enum.Font.Code
	keybin.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	keybin.PlaceholderText = "Insert key here."
	keybin.Text = ""
	keybin.TextColor3 = Color3.fromRGB(255, 255, 255)
	keybin.TextScaled = true
	keybin.TextSize = 14.000
	keybin.TextWrapped = true

	UITextSizeConstraint_2.Parent = keybin
	UITextSizeConstraint_2.MaxTextSize = 15

	information.Name = "information"
	information.Parent = mainGui
	information.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	information.BackgroundTransparency = 1.000
	information.Position = UDim2.new(0.0229357798, 0, 0.808510661, 0)
	information.Size = UDim2.new(0, 415, 0, 30)
	information.Font = Enum.Font.FredokaOne
	information.Text = "* To continue, you need a key."
	information.TextColor3 = Color3.fromRGB(255, 255, 255)
	information.TextSize = 20.000
	information.TextWrapped = true

	getKey.Name = "getKey"
	getKey.Parent = mainGui
	getKey.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	getKey.BorderSizePixel = 0
	getKey.Position = UDim2.new(0.736238539, 0, 0.377659589, 0)
	getKey.Size = UDim2.new(0, 104, 0, 29)
	getKey.Font = Enum.Font.GothamSemibold
	getKey.Text = "GET KEY 🔑"
	getKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	getKey.TextSize = 16.000
	getKey.TextWrapped = true

	mathFrame.Name = "mathFrame"
	mathFrame.Parent = MainFrame
	mathFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	mathFrame.BorderSizePixel = 0
	mathFrame.Position = UDim2.new(0, 0, 0.153153151, 0)
	mathFrame.Size = UDim2.new(0, 436, 0, 188)
	mathFrame.Visible = false

	answerbin.Name = "answerbin"
	answerbin.Parent = mathFrame
	answerbin.AnchorPoint = Vector2.new(0.5, 0.5)
	answerbin.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
	answerbin.BorderSizePixel = 0
	answerbin.Position = UDim2.new(0.498566538, 0, 0.853723407, 0)
	answerbin.Size = UDim2.new(0, 425, 0, 32)
	answerbin.Font = Enum.Font.Code
	answerbin.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	answerbin.PlaceholderText = "Insert answer here."
	answerbin.Text = ""
	answerbin.TextColor3 = Color3.fromRGB(255, 255, 255)
	answerbin.TextScaled = true
	answerbin.TextSize = 14.000
	answerbin.TextWrapped = true

	UITextSizeConstraint_3.Parent = answerbin
	UITextSizeConstraint_3.MaxTextSize = 15

	information_2.Name = "information"
	information_2.Parent = mathFrame
	information_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	information_2.BackgroundTransparency = 1.000
	information_2.Position = UDim2.new(0.135321096, 0, 0.0851063877, 0)
	information_2.Size = UDim2.new(0, 318, 0, 23)
	information_2.Font = Enum.Font.FredokaOne
	information_2.Text = "LAST THING ✋"
	information_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	information_2.TextScaled = true
	information_2.TextSize = 20.000
	information_2.TextWrapped = true

	information_3.Name = "information"
	information_3.Parent = mathFrame
	information_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	information_3.BackgroundTransparency = 1.000
	information_3.Position = UDim2.new(0.135321096, 0, 0.244680852, 0)
	information_3.Size = UDim2.new(0, 318, 0, 37)
	information_3.Font = Enum.Font.FredokaOne
	information_3.Text = "You are required to solve the following  before using this script."
	information_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	information_3.TextScaled = true
	information_3.TextSize = 20.000
	information_3.TextWrapped = true

	information_4.Name = "information"
	information_4.Parent = mathFrame
	information_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	information_4.BackgroundTransparency = 1.000
	information_4.Position = UDim2.new(0.133027524, 0, 0.553191543, 0)
	information_4.Size = UDim2.new(0, 318, 0, 23)
	information_4.Font = Enum.Font.FredokaOne
	information_4.Text = "14x + 5 = 32"
	information_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	information_4.TextScaled = true
	information_4.TextSize = 20.000
	information_4.TextWrapped = true

	bar.Name = "bar"
	bar.Parent = mathFrame
	bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	bar.Position = UDim2.new(0.167431116, 0, 0.462765902, 0)
	bar.Size = UDim2.new(0, 290, 0, 3)

	UICorner.Parent = bar

	-- Scripts:

	local function BIFP_fake_script() -- MainFrame.DataManager 
		local script = Instance.new('LocalScript', MainFrame)

		local function dragify()
			script.Parent.Parent.Active = true
			script.Parent.Parent.Selectable = true
			script.Parent.Parent.Draggable = true
		end
		dragify()

	end
	coroutine.wrap(BIFP_fake_script)()
	
	
	Title.text = title.." by "..credits
	
	local baseSize = UDim2.new(0, 16,0, 15)
	local baseColor = Color3.fromRGB(53, 53, 53)
	
	for i = 1,5 do
		tween(img3, .4, "Quart", "InOut", {Size = UDim2.new(0, 16,0, 28), BackgroundColor3 = Color3.new(0.556863, 0.996078, 1)})
		wait(.4)
		tween(img3, .4, "Quart", "InOut", {Size = UDim2.new(0, 16,0, 15), BackgroundColor3 = Color3.fromRGB(53, 53, 53)})
		
		wait(.4)
		tween(img2, .4, "Quart", "InOut", {Size = UDim2.new(0, 16,0, 28), BackgroundColor3 = Color3.new(0.556863, 0.996078, 1)})
		wait(.4)
		tween(img2, .4, "Quart", "InOut", {Size = UDim2.new(0, 16,0, 15), BackgroundColor3 = Color3.fromRGB(53, 53, 53)})
		
		wait(.4)
		tween(img1, .4, "Quart", "InOut", {Size = UDim2.new(0, 16,0, 28), BackgroundColor3 = Color3.new(0.556863, 0.996078, 1)})
		wait(.4)
		tween(img1, .4, "Quart", "InOut", {Size = UDim2.new(0, 16,0, 15), BackgroundColor3 = Color3.fromRGB(53, 53, 53)})
		wait(.4)	
	end
	
	loadingFrame.ClipsDescendants = true
	loadingFrame.Visible = true
	
	local toPosition = UDim2.new(0.455, 0,-0.2, 0)
	
	tween(img3, .3, "Bounce", "Out", {Position = UDim2.new(img3.Position.X,0, -0.2,0), BackgroundTransparency = 1})
	wait(.3)
	tween(img2, .3, "Bounce", "Out", {Position = UDim2.new(img2.Position.X,0, -0.2,0), BackgroundTransparency = 1})
	wait(.3)
	tween(img1, .3, "Bounce", "Out", {Position = UDim2.new(img2.Position.X,0, -0.2,0), BackgroundTransparency = 1})
	
	wait(.4)
	loadingFrame:Destroy()
	
	MainFrame.ClipsDescendants = true
	local startingPos = UDim2.new(1, 0,0.153, 0)
	toPosition = UDim2.new(0, 0,0.153, 0)
	
	if customKey == true then
		getKey:Destroy()
	end
	mainGui.Position = UDim2.new(1, 0,0.153, 0)
	mainGui.Visible = true
	
	tween(mainGui, .3, "Bounce", "In", {Position = UDim2.new(toPosition)})
	
	getKey.MouseButton1Down:Connect(function()
		if customKey == false then
			generateKey(keybin)
		end
	end)
	
	local keyIsCorrect = false
	
	keybin:GetPropertyChangedSignal("Text"):Connect(function()
		local respitory = readfile("data."..title)
		
		if keybin.Text == respitory.key then
			keyIsCorrect = true
			local length = string.len(keybin.Text)

			keybin.Text = string.rep("*", length)
		else
			keyIsCorrect = false
		end	
	end)
	
	keybin.FocusLost:Connect(function()
		if customKey == false then
			if	readfile("data."..title) then
				local respitory = readfile("data."..title)
				
				if os.time > respitory.expireDate and respitory.expires == true then
					keybin.Text = "Key expired! Please generate a new one."

					wait(3)
					keybin.Text = ""
				elseif os.time < respitory.expireData and respitory.expires == true then
					if keybin.Text == respitory.key or keyIsCorrect == true then
						
						if twoStep == true then
							tween(mainGui, .4, "Bounce", "Out", {Position = UDim2.new(1, 0,0.153, 0)})
							
							mathFrame.Position = UDim2.new(1, 0,0.153, 0)
							mathFrame.Visible = true
							wait(.4)
							tween(mathFrame, .4, "Bounce", "Out", {Position = UDim2.new(0, 0,0.153, 0)})
							wait(.4)
							
							local operators = {"*", "/", "+", "-"}
							local generated = math.random(1, 4)
							generated = operators[generated]
							
							local a = math.random(7,30)
							local b = math.random(6,25)
							information_4.Text = ""..a.." "..generated.." "..b
							
							local answer
							
							if generated == "*" then
								answer = a * b
							elseif generated == "/" then
								answer = a / b
							elseif generated == "+" then
								answer = a + b
							elseif answer == "-" then
								answer = a - b
							end
							
							answerbin.FocusLost:Connect(function()
								if answer and answerbin.Text == answer then
									tween(mathFrame, .4, "Bounce", "Out", {Position = UDim2.new(1, 0,0.153, 0)})
									wait(.4)
									getgenv().loadClick()
									
									local small = UDim2.new(0.5, 0,0.319, 0)
									tween(MainFrame, .4, "Bounce", "Out", {Size = UDim2.new(small)})
									wait(.4)
									logGUi:Destroy()
								end
							end)
						else
							getgenv().loadClick()

							local small = UDim2.new(0.5, 0,0.319, 0)
							tween(MainFrame, .4, "Bounce", "Out", {Size = UDim2.new(small)})
							wait(.4)
							logGUi:Destroy()
						end
					end
				end
				
				if respitory.expires == false then
					if keybin.Text == respitory.key or keyIsCorrect == true then
						if twoStep == true then
							tween(mainGui, .4, "Bounce", "Out", {Position = UDim2.new(1, 0,0.153, 0)})

							mathFrame.Position = UDim2.new(1, 0,0.153, 0)
							mathFrame.Visible = true
							wait(.4)
							tween(mathFrame, .4, "Bounce", "Out", {Position = UDim2.new(0, 0,0.153, 0)})
							wait(.4)

							local operators = {"*", "/", "+", "-"}
							local generated = math.random(1, 4)
							generated = operators[generated]

							local a = math.random(7,30)
							local b = math.random(6,25)
							information_4.Text = ""..a.." "..generated.." "..b

							local answer

							if generated == "*" then
								answer = a * b
							elseif generated == "/" then
								answer = a / b
							elseif generated == "+" then
								answer = a + b
							elseif answer == "-" then
								answer = a - b
							end

							answerbin.FocusLost:Connect(function()
								if answer and answerbin.Text == answer then
									tween(mathFrame, .4, "Bounce", "Out", {Position = UDim2.new(1, 0,0.153, 0)})
									wait(.4)
									getgenv().loadClick()

									local small = UDim2.new(0.5, 0,0.319, 0)
									tween(MainFrame, .4, "Bounce", "Out", {Size = UDim2.new(small)})
									wait(.4)
									logGUi:Destroy()
								end
							end)
						else
							getgenv().loadClick()

							local small = UDim2.new(0.5, 0,0.319, 0)
							tween(MainFrame, .4, "Bounce", "Out", {Size = UDim2.new(small)})
							wait(.4)
							logGUi:Destroy()
						end
					end
				end
				
			else
				keybin.Text = "Couldn't find key data! Did you generate a key?"
				
				wait(3)
				keybin.Text = ""
			end
		end
	end)
end