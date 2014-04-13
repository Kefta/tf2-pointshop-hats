ITEM.Name = 'Max\'s Severed Head'
ITEM.Price = 0
ITEM.Model = 'models/player/items/medic/medic_ttg_max.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -6) + (ang:Up() * 0)
    model:SetModelScale(1.1, 0)

	return model, pos, ang
end