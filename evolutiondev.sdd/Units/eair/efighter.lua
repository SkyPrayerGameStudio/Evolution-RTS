-- UNITDEF -- EFIGHTER --
--------------------------------------------------------------------------------

local unitName = "efighter"

--------------------------------------------------------------------------------

local unitDef = {

  acceleration       = 0.55,
  bankscale          = "1",
  brakeRate          = 6,
  buildCostEnergy    = 0,
  buildCostMetal     = 45,
  buildTime          = 2.5,
  canAttack          = true,
  canFly             = true,
  canGuard           = true,
  canLoopbackAttack  = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT VTOL",
  collide            = true,
--Collision Volumes... Because the engine devs are silly.
	collisionVolumeScales = [[35 35 35]],
--End Collision volumes
  corpse             = "ammobox",
  cruiseAlt          = 400,
  description        = [[Fighter
Light, 150% Damage vs Armored
 
Requires +5 Power]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  footprintX         = 3,
  footprintZ         = 2,
  floater            = true,
  iconType           = "air",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxAcc             = 0.25,
  maxDamage          = 320,
  maxSlope           = 10,
  maxVelocity        = 16,
  verticalSpeed		 = 15,
  maxWaterDepth      = 255,
  metalStorage       = 0,
  moverate1          = "8",
  name               = "(C)oyote",
  noChaseCategory    = "NOTAIR",
  objectName         = "efighter.s3o",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "SMALL_UNIT",
  side               = "ARM",
  sightDistance      = 1000,
  smoothAnim         = true,
  sonarDistance      = 0,
  turnRate           = 50,
  unitname           = "efighter",
  workerTime         = 0,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:gunshipcannon",
      "custom:jethtrail",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "antiairmissile",
	  onlyTargetCategory = "VTOL",
    },
  },
   customParams = {
--    needed_cover = 2,
	death_sounds = "soldier",
	twokhotkey = 'c',
    RequireTech = "3 Power",
	armortype   = "light",
	nofriendlyfire	= "1",
	normaltex = "unittextures/efighternormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  antiaircannon = {
    AreaOfEffect       = 300,
    avoidFriendly      = false,
    avoidFeature       = false,
    ballistic          = true,
	cegTag             = "missiletrailflashy",
    collideFriendly    = false,
    collideFeature     = false,
	canAttackGround    = false,
    burnblow           = true,
	edgeEffectiveness  = 0.5,
    endsmoke           = "1",
    explosionGenerator = "custom:BulletImpact3",
	energypershot      = 7,
    fireStarter        = 80,
    id                 = 1,
    impulseFactor      = 0,
	interceptedByShieldType = 4,
	model              = "missilesmall.s3o",
    name               = "AA Cannon",
    pitchtolerance     = "3000",
    range              = 1500,
    reloadtime         = 1,
    weaponType		   = "Cannon",
    soundHit           = "mediumcannonhit.wav",
    soundStart         = "aircraft_missile_01.wav",
    startsmoke         = "1",
    tolerance          = 3000,
    turret             = false,
	toairweapon		   = true,
    weaponVelocity     = 2000,
	customparams = {
	  damagetype		= "fighter",  
	  nofriendlyfire	= 1,
    },
    damage = {
      default            = 70,
    },
  },
  
  antiairmissile = {
    AreaOfEffect       = 300,
    avoidFriendly      = false,
    avoidFeature       = false,
	cegTag             = "missiletrailaa",
    collideFriendly    = false,
    collideFeature     = false,
	canAttackGround    = false,
	burst				= 4,
	burstrate			= 0.5,
	edgeEffectiveness  = 0.5,
    explosionGenerator = "custom:BulletImpact3",
	energypershot      = 7,
    fireStarter        = 80,
    impulseFactor      = 1,
	interceptedByShieldType = 4,
	model              = "missilesmall.s3o",
    name               = "AA Missile",
    pitchtolerance     = 3000,
    range              = 1500,
    reloadtime         = 4,
    weaponType		   = "MissileLauncher",
    soundHit           = "mediumcannonhit.wav",
    soundStart         = "aircraft_missile_01.wav",
    tolerance          = 3000,
    turret             = false,
	toairweapon		   = true,
	startVelocity	   = 750,
	acceleration	   = 2000,
    weaponVelocity     = 10000,
	tracks				= true,
	turnrate			= 100000,
	flighttime			= 4,
	sprayangle			= 5000,
	
	customparams = {
	  damagetype		= "fighter",  
	  nofriendlyfire	= 1,
    },
    damage = {
      default            = 70,
    },
  },
  
  
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
