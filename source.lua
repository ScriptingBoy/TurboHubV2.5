-- Gui to Lua
-- Version : 3.2

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Jojo UI", "DarkTheme")
local Tab = Window:NewTab("JOJO HUB")
local Section = Tab:NewSection("JoJo Hub")
Section:UpdateSection("Jojo UI 2.1")
Section:NewLabel("JOJO SCRIPT HUB 1")
label:UpdateLabel("jojo script hub watheckalt")
Section:NewButton("Gui V4 Remake", "GUI V4 REMASTERED", function()
   loadstring(game:HttpGet(('https://pastebin.com/raw/h8LNKgs9),true))() 
end)
button:UpdateButton("GhostTuber Gui V4")
Section:NewToggle("Script Toggle", "Offsale 500k", function(state)
    if state then
        print("Script : On")
    else
        print("Script : Off")
    end
end)
getgenv().Toggled = false

local toggle = Section:NewToggle("NewScriptToggle", "Info", (state)
    getgenv().Toggled = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if getgenv().Toggled then
		toggle:UpdateToggle("ScriptActive : On")
	else
		toggle:UpdateToggle("ScriptActive : Off")
	end
end)
Section:NewSlider("Walkspeed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewTextBox("Executor", "No DEscription", function(txt)
	print(txt)
end)
Section:NewKeybind("Reset Scripter", "KeybindInfo", Enum.KeyCode.F, function()
	game.Players.LocalPlayer.Character.Humanoid[Head]:Destroy
end)
Section:NewKeybind("ToggleUIKeybind", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
local oldList = {
  "2020",
  "2021"
}
local newList = {
  "2022",
  "2023"
}
local dropdown = Section:NewDropdown("Dropdown","Info", oldList, function()

end)
Section:NewButton("Update Dropdown", "Refreshes Dropdown", function()
  dropdown:Refresh(newList)
end)
Section:NewColorPicker("Theme Color", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your theme "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
