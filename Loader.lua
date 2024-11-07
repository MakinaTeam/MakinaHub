local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/x9SunZ/SaveMode/main/9PASA%20Not%20Give%20Ui"))()

local Main = Library.xova()

local Tab1 = Main.create("Main")

local Tab2 = Main.create("Stats")

local Tab3 = Main.create("Teleport/Dungeons")

local Tab4 = Main.create("Shop")

local Tab5 = Main.create("Misc")

-------------[Tab1]-------------

local Page1 = Tab1.xovapage(1)

local Page2 = Tab1.xovapage(1)

local Page3 = Tab1.xovapage(2)

local Page8 = Tab1.xovapage(2)

local Page4 = Tab1.xovapage(2)

local Page5 = Tab1.xovapage(2)

local Page6 = Tab1.xovapage(1)

local Page7 = Tab1.xovapage(2)

-------------[Tab2]-------------

local Page9 = Tab2.xovapage(1)

local Page15 = Tab2.xovapage(2)

-------------[Tab3]-------------

local Page10 = Tab3.xovapage(1)

local Page11 = Tab3.xovapage(2)

-------------[Tab4]-------------

local Page12 = Tab4.xovapage(1)

local Page13 = Tab4.xovapage(2)

-------------[Tab5]-------------

local Page14 = Tab5.xovapage(1)

local Page16 = Tab5.xovapage(2)

Page1.Label({
    Title = "Auto Farm",
})

Page1.Line()

Page1.Button({
    Title = "Button",
    callback = function(Value)
        print("Button")
    end,
})

Page1.Toggle({
    Title = "Toggle",
    Mode = 2,
    Default = Toggle,
    Desc = "Select Toggle Type First",
    callback = function(Value)
        Toggle = value
    end,
})

Page1.Label({
    Title = "Description"
})

Page1.Line()

Page1.Slider({
    Title = "Slider",
    Min = 1,
    Default = 1,
    Max = 5000,
    callback = function(value)
        _G.Settings.Configs["Distance Mob Aura"] = value
        SaveSettings()
    end,
})

Muti = {
    "asdas",
    "fasf",
    "ffff"

}

local TestDropdown =  Page1.Dropdown({
    Title = "TestDropdown",
    Item = Muti,
    callback = function(Value)
        _G.SelectBoss = Value
    end,
})

local TestMultiDropdown = Page1.MultiDropdown({
    Title = "TestMultiDropdown",
    Item = Muti,
    callback = function(Value)
        TestMulti = Value
    end,
})

Page2.Line()

Page3.Line()

Page8.Line()

Page4.Line()

Page5.Line()

Page6.Line()

Page7.Line()

Page9.Line()

Page15.Line()
