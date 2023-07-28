
function startTankWhenHittedTrig()

    local trig = CreateTrigger()
    
    TriggerRegisterUnitEvent(trig, gg_unit_hmtt_0012, EVENT_UNIT_DAMAGED)
    
    TriggerAddAction(trig, function()
        -- TODO action
        print('worked')
    end)
end