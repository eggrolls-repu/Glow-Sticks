CreateClientConVar("cl_glowsticks_red", "255", true, true)
CreateClientConVar("cl_glowsticks_green", "255", true, true)
CreateClientConVar("cl_glowsticks_blue", "255", true, true)
CreateClientConVar("cl_glowsticks_alpha", "255", true, true)

local function GlowSticks_Menu(Panel)
    local logo = vgui.Create("DImage")
    logo:SetImage("vgui/gs_logo")
    logo:SetSize(300, 150)

    Panel:AddPanel(logo)
    Panel:AddControl("Label", {Text = "Server Settings"})

    -- Checkbox control
    Panel:AddControl("CheckBox", {
        Label = "Should glow sticks live forever?",
        Command = "sv_glowstickliveforever"
    })

    -- Integer slider control for glow stick lifetime
    Panel:AddControl("Slider", {
        Label = "Lifetime",
        Command = "sv_glowsticklifetime",
        Type = "Integer",
        Min = 0,
        Max = 300
    })

    -- Integer slider control for glow stick throw force
    Panel:AddControl("Slider", {
        Label = "Throw force",
        Command = "sv_glowstickthrowforce",
        Type = "Integer",
        Min = 0,
        Max = 100
    })
    
    -- New sliders added
    -- Integer slider control for glow stick brightness
    Panel:AddControl("Slider", {
        Label = "Brightness in hand",
        Command = "sv_glowstickbrightness",
        Type = "Integer",
        Min = -10,
        Max = 10
    })
    
    -- Integer slider control for dropped glow stick brightness
    Panel:AddControl("Slider", {
        Label = "Brightness dropped",
        Command = "sv_glowstickdroppedbrightness",
        Type = "Integer",
        Min = -10,
        Max = 10
    })
    
    -- Integer slider control for amount of glow sticks
    Panel:AddControl("Slider", {
        Label = "Ammo",
        Command = "sv_glowstickammo",
        Type = "Integer",
        Min = 0,
        Max = 100
    })
    
    -- Checkbox control for full auto glow sticks
    Panel:AddControl("CheckBox", {
        Label = "Full auto Glow Sticks!?!?",
        Command = "sv_glowstickfullauto"
    })
    
    -- Integer slider control for glow stick drop delay
    Panel:AddControl("Slider", {
        Label = "Drop delay",
        Command = "sv_glowstickdropdelay",
        Type = "Integer",
        Min = 0,
        Max = 180
    })
    
    -- Integer slider control for glow stick throw delay
    Panel:AddControl("Slider", {
        Label = "Throw delay",
        Command = "sv_glowstickthrowdelay",
        Type = "Integer",
        Min = 0,
        Max = 180
    })

    Panel:AddControl("Label", {Text = "Client Settings"})

    -- Color control for custom glow stick color
    Panel:AddControl("Color", {
        Label = "Custom Glow Stick Color",
        Red = "cl_glowsticks_red",
        Blue = "cl_glowsticks_blue",
        Green = "cl_glowsticks_green",
        Alpha = "cl_glowsticks_alpha",
        ShowHSV = 1,
        ShowRGB = 1,
        Multiplier = 255
    })

    Panel:AddControl("Label", {Text = "Glow Sticks by Patrick Hunt"})
end



local function LoadMenu()
	spawnmenu.AddToolMenuOption("Options", "Player", "Glowsticks", "Glow Sticks Options", "", "", GlowSticks_Menu)
end
hook.Add( "PopulateToolMenu", "Glow Sticks Load Menu", LoadMenu )