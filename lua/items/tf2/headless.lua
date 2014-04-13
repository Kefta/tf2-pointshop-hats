ITEM.Name = 'Horsemann\'s Head'
ITEM.Price = 0
ITEM.Model = 'models/player/items/all_class/pumpkin_hat_medic.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -5) + (ang:Up() * -76)
    model:SetModelScale(1, 0)

	return model, pos, ang
end