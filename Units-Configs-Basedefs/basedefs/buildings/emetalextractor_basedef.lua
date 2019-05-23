unitDef                     = {

	activateWhenBuilt             = true,
	buildAngle                    = 2048,
	buildCostEnergy               = 0,
	buildCostMetal                = buildCostMetal,
	buildingMask				  = 0,
	builder                       = false,
	buildTime                     = 5,
	buildPic					  = "emetalextractor.png",
	canAttack			          = false,
	category                      = "BUILDING NOTAIR ECO",
	description                   = [[Generates Metal from Resource Nodes]],
	energyStorage                 = 0,
	energyUse                     = energyUse,
	explodeAs                     = "largeBuildingExplosionGenericRed",
	makesMetal                    = 0,
	footprintX                    = 9,
	footprintZ                    = 9,
	iconType                      = "eco",
	idleAutoHeal                  = .5,
	idleTime                      = 2200,
	maxDamage                     = buildCostMetal * 12.5,
	maxSlope                      = 90,
	maxWaterDepth                 = 5000,
	metalStorage                  = 0,
	metalMake                     = 0,
	name                          = humanName,
	objectName                    = objectName,
	script						  = script,
	onoffable                     = true,
	radarDistance                 = 0,
	repairable		              = false,
	selfDestructAs                = "largeBuildingExplosionGenericRed",
	selfDestructCountdown         = 15,
	side                          = "CORE",
	sightDistance                 = 200,
	smoothAnim                    = true,
	unitName                      = unitName,
	workerTime                    = 0,
	yardMap                       = "yyyyyyyyy yoooooooy yoooooooy yoooooooy yoooooooy yoooooooy yoooooooy yoooooooy yyyyyyyyy",
	sfxtypes                      = { 
		pieceExplosionGenerators  = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators       = {
			"custom:blacksmoke",
			primaryCEG,
			"custom:skyhatelaser",
		},
	},
	sounds                        = {
		underattack               = "other/unitsunderattack1",
		select                    = {
			"other/gdmex",
		},
	},
	weapons                       = {
	},
	customParams                  = {
		RequireTech				  = tech,
		unittype				  = "building",
		metal_extractor			  = metalMultiplier,
		iseco                     = 1,
		needed_cover              = 3,
		death_sounds              = "generic",
		armortype                 = armortype,
		noenergycost			  = true,
		normaltex                = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                 = "unittextures/lego2skin_explorerbucket.dds",
		factionname	              = "outer_colonies",
		corpse                   = "energycore",
		helptext                  = [[]],
	},
	useGroundDecal                = true,
	BuildingGroundDecalType       = "factorygroundplate.dds",
	BuildingGroundDecalSizeX      = 9,
	BuildingGroundDecalSizeY      = 9,
	BuildingGroundDecalDecaySpeed = 0.9,
}