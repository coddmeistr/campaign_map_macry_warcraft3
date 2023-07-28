do
	local DELAY             = 1
	local DAMAGE            = 100
	local EFFECT_CAST       = 'Abilities/Spells/Human/MassTeleport/MassTeleportCaster.mdl'
	local EFFECT_LIGHTNING  = 'Effect/Spell/Lightning.mdx'
	local GROUP             = CreateGroup()
	
	ABILITY[FourCC('A000')] = {
		EFFECT = function()

			local caster  = GetTriggerUnit()
			local ability = GetSpellAbility()
			local level   = GetUnitAbilityLevel(caster, GetSpellAbilityId())
			local x, y    = GetSpellTargetX(), GetSpellTargetY()
			local radius  = BlzGetAbilityRealLevelField(ability, ABILITY_RLF_AREA_OF_EFFECT, level - 1)
			
			DestroyEffect(AddSpecialEffect(EFFECT_CAST, x, y))	
			
			TimerStart(CreateTimer(), DELAY, false, function()
				DestroyEffect(AddSpecialEffect(EFFECT_LIGHTNING, x, y))
				GroupEnumUnitsInRange(GROUP, x, y, radius + 128)
				
				for index = BlzGroupGetSize(GROUP) - 1, 0, -1 do
					local target = BlzGroupUnitAt(GROUP, index)
					if IsUnitAliveBJ(target) and IsUnitInRangeXY(target, x, y, radius) and not IsUnitType(target, UNIT_TYPE_FLYING) then
						UnitDamageTarget(caster, target, DAMAGE * level, false, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
					end
				end
				GroupClear(GROUP)
				
				DestroyTimer(GetExpiredTimer())
			end)
		end
	}
end