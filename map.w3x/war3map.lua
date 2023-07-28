udg_u = nil
gg_cam_begin = nil
gg_trg_globunits = nil
gg_trg_camera = nil
gg_unit_hfoo_0060 = nil
gg_unit_H000_0024 = nil
gg_unit_hmtt_0012 = nil
function InitGlobals()
end

function CreateUnitsForPlayer0()
local p = Player(0)
local u
local unitID
local t
local life

gg_unit_hfoo_0060 = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -2999.6, -2092.3, 151.012, FourCC("hfoo"))
u = BlzCreateUnitWithSkin(p, FourCC("Hpal"), -2839.7, -2029.6, 135.531, FourCC("Hpal"))
end

function CreateUnitsForPlayer1()
local p = Player(1)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 4499.7, 6297.6, 260.494, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 4421.0, 5949.3, 95.705, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 5437.7, 6394.5, 176.325, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 5586.8, 6334.2, 9.547, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 5758.9, 6229.8, 311.395, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 6003.7, 6016.4, 201.748, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 6088.4, 5895.7, 350.486, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 6150.3, 5619.6, 2.604, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 5138.1, 5158.2, 329.732, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 5005.3, 5131.8, 258.198, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 4637.9, 5232.0, 233.280, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 6087.9, 5245.6, 256.648, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 4711.3, 6403.9, 313.790, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 4955.1, 6441.5, 121.425, FourCC("hpea"))
u = BlzCreateUnitWithSkin(p, FourCC("hpea"), 5373.9, 6441.5, 62.844, FourCC("hpea"))
end

function CreateNeutralHostile()
local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
local u
local unitID
local t
local life

u = BlzCreateUnitWithSkin(p, FourCC("nwlt"), -1400.3, -1485.1, 181.756, FourCC("nwlt"))
u = BlzCreateUnitWithSkin(p, FourCC("nwlt"), -1422.5, -1609.1, 180.621, FourCC("nwlt"))
end

function CreateNeutralPassive()
local p = Player(PLAYER_NEUTRAL_PASSIVE)
local u
local unitID
local t
local life

gg_unit_hmtt_0012 = BlzCreateUnitWithSkin(p, FourCC("hmtt"), -1143.4, -310.1, 35.550, FourCC("hmtt"))
life = GetUnitState(gg_unit_hmtt_0012, UNIT_STATE_LIFE)
SetUnitState(gg_unit_hmtt_0012, UNIT_STATE_LIFE, 0.10 * life)
gg_unit_H000_0024 = BlzCreateUnitWithSkin(p, FourCC("H000"), 6157.8, 4625.2, 177.480, FourCC("H000"))
SetHeroLevel(gg_unit_H000_0024, 10, false)
u = BlzCreateUnitWithSkin(p, FourCC("H001"), 6323.1, 4540.4, 295.446, FourCC("H001"))
u = BlzCreateUnitWithSkin(p, FourCC("h002"), 6386.9, 4329.4, 292.718, FourCC("h002"))
u = BlzCreateUnitWithSkin(p, FourCC("h003"), 6760.7, 4564.9, 73.358, FourCC("h003"))
u = BlzCreateUnitWithSkin(p, FourCC("h004"), 6531.4, 4705.0, 336.324, FourCC("h004"))
u = BlzCreateUnitWithSkin(p, FourCC("nzep"), 6115.8, 4483.5, 71.970, FourCC("nzep"))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
CreateUnitsForPlayer0()
CreateUnitsForPlayer1()
end

function CreateAllUnits()
CreatePlayerBuildings()
CreateNeutralHostile()
CreateNeutralPassive()
CreatePlayerUnits()
end

