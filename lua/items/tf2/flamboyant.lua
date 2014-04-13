ITEM.Name = 'Flamboyant Flamenco'
ITEM.Price = 750
ITEM.Model = 'models/player/items/pyro/fwk_pyro_flamenco.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -6) + (ang:Up() * -1)
    
	return model, pos, ang
end