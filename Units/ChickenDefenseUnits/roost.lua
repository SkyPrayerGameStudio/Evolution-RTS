return {
	roost = {
		acceleration = 0,
		activatewhenbuilt = true,
		autoheal = 1.8,
		bmcode = "0",
		brakerate = 0,
		buildcostenergy = 1,
		buildcostmetal = 1,
		builddistance = 90,
		builder = true,
		buildpic = "chicken_unitpics/roost.png",
		buildtime = 1,
		category = "BIO",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "56 11 56",
		collisionvolumetype = "box",
		description = "Spawns Chicken",
		energystorage = 1000,
		explodeas = "ROOST_DEATH",
		footprintx = 2,
		footprintz = 2,
		icontype = "special",
		idleautoheal = 10,
		idletime = 90,
		isairbase = true,
		levelground = false,
		mass = 165.75,
		maxdamage = 1800,
		maxvelocity = 0,
		name = "Roost",
		noautofire = false,
		objectname = "ChickenDefenseModels/roost.s3o",
		script = "ChickenDefenseScripts/roost.cob",
		radardistance = 900,
		seismicsignature = 4,
		selfdestructas = "ROOST_DEATH",
		side = "ARM",
		sightdistance = 450,
		smoothanim = true,
		tedclass = "ENERGY",
		turnrate = 0,
		unitname = "roost",
		upright = false,
		waterline = 0,
		workertime = 1500,
		yardmap = "ooooooooo",
		featuredefs = {},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:dirt",
			},
		},
		weapondefs = {
			weapon = {
				interceptedByShieldType   = 4,
				areaofeffect = 450,
				avoidfriendly = 0,
				cegtag = "nuketrail-roost",
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "custom:nukedatbewm-roost",
				firestarter = 70,
				flighttime = 100,
				metalpershot = 0,
				model = "ChickenDefenseModels/greyrock2.s3o",
				name = "Asteroid",
				range = 29999,
				reloadtime = 5,
				smoketrail = 1,
				soundhit = "ChickenDefenseSounds/nuke4",
				startvelocity = 2000,
				turret = 1,
				weaponacceleration = 120,
				weapontimer = 10,
				weaponvelocity = 2000,
				wobble = 0,
				damage = {
					default = 6000,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
			},
		},
		customparams = {
			unittype = "mobile",
		},
	},
}
