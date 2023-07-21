local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
function update(text)
    local args = {
        [1] = "Update",
        [2] = {
            ["DescriptionText"] = text,
        }
    }
    game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
function updateimg(id)
    local args = {
        [1] = "Update",
        [2] = {
            ["ImageId"] = id
        }
    }
    game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
OrionLib:MakeNotification({
	Name = "its loading bruh",
	Content = "",
	Image = "rbxassetid://4483345998",
	Time = 1
})
local Window = OrionLib:MakeWindow({Name = "rate my avatar remote booth updater", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "updater",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "booth text",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		update(Value)
	end	  
})
Tab:AddTextbox({
	Name = "image id",
	Default = "0",
	TextDisappear = false,
	Callback = function(Value)
		updateimg(Value)
	end	  
})
Tab:AddParagraph("you have to click on the window to update it","made by huntingwall8910 on github")
OrionLib:Init()