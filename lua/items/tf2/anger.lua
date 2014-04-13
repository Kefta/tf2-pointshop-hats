ITEM.Name = 'Anger'
ITEM.Price = 0
ITEM.Model = 'models/player/items/sniper/c_bet_brinkhood.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -3.75) + (ang:Up() * -2)
	return model, pos, ang
end