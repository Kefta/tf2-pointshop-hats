ITEM.Name = 'Old Guadalajara'
ITEM.Price = 0
ITEM.Model = 'models/player/items/pyro/fiesta_sombrero.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -8.8) + (ang:Up() * 0)
    model:SetModelScale(1.35, 0)

	return model, pos, ang
end