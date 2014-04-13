ITEM.Name = 'Gifting Man'
ITEM.Price = 900
ITEM.Model = 'models/player/items/all_class/generous_medic.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(0.8, 0)
	pos = pos + (ang:Forward() * -5.5) + (ang:Up() * 1)
	
	return model, pos, ang
end