include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()
end

function ENT:Think()
	local rgba = self:GetColor();
    local dlight = DynamicLight( self:EntIndex() )
	if ( dlight ) then
		dlight.Pos = self:GetPos()
		dlight.r = rgba.r
		dlight.g = rgba.g
		dlight.b = rgba.b
		dlight.Brightness = GetConVar("sv_glowstickbrightness"):GetFloat()
		dlight.Size = 256
		dlight.Decay = 0
		dlight.DieTime = CurTime() + 0.05
	end
end