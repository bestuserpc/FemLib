-- Load the library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bestuserpc/FemLib/refs/heads/main/source.lua"))()

-- Initialize the library
library:Init()

-- Create a tab
local mainTab = library:AddTab("Main")

-- Create a section
local section = mainTab:AddSection("Controls")

-- Add UI elements
section:AddLabel("Welcome to the GUI!")

section:AddToggle({
    text = "Enable Feature",
    state = true,
    callback = function(state)
        print("Feature enabled:", state)
    end
})

section:AddButton({
    text = "Start Process",
    callback = function()
        print("Process started!")
    end
})

section:AddSlider({
    text = "Volume",
    min = 0,
    max = 100,
    value = 50,
    callback = function(value)
        print("Volume set to:", value)
    end
})

section:AddColor({
    text = "Background Color",
    color = Color3.fromRGB(255, 255, 0),
    callback = function(color)
        print("Selected color:", color)
    end
})

section:AddList({
    text = "Choose Mode",
    values = {"Mode A", "Mode B", "Mode C"},
    callback = function(option)
        print("Selected mode:", option)
    end
})

section:AddBox({
    text = "Enter Username",
    value = "",
    callback = function(value)
        print("Username entered:", value)
    end
})

section:AddBind({
    text = "Set Keybind",
    key = Enum.KeyCode.G,
    callback = function()
        print("Key G pressed!")
    end
})
