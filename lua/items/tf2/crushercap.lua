ITEM.Name = 'Crusher Cap'
ITEM.Price = 0
ITEM.Model = 'models/player/items/medic/coh_medichat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -5.5) + (ang:Up() * -1)
	model:SetModelScale(1.09, 0)

	return model, pos, ang
end