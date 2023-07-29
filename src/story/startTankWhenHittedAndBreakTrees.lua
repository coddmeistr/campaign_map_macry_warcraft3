function startTankWhenHittedTrig()

    local trig = CreateTrigger()

    TriggerRegisterUnitEvent(trig, Tank, EVENT_UNIT_DAMAGED)

    TriggerAddAction(trig, function()

        DisableTrigger(GetTriggeringTrigger())
        local u = GetTriggerUnit()

        -- TODO Voices, Messages and marking stuff

        --Moving tank to the gg_rct_rocksBrokenByTank TODO Acceleration and effects
        moveUnitToPointSpeed(u, GetRectCenterX(RectTankRocks),
                             GetRectCenterY(RectTankRocks), 4, true,
                             0.01)

        -- Triggers that process events
        local breakTreesTrig = CreateTrigger()
        TriggerRegisterEnterRectSimple(breakTreesTrig, RectTankTrees)
        TriggerAddAction(breakTreesTrig, function()
            if GetEnteringUnit() ~= u then return end

            EnumDestructablesInRect(RectTankTrees, nil, function()
                KillDestructable(GetEnumDestructable())
            end)

            DisableTrigger(GetTriggeringTrigger())
            DestroyTrigger(GetTriggeringTrigger())
        end)

        local breakRocksTrig = CreateTrigger()
        TriggerRegisterEnterRectSimple(breakRocksTrig, RectTankRocks)
        TriggerAddAction(breakRocksTrig, function()
            if GetEnteringUnit() ~= u then return end

            TriggerSleepAction(0.2)
            -- Destroy rocks
            EnumDestructablesInRect(RectTankRocks, nil, function()
                KillDestructable(GetEnumDestructable())
            end)
            -- Kill tank
            KillUnit(u)

            DisableTrigger(GetTriggeringTrigger())
            DestroyTrigger(GetTriggeringTrigger())
        end)

    end)
end
