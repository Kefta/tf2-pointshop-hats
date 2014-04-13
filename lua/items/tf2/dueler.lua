ITEM.Name = 'Dueler'
ITEM.Price = 0
ITEM.Model = 'models/player/items/all_class/dueler_medic.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -5.5) + (ang:Up() * 1)
	model:SetModelScale(0.9, 0)

	return model, pos, ang
end