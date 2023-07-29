
function showTankTrig()

    local trig = CreateTrigger()
    
    TriggerRegisterEnterRectSimple(trig, RectTankShow)
    
    TriggerAddAction(trig, function()

        local u = GetEnteringUnit()
        if GetOwningPlayer(u) ~= GetLocalPlayer() then return end
        DisableTrigger(GetTriggeringTrigger())

        -- Mark and Voices TODO Voices
        UnitShareVision(Tank, GetLocalPlayer(), true)
        PanCameraToTimedForPlayer(GetLocalPlayer(), GetUnitX(Tank), GetUnitY(Tank), 0.7)
        UnitAddIndicator(Tank, 255, 255, 255, 100)
        
    end)
end