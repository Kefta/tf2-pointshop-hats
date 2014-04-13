ITEM.Name = 'Industrial Festivizer'
ITEM.Price = 0
ITEM.Model = 'models/player/items/engineer/engineer_colored_lights.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -4.5) + (ang:Up() * -2)
    model:SetModelScale(0.95, 0)

	return model, pos, ang
end