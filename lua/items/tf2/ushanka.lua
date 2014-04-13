ITEM.Name = 'Officer\'s Ushanka'
ITEM.Price = 900
ITEM.Model = 'models/player/items/heavy/heavy_ushanka.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -5) + (ang:Up() * -2)
	
	return model, pos, ang
end