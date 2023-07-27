-- Counts handlers and shows it in frame
--[[function showHandlers()
    TimerStart(CreateTimer(), 0, false, function()
        DestroyTimer(GetExpiredTimer())
        
        local gameUi = BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0)
        local menu = BlzCreateFrame('LoadingPlayerSlot', gameUi, 0, 0)
        BlzFrameSetSize(menu, .16, .03)
        FRAMEPOINT_BOTTOM = ConvertFramePointType(7);
        BlzFrameSetPoint(menu, FRAMEPOINT_BOTTOM, gameUi,
                              FRAMEPOINT_BOTTOM, 0, 0.16)

        local left = BlzGetFrameByName('LoadingPlayerSlotName', 0)
        local right = BlzGetFrameByName('LoadingPlayerSlotRace', 0)

        local seconds = 0
        local period = .25

        TimerStart(CreateTimer(), period, true, function()
            seconds = seconds + period;

            -- Handlers counter, rewritten from Jass
            local i = 0
            local id
            local P = {}
            local result = 0
            while i <= 50 do
                i = i + 1
                P[i] = Location(0,0)
                id = GetHandleId(P[i])
                result = result+(id-0x100000)
            end
            result = result/i-i/2
        
            while i > 1 do
                RemoveLocation(P[i])
                P[i] = 0
                i = i - 1
            end
            --call LeaderboardSetItemValue(HB,0,R2I(result))

            BlzFrameSetText(left, tostring(result))
            BlzFrameSetText(right, tostring(math.floor(seconds)))

            result = 0
            P = {}
            i = 0
        end)
    end)
end]]
