
controlPoints = Spring.GetModOptions().scoremode

if controlPoints == nil then
	controlPoints = "disabled"
end

if controlPoints == "disabled" then
	shard_include(  "taskqueues" )
	shard_include(  "taskqueuebehaviour" )
	shard_include(  "attackerbehaviour" )
	shard_include(  "bootbehaviour" )
	--shard_include(	"morphbehaviour"	)
	--shard_include(  "engineerturretbehaviour"  )
	else
	shard_include(  "taskqueues" )
	shard_include(  "taskqueuebehaviour" )
	shard_include(  "attackerbehaviour" )
	shard_include(  "bootbehaviour" )
	shard_include(  "capturerbehaviour" )
	--shard_include(	"morphbehaviour"	)
	--shard_include(  "engineerturretbehaviour"  )
end

--shard_include "capturerbehaviour"
--require "missingfactorybehaviour"
--require "autoreclaimbehaviour"
--shard_include "lowenergybehaviour"
--require "factoryregisterbehaviour"

behaviours = {
	eorb = {
		TaskQueueBehaviour,
	},
	eorb_up1 = {
		TaskQueueBehaviour,
	},
	eorb_up2 = {
		TaskQueueBehaviour,
	},
	eorb_up3 = {
		TaskQueueBehaviour,
	},
	ebasefactory = {
		TaskQueueBehaviour,
		--FactoryRegisterBehaviour,
	},
	eairplant = {
		TaskQueueBehaviour,
		--FactoryRegisterBehaviour,
	},
	eamphibfac = {
		TaskQueueBehaviour,
		--FactoryRegisterBehaviour,
	},
	eminifac = {
		TaskQueueBehaviour,
		--FactoryRegisterBehaviour,
	},
	ecommanderbattleai = {
		TaskQueueBehaviour,
		--LowEnergyBehaviour,
		--EngineerTurretBehaviour,
	},
	eengineer5 = {
		TaskQueueBehaviour,
		--MissingFactoryBehaviour,
		--EngineerTurretBehaviour,
		--LowEnergyBehaviour,
	},
	eamphibengineer = {
		TaskQueueBehaviour,
		--MissingFactoryBehaviour,
		--EngineerTurretBehaviour,
		--LowEnergyBehaviour,
	},
	eairengineer = {
		TaskQueueBehaviour,
		--MissingFactoryBehaviour,
		--EngineerTurretBehaviour,
		--LowEnergyBehaviour,
	},
	eallterrengineer = {
		TaskQueueBehaviour,
		--MissingFactoryBehaviour,
		--EngineerTurretBehaviour,
		--LowEnergyBehaviour,
	},
	--eaimexer = {
		--EngineerTurretBehaviour,
	--},
}

function defaultBehaviours(unit)
	b = {}
	
	u = unit:Internal()
	--table.insert(b,MorphBehaviour)
	if u:CanBuild() then
		table.insert(b,TaskQueueBehaviour)
		if u:CanMove() then
			local utype = game:GetTypeByName("ebasefactory")
			if u:CanBuild(utype) then
				table.insert(b,MissingFactoryBehaviour)
			end
			utype = game:GetTypeByName("elightturret2")
			if u:CanBuild(utype) then
				table.insert(b,EngineerTurretBehaviour)
			end
		end
	else
		if controlPoints == "disabled" then
			if IsAttacker(unit) then
				table.insert(b,AttackerBehaviour)
			end
		else
			if IsAttacker(unit) then
				table.insert(b,AttackerBehaviour)
			end
			if IsCapturer(unit) then
				table.insert(b,CapturerBehaviour)
			end
		end
	end
	
	return b
end
