function setUnitXY(u, x, y)
    SetUnitX(u, x)
    SetUnitY(u, y)
end

function moveUnit(u, dist, angle)
    SetUnitX(u, GetUnitX(u) + dist * Cos(angle))
    SetUnitY(u, GetUnitY(u) + dist * Sin(angle))
end

function moveUnitToPointSpeed(u, x, y, speed, makePause, timerTick)

    if  not (u and  x and  y and speed) then
        print("Error: MoveUnitToPointSpeed")
        return
    end
    timerTick = timerTick or 0.04
    makePause = makePause or false
    
    SetUnitPathing(u, false)
    if makePause then PauseUnit(u, true) end
    TimerStart(CreateTimer(), timerTick, true, function()
        if IsUnitDeadBJ(u) then 
            DestroyTimer(GetExpiredTimer())
            if makePause then PauseUnit(u, false) end
            SetUnitPathing(u, true)
            return
        end
        local distanceLeft = distanceXY(GetUnitX(u), GetUnitY(u), x, y)
        local angle = angleXY(GetUnitX(u), GetUnitY(u), x, y)
        local moveDist = math.min(distanceLeft, speed)
        moveUnit(u, moveDist, angle)
        if (distanceLeft <= speed) then
            DestroyTimer(GetExpiredTimer())
            if makePause then PauseUnit(u, false) end
            SetUnitPathing(u, true)
        end
    end)

end
