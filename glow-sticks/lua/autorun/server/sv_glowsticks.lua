resource.AddFile("materials/vgui/entities/glowstick.vmt")
resource.AddFile("materials/vgui/entities/glowstick.vtf")
resource.AddFile("models/glowstick/v_glowstick.mdl")
resource.AddFile("models/glowstick/stick.mdl")
resource.AddFile("materials/models/glowstick/glow.vmt")
resource.AddFile("materials/models/glowstick/glow.vtf")
resource.AddFile("materials/models/glowstick/01.vmt")
resource.AddFile("materials/models/glowstick/01.vtf")
resource.AddFile("glowstick/glowstick_shake.wav")
resource.AddFile("glowstick/glowstick_snap.wav")

CreateConVar( "sv_glowstickliveforever", "0", FCVAR_NOTIFY, "Should Glow Sticks live forever")
CreateConVar( "sv_glowsticklifetime", "25", FCVAR_NOTIFY, "Glow Stick lifetime in seconds")
CreateConVar( "sv_glowstickthrowforce", "12", FCVAR_NOTIFY, "Glow Stick throw force (secondary mouse button)")
CreateConVar( "sv_glowstickthrowdelay", "2", FCVAR_NOTIFY, "Glow Stick throw delay in seconds")
CreateConVar( "sv_glowstickdropdelay", "2", FCVAR_NOTIFY, "Glow Stick drop delay in seconds")
CreateConVar( "sv_glowstickfullauto", "0", FCVAR_NOTIFY, "Full auto Glow Sticks!?!?")
CreateConVar( "sv_glowstickammo", "5", FCVAR_NOTIFY, "Default amount of Glow Sticks players spawn with")
CreateConVar( "sv_glowstickdroppedbrightness", "0", FCVAR_NOTIFY, "Glow Stick brightness when dropped, can go negative")
CreateConVar( "sv_glowstickbrightness", "0", FCVAR_NOTIFY, "Glow Stick brightness when held, can go negative")

--hook.Add( "PlayerInitialSpawn", "GlowSticksSpawnAndSay", 
--	function( ply ) 
--		ply:PrintMessage( HUD_PRINTTALK, "Glow Sticks are available on this server. Customization is also available in the Options menu!" )
--	end )
-- not many people would like to have this message pop-up everytime but if you want it for some reason you can uncomment it