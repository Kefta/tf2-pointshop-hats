ITEM.Name = 'Tyrant\'s Helm'
ITEM.Price = 900
ITEM.Model = 'models/player/items/soldier/soldier_viking.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -4) + (ang:Up() * 3)
	
	return model, pos, ang
end