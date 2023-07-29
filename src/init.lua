OnInit.trig(function()
    initGlobals() -- Init custom globals vars

    abilityExecutionTrigger() -- Trigger that process all custom abilitys code

    -- Story triggers
    showTankTrig()
    startTankWhenHittedTrig()

    print("OnInit.trig initialized")
end)