function CreateCameras()
gg_cam_begin = CreateCameraSetup()
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_ROTATION, 94.5, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_ANGLE_OF_ATTACK, 306.9, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_TARGET_DISTANCE, 1693.4, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_ROLL, 0.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_FARZ, 10000.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_NEARZ, 16.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
CameraSetupSetField(gg_cam_begin, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
CameraSetupSetDestPosition(gg_cam_begin, -2455.6, -2021.5, 0.0)
end

--CUSTOM_CODE
if Debug then Debug.beginFile "Total Initialization" end
--[[——————————————————————————————————————————————————————
    Total Initialization version 5.3
    Created by: Bribe
    Contributors: Eikonium, HerlySQR, Tasyen, Luashine, Forsakn
    Inspiration: Almia, ScorpioT1000, Troll-Brain
————————————————————————————————————————————————————————————]]

---Calls the user's initialization function during the map's loading process. The first argument should either be the init function,
---or it should be the string to give the initializer a name (works similarly to a module name/identically to a vJass library name).
---
---To use requirements, call `Require.strict "LibraryName"` or `Require.optional "LibraryName"`. Alternatively, the OnInit callback
---function can take the `Require` table as a single parameter: `OnInit(function(import) import.strict "ThisIsTheSameAsRequire" end)`.
---
-- - `OnInit.global` or just `OnInit` is called after InitGlobals and is the standard point to initialize.
-- - `OnInit.trig` is called after InitCustomTriggers, and is useful for removing hooks that should only apply to GUI events.
-- - `OnInit.map` is the last point in initialization before the loading screen is completed.
-- - `OnInit.final` occurs immediately after the loading screen has disappeared, and the game has started.
---@class OnInit
--
-- Simple Initialization without declaring a library name:
---@overload fun(initCallback: Initializer.Callback)
--
-- A way to yield your library to allow other libraries in the same initialization sequence to load, then resume once they have loaded.
---@overload fun(customInitializerName: string)
--
OnInit = {}

-- `Require` will yield the calling coroutine until the requirement exists. This can be used on named `OnInit` resources, or on normal
-- global variables. Due to the way Sumneko's syntax highlighter works, the return value will only be linted for defined @class objects.
--
-- `Require` only works from within a yieldable coroutine during the map loading process. It is intended to be called from within an
-- `OnInit` callback function.
--
-- Syntax for strict requirements that throw errors if not found: `Require.strict "SomeLibrary"`}
--
---@field strict Requirement
Require = {}
do
    local library = {} -- You can change this to false if you don't use `Require` nor the `OnInit.library` API.

    -- CONFIGURABLE LEGACY API FUNCTION:
    local function assignLegacyAPI(_ENV, OnInit)
        local _ENV = _ENV -- Needed to fix a bug in the Lua Language Server. Detailed here: https://github.com/sumneko/lua-language-server/issues/1715
        OnGlobalInit = OnInit;
        OnTrigInit = OnInit.trig;
        OnMapInit = OnInit.map;
        OnGameStart = OnInit.final -- Global Initialization Lite API
        -- OnMainInit = OnInit.main; OnLibraryInit = OnInit.library; OnGameInit = OnInit.final                            --short-lived experimental API
        -- onGlobalInit = OnInit; onTriggerInit = OnInit.trig; onInitialization = OnInit.map; onGameStart = OnInit.final  --original Global Initialization API
        -- OnTriggerInit = OnInit.trig; OnInitialization = OnInit.map                                                     --Forsakn's Ordered Indices API
    end
    -- END CONFIGURABLES

    local _G, rawget, insert = _G, rawget, table.insert

    local initFuncQueue = {}
    local function runInitializers(name, continue)
        if initFuncQueue[name] then
            for _, func in ipairs(initFuncQueue[name]) do
                coroutine.wrap(func)(Require)
            end
            initFuncQueue[name] = nil
        end
        if library then library:resume() end
        if continue then continue() end
    end
    do
        local function hook(hookName, continue)
            local hookedFunc = rawget(_G, hookName)
            if hookedFunc then
                rawset(_G, hookName, function()
                    hookedFunc()
                    runInitializers(hookName, continue)
                end)
            else
                runInitializers(hookName, continue)
            end
        end
        hook("InitGlobals", function()
            hook("InitCustomTriggers",
                 function() hook("RunInitializationTriggers") end)
        end)
        hook("MarkGameStarted", function()
            if library then
                for _, func in ipairs(library.queuedInitializerList) do
                    func(nil, true) -- run errors for missing requirements.
                end
                for _, func in pairs(library.yieldedModuleMatrix) do
                    func(true) -- run errors for modules that aren't required.
                end
            end
            OnInit = nil;
            Require = nil ---@diagnostic disable-line
        end)
    end
    local function addUserFunc(initName, libraryName, func, debugLineNum,
                               incDebugLevel)
        if not func then
            func = libraryName
        else
            assert(type(libraryName) == "string")
            if debugLineNum and Debug then
                Debug.beginFile(libraryName, incDebugLevel and 7 or 6)
                Debug.data.sourceMap[#Debug.data.sourceMap].lastLine =
                    debugLineNum
            end
            if library then func = library:create(libraryName, func) end
        end
        assert(type(func) == "function") ---@cast func Initializer.Callback

        initFuncQueue[initName] = initFuncQueue[initName] or {}
        insert(initFuncQueue[initName], func)

        if initName == "root" or initName == "module" then
            runInitializers(initName)
        end
    end

    local function createInit(name)
        return function(libraryNameOrInitFunc, userInitFunc, debugLineNum,
                        incDebugLevel) ---@diagnostic disable-line: redundant-parameter
            addUserFunc(name, libraryNameOrInitFunc, userInitFunc, debugLineNum,
                        incDebugLevel)
        end
    end
    OnInit.global = createInit "InitGlobals" -- Called after InitGlobals, and is the standard point to initialize.
    OnInit.trig = createInit "InitCustomTriggers" -- Called after InitCustomTriggers, and is useful for removing hooks that should only apply to GUI events.   
    OnInit.map = createInit "RunInitializationTriggers" -- Called last in the script's loading screen sequence. Runs after the GUI "Map Initialization" events have run.
    OnInit.final = createInit "MarkGameStarted" -- Called immediately after the loading screen has disappeared, and the game has started.

    setmetatable(OnInit, {
        __call = function(self, libraryNameOrInitFunc, userInitFunc,
                          debugLineNum)
            if userInitFunc or type(libraryNameOrInitFunc) == "function" then
                self.global(libraryNameOrInitFunc, userInitFunc, debugLineNum,
                            true) -- Calling OnInit directly defaults to OnInit.global (AKA OnGlobalInit)
            elseif library then
                library:declare(libraryNameOrInitFunc) -- API handler for OnInit "Custom initializer"
            else
                error("Bad OnInit args: " .. tostring(libraryNameOrInitFunc) ..
                          ", " .. tostring(userInitFunc))
            end
        end
    })

    do -- if you don't need the initializers for "root", "config" and "main", you can delete this do...end block.
        local gmt = getmetatable(_G) or getmetatable(setmetatable(_G, {}))
        local rawIndex = gmt.__newindex or rawset
        local newIndex
        function newIndex(g, key, val)
            if key == "main" or key == "config" then
                if key == "main" then runInitializers "root" end
                rawIndex(g, key, function()
                    if key == "config" then
                        val()
                    elseif gmt.__newindex == newIndex then
                        gmt.__newindex = rawIndex -- restore the original __newindex if no further hooks on __newindex exist.
                    end
                    runInitializers(key)
                    if key == "main" then val() end
                end)
            else
                rawIndex(g, key, val)
            end
        end
        gmt.__newindex = newIndex
        OnInit.root = createInit "root" -- Runs immediately during the Lua root, but is yieldable (allowing requirements) and pcalled.
        OnInit.config = createInit "config" -- Runs when "config" is called. Credit to @Luashine: https://www.hiveworkshop.com/threads/inject-main-config-from-we-trigger-code-like-jasshelper.338201/
        OnInit.main = createInit "main" -- Runs when "main" is called. Idea from @Tasyen: https://www.hiveworkshop.com/threads/global-initialization.317099/post-3374063
    end
    if library then
        library.queuedInitializerList = {}
        library.customDeclarationList = {}
        library.yieldedModuleMatrix = {}
        library.moduleValueMatrix = {}

        function library:pack(name, ...)
            self.moduleValueMatrix[name] = table.pack(...)
        end

        function library:resume()
            if self.queuedInitializerList[1] then
                local continue, tempQueue, forceOptional

                ::initLibraries::
                repeat
                    continue = false
                    self.queuedInitializerList, tempQueue = {},
                                                            self.queuedInitializerList

                    for _, func in ipairs(tempQueue) do
                        if func(forceOptional) then
                            continue = true -- Something was initialized; therefore further systems might be able to initialize.
                        else
                            insert(self.queuedInitializerList, func) -- If the queued initializer returns false, that means its requirement wasn't met, so we re-queue it.
                        end
                    end
                until not continue or not self.queuedInitializerList[1]

                if self.customDeclarationList[1] then
                    self.customDeclarationList, tempQueue = {},
                                                            self.customDeclarationList
                    for _, func in ipairs(tempQueue) do
                        func() -- unfreeze any custom initializers.
                    end
                elseif not forceOptional then
                    forceOptional = true
                else
                    return
                end
                goto initLibraries
            end
        end
        local function declareName(name, initialValue)
            assert(type(name) == "string")
            assert(library.moduleValueMatrix[name] == nil)
            library.moduleValueMatrix[name] = initialValue and {true, n = 1}
        end
        function library:create(name, userFunc)
            assert(type(userFunc) == "function")
            declareName(name, false) -- declare itself as a non-loaded library.
            return function()
                self:pack(name, userFunc(Require)) -- pack return values to allow multiple values to be communicated.
                if self.moduleValueMatrix[name].n == 0 then
                    self:pack(name, true) -- No values were returned; therefore simply package the value as "true"
                end
            end
        end
        ---@async
        function library:declare(name)
            declareName(name, true) -- declare itself as a loaded library.
            local co = coroutine.running()
            insert(self.customDeclarationList,
                   function() coroutine.resume(co) end)
            coroutine.yield() -- yields the calling function until after all currently-queued initializers have run.
        end
        local processRequirement
        ---@async
        function processRequirement(optional, requirement, explicitSource)
            if type(optional) == "string" then
                optional, requirement, explicitSource = true, optional,
                                                        requirement -- optional requirement (processed by the __index method)
            else
                optional = false -- strict requirement (processed by the __call method)
            end
            local source = explicitSource or _G

            assert(type(source) == "table")
            assert(type(requirement) == "string")

            ::reindex::
            local subSource, subReq = requirement:match("([\x25w_]+)\x25.(.+)") -- Check if user is requiring using "table.property" syntax
            if subSource and subReq then
                source, requirement = processRequirement(subSource, source),
                                      subReq -- If the container is nil, yield until it is not.
                if type(source) == "table" then
                    explicitSource = source
                    goto reindex -- check for further nested properties ("table.property.subProperty.anyOthers").
                else
                    return -- The source table for the requirement wasn't found, so disregard the rest (this only happens with optional requirements).
                end
            end
            local function loadRequirement(unpack)
                local package = rawget(source, requirement) -- check if the requirement exists in the host table.
                if not package and not explicitSource then
                    if library.yieldedModuleMatrix[requirement] then
                        library.yieldedModuleMatrix[requirement]() -- load module if it exists
                    end
                    package = library.moduleValueMatrix[requirement] -- retrieve the return value from the module.
                    if unpack and type(package) == "table" then
                        return table.unpack(package, 1, package.n) -- using unpack allows any number of values to be returned by the required library.
                    end
                end
                return package
            end
            local co, loaded
            local function checkReqs(forceOptional, printErrors)
                if not loaded then
                    loaded = loadRequirement()
                    loaded = loaded or optional and
                                 (loaded == nil or forceOptional)
                    if loaded then
                        if co then coroutine.resume(co) end -- resume only if it was yielded in the first place.
                        return loaded
                    elseif printErrors then
                        coroutine.resume(co, true)
                    end
                end
            end
            if not checkReqs() then -- only yield if the requirement doesn't already exist.
                co = coroutine.running()
                insert(library.queuedInitializerList, checkReqs)
                if coroutine.yield() then
                    error("Missing Requirement: " .. requirement) -- handle the error within the user's function to get an accurate stack trace via the "try" function.
                end
            end
            return loadRequirement(true)
        end
        function Require.strict(name, explicitSource)
            return processRequirement(nil, name, explicitSource)
        end

        setmetatable(Require, {
            __call = processRequirement,
            __index = function() return processRequirement end
        })

        local module = createInit "module"

        OnInit.module = function(name, func, debugLineNum)
            if func then
                local userFunc = func
                func = function(require)
                    local co = coroutine.running()
                    library.yieldedModuleMatrix[name] = function(failure)
                        library.yieldedModuleMatrix[name] = nil
                        coroutine.resume(co, failure)
                    end
                    print("yielding: " .. name)
                    if coroutine.yield() then
                        error("Module declared but not required: " .. name)
                    end
                    print(name .. " has resumed.")
                    return userFunc(require)
                end
            end
            module(name, func, debugLineNum)
        end
    end

    if assignLegacyAPI then -- This block handles legacy code.
        ---Allows packaging multiple requirements into one table and queues the initialization for later.
        ---@deprecated
        function OnInit.library(initList, userFunc)
            local typeOf = type(initList)

            assert(typeOf == "table" or typeOf == "string")
            assert(type(userFunc) == "function")

            local function caller(use)
                if typeOf == "string" then
                    use(initList)
                else
                    for _, initName in ipairs(initList) do
                        use(initName)
                    end
                    if initList.optional then
                        for _, initName in ipairs(initList.optional) do
                            use.lazily(initName)
                        end
                    end
                end
            end
            if initList.name then
                OnInit(initList.name, caller)
            else
                OnInit(caller)
            end
        end

        local legacyTable = {}

        assignLegacyAPI(legacyTable, OnInit)

        for key, func in pairs(legacyTable) do rawset(_G, key, func) end

        OnInit.final(function()
            for key in pairs(legacyTable) do rawset(_G, key, nil) end
        end)
    end
end
if Debug then Debug.endFile() end


local realTimerStart = TimerStart
TimerStart = function(timer, duration, repeating, callback)
	local pcallback = function()
		if callback == nil then return end
		local status, err = pcall(callback)
		if not status then
			print(err)
		end
	end
	realTimerStart(timer, duration, repeating, pcallback)
end

local realTriggerAddAction = TriggerAddAction
TriggerAddAction = function(trig, callback)
	local pcallback = function()
		local status, err = pcall(callback)
		if not status then
			print(err)
		end
	end
	realTriggerAddAction(trig, pcallback)
end
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

-- Get the wc3 type string equivalent (nil == null, float == real, int == integer ...)
function wc3type(ptr)
    local typ = type(ptr)
    if typ == "userdata" then
        typ = string.match(tostring(ptr),"([^%%s]+):")
        if typ == nil then
            typ = string.match(tostring(ptr),"([^%%s]+)")
        end
    elseif typ == "number" then
        if string.match(tostring(ptr),"([^%%s]+).") then return "real" else return "integer" end
    end
    return typ
end

-- Check if given value integer or not
function isInt(num)
    if math.type(num) == nil then return false end
    return true
end
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

function startTankWhenHittedTrig()

    local trig = CreateTrigger()
    
    TriggerRegisterUnitEvent(trig, gg_unit_hmtt_0012, EVENT_UNIT_DAMAGED)
    
    TriggerAddAction(trig, function()
        -- TODO action
        print('worked')
    end)
end
OnInit.trig(function()
    abilityExecutionTrigger() -- Trigger that process all custom abilitys code

    -- Story triggers
    startTankWhenHittedTrig()

    print("OnInit.trig initialized")
end)

--CUSTOM_CODE
function Trig_globunits_Actions()
udg_u = gg_unit_hmtt_0012
udg_u = gg_unit_hfoo_0060
udg_u = gg_unit_H000_0024
end

function InitTrig_globunits()
gg_trg_globunits = CreateTrigger()
TriggerAddAction(gg_trg_globunits, Trig_globunits_Actions)
end

function Trig_camera_Actions()
CameraSetupApplyForPlayer(true, gg_cam_begin, Player(0), 0)
end

function InitTrig_camera()
gg_trg_camera = CreateTrigger()
TriggerAddAction(gg_trg_camera, Trig_camera_Actions)
end

function InitCustomTriggers()
InitTrig_globunits()
InitTrig_camera()
end

function RunInitializationTriggers()
ConditionalTriggerExecute(gg_trg_globunits)
ConditionalTriggerExecute(gg_trg_camera)
end

function InitCustomPlayerSlots()
SetPlayerStartLocation(Player(0), 0)
SetPlayerColor(Player(0), ConvertPlayerColor(0))
SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
SetPlayerRaceSelectable(Player(0), true)
SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
SetPlayerTeam(Player(0), 0)
end

function main()
local we

SetCameraBounds(-7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
SetDayNightModels("Environment\\DNC\\DNCDalaran\\DNCDalaranTerrain\\DNCDalaranTerrain.mdl", "Environment\\DNC\\DNCDalaran\\DNCDalaranUnit\\DNCDalaranUnit.mdl")
SetTerrainFogEx(0, 3000.0, 5000.0, 100.000, 0.000, 0.000, 0.000)
we = AddWeatherEffect(Rect(-8192.0, -8192.0, 8192.0, 8192.0), FourCC("RLhr"))
EnableWeatherEffect(we, true)
NewSoundEnvironment("Default")
SetAmbientDaySound("LordaeronSummerDay")
SetAmbientNightSound("LordaeronSummerNight")
SetMapMusic("Music", true, 0)
CreateCameras()
CreateAllUnits()
InitBlizzard()
InitGlobals()
InitCustomTriggers()
RunInitializationTriggers()
end

function config()
SetMapName("TRIGSTR_001")
SetMapDescription("TRIGSTR_003")
SetPlayers(1)
SetTeams(1)
SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
DefineStartLocation(0, -2880.0, -2112.0)
InitCustomPlayerSlots()
SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
InitGenericPlayerSlots()
end

