ITEM.Name = 'Alien Swarm Parasite'
ITEM.Price = 0
ITEM.Model = 'models/player/items/all_class/parasite_hat_medic.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    pos = pos + (ang:Forward() * -4) + (ang:Up() * -80)
    model:SetModelScale(1.05, 0)

	return model, pos, ang
end