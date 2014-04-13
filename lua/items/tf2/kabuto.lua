ITEM.Name = 'Killer\'s Kabuto'
ITEM.Price = 0
ITEM.Model = 'models/player/items/soldier/soldier_samurai.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -4) + (ang:Up() * 4.5)
    model:SetModelScale(0.97, 0)
	
	return model, pos, ang
end