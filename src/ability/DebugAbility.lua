do
	local GROUP             = CreateGroup()
	
    -- Ability for debugging other mechanics or functions
	ABILITY[FourCC('A002')] = {
		EFFECT = function()

			local caster  = GetTriggerUnit()
			local ability = GetSpellAbility()
			local level   = GetUnitAbilityLevel(caster, GetSpellAbilityId())
			local x, y    = GetSpellTargetX(), GetSpellTargetY()
            local target = GetSpellTargetUnit()
			local radius  = BlzGetAbilityRealLevelField(ability, ABILITY_RLF_AREA_OF_EFFECT, level - 1)
			
            -- Debug ability actions (whatever)
            moveUnitToPointSpeed(caster, x, y, 20, false)

		end
	}
end