-- UNITDEF -- ERIOTTANK2_up1 --
--------------------------------------------------------------------------------

unitName = "eriottank2_up1"

--------------------------------------------------------------------------------

isUpgraded	= [[1]]

humanName = "Spas Mark I"

objectName = "eriottank3.s3o"
script = "eriottank3.cob"

tech = [[tech1]]
armortype = [[light]]
supply = [[3]]


VFS.Include("units-configs-basedefs/basedefs/hover/eriottank2_basedef.lua")

unitDef.weaponDefs = weaponDefs--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------
