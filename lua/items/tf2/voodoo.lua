ITEM.Name = 'Voodoo Juju'
ITEM.Price = 0
ITEM.Model = 'models/player/items/demo/demo_bonehat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -4.4) + (ang:Up() * 0)
    model:SetModelScale(1.06, 0)

	return model, pos, ang
end