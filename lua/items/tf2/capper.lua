ITEM.Name = 'Capo\'s Capper'
ITEM.Price = 0
ITEM.Model = 'models/player/items/heavy/capones_capper.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    model:SetModelScale(1.03, 0)
	pos = pos + (ang:Forward() * -5) + (ang:Up() * -2)
	return model, pos, ang
end