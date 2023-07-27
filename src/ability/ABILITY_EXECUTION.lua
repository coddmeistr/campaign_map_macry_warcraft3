ABILITY = {}
function abilityExecutionTrigger()
	local EventChannelId = GetHandleId(EVENT_PLAYER_UNIT_SPELL_CHANNEL)
	local EventCastId    = GetHandleId(EVENT_PLAYER_UNIT_SPELL_CAST)
	local EventEffectId  = GetHandleId(EVENT_PLAYER_UNIT_SPELL_EFFECT)
	local EventEndCastId = GetHandleId(EVENT_PLAYER_UNIT_SPELL_ENDCAST)
	local EventFinishId  = GetHandleId(EVENT_PLAYER_UNIT_SPELL_FINISH)
	
	local AbilityTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerUnitEvent(AbilityTrigger, Player(i), EVENT_PLAYER_UNIT_SPELL_CHANNEL)
		TriggerRegisterPlayerUnitEvent(AbilityTrigger, Player(i), EVENT_PLAYER_UNIT_SPELL_CAST)
		TriggerRegisterPlayerUnitEvent(AbilityTrigger, Player(i), EVENT_PLAYER_UNIT_SPELL_EFFECT)
		TriggerRegisterPlayerUnitEvent(AbilityTrigger, Player(i), EVENT_PLAYER_UNIT_SPELL_ENDCAST)
		TriggerRegisterPlayerUnitEvent(AbilityTrigger, Player(i), EVENT_PLAYER_UNIT_SPELL_FINISH)
	end
	
	local ABILITYS = ABILITY ---@type table
	TriggerAddAction(AbilityTrigger, function()
		local eventId = GetHandleId(GetTriggerEventId())
		local ability = ABILITYS[GetSpellAbilityId()]
		
		if ability ~= nil then
			if eventId == EventChannelId and ability.CHANNEL ~= nil then ability.CHANNEL()
			elseif eventId == EventCastId and ability.CAST ~= nil then ability.CAST()
			elseif eventId == EventEffectId and ability.EFFECT ~= nil then ability.EFFECT()
			elseif eventId == EventEndCastId and ability.ENDCAST ~= nil then ability.ENDCAST()
			elseif eventId == EventFinishId and ability.FINISH ~= nil then ability.FINISH()
			end
		end
	end)
end