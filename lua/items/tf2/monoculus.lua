ITEM.Name = 'Monoculus'
ITEM.Price = 0
ITEM.Model = 'models/player/items/all_class/haunted_eyeball_hat_engineer.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -5.3) + (ang:Up() * 0)
    model:SetModelScale(1, 0)

	return model, pos, ang
end