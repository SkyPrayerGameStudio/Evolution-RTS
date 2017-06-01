unitDef                    = {
	acceleration                 = 0.18,
	brakeRate                    = 0.1,
	buildCostEnergy              = 0,
	buildCostMetal               = 250,
	builder                      = false,
	buildTime                    = 5,
	buildpic					 = "eamphibleveler.png",
	canAttack                    = true,
	canGuard                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "ARMORED AMPHIB SKIRMISHER",
	corpse                       = "ammobox",
	description                  = [[Tank Destroyer • Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "krabblast",
	footprintX                   = 6,
	footprintZ                   = 6,
	iconType                     = "leveller",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 1750,
	maxSlope                     = 28,
	maxVelocity                  = 4,
	maxReverseVelocity           = 1,
	maxWaterDepth                = 5000,
	metalStorage                 = 0,
	movementClass                = "TANK6",
	name                         = humanName,
	noChaseCategory              = "VTOL",
	objectName                   = objectName,
	script			             = script,
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "krabblast",
	side                         = "CORE",
	sightDistance                = 750,
	sonarDistance				 = 750,
	smoothAnim                   = true,
	stealth			             = true,
	seismicSignature             = 4,
	transportbyenemy             = false;
	turnInPlace                  = true,
	turnRate                     = 5000,
	unitname                     = unitName,
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirt",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "tankkillerlaser",
		},
		[2]                      = {
			def                  = "machinegun",
		},
	},
	customParams                 = {
		isupgraded			  	 = isUpgraded,
		death_sounds             = "nuke",
		RequireTech              = tech,
		armortype                = armortype,
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies", 
	},
}

weaponDefs                 = {
	tankkillerlaser              = {
		AreaOfEffect             = 8,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		beamTime                 = 0.1,
		coreThickness            = 0.5,
		duration                 = 0.2,
		energypershot            = energycosttofire,
		explosionGenerator       = "custom:genericshellexplosion-large-purple",
		fallOffRate              = 1,
		fireStarter              = 100,
		interceptedByShieldType  = 4,
		impulseFactor            = 0.1,
		minintensity             = "1",
		name                     = "Anti-Tank Laser",
		range                    = 750,
		reloadtime               = 0.5,
		WeaponType               = "LaserCannon",
		rgbColor                 = "0.2 0 0.5",
		rgbColor2                = "0.8 0.8 0.8",
		soundTrigger             = true,
		soundstart               = "tankdestroyermaingunfire.wav",
		texture1                 = "pulseshot2",
		texture2                 = "empty",
		thickness                = 9,
		tolerance                = 1000,
		turret                   = true,
		weaponVelocity           = 1000,
		customparams             = {
			isupgraded			 = isUpgraded,
			damagetype		     = "eamphibleveler",  
		}, 
		damage                   = {
			default              = 250,
		},
	},

	machinegun                   = {
		accuracy                 = 300,
		AreaOfEffect             = 8,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		beamTime                 = 0.1,
		coreThickness            = 0.5,
		duration                 = 0.1,
		explosionGenerator       = "custom:genericshellexplosion-large-sparks-burn",
		energypershot            = energycosttofire2,
		fallOffRate              = 1,
		fireStarter              = 50,
		interceptedByShieldType  = 4,
		minintensity             = "1",
		name                     = "Machine Gun",
		range                    = 750,
		reloadtime               = 0.1,
		WeaponType               = "LaserCannon",
		rgbColor                 = "1 0.5 0",
		rgbColor2                = "1 1 1",
		soundTrigger             = true,
		soundstart               = "tankdestroyerfire.wav",
		texture1                 = "shot",
		texture2                 = "empty",
		thickness                = 5,
		tolerance                = 1000,
		turret                   = true,
		weaponVelocity           = 1000,
		customparams             = {
			isupgraded			 = isUpgraded,
			damagetype		     = "eamphibleveler", 
		}, 
		damage                   = {
			default              = 6,
		},
	},
}