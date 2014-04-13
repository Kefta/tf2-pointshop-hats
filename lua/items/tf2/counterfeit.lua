ITEM.Name = 'Counterfeit Billycock'
ITEM.Price = 0
ITEM.Model = 'models/player/items/spy/fwk_spy_disguisedhat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1.08, 0)
    pos = pos + (ang:Forward() * -5.5) + (ang:Up() * -1)
	return model, pos, ang
end