---@diagnostic disable: undefined-global, lowercase-global

scenario_player = gui.get_tab("YimScenarios")
 
local ped_scenarios = {
    {scenario = "WORLD_HUMAN_STAND_MOBILE", name = "Browse Phone"},
    {scenario = "WORLD_HUMAN_CHEERING", name = "Clap"},
    {scenario = "PROP_HUMAN_BBQ", name = "Cook On BBQ"},
    {scenario = "WORLD_HUMAN_CONST_DRILL", name = "Construction: Drill"},
    {scenario = "WORLD_HUMAN_HAMMERING", name = "Construction: Hammer"},
    {scenario = "WORLD_HUMAN_WELDING", name = "Construction: Welding Torch"},
    {scenario = "WORLD_HUMAN_INSPECT_CROUCH", name = "Crouch"},
    {scenario = "WORLD_HUMAN_DRINKING", name = "Drink Beer"},
    {scenario = "WORLD_HUMAN_DRUG_DEALER", name = "Drug Dealer Smoking"},
    {scenario = "WORLD_HUMAN_DRUG_DEALER_HARD", name = "Drug Dealer Tough"},
    {scenario = "PROP_HUMAN_BUM_BIN", name = "Dumpster Dive"},
    {scenario = "WORLD_HUMAN_GARDENER_PLANT", name = "Field Planting"},
    {scenario = "WORLD_HUMAN_DRUG_FIELD_WORKERS_RAKE", name = "Field Raking"},
    {scenario = "WORLD_HUMAN_DRUG_FIELD_WORKERS_WEEDING", name = "Field Weeding"},
    {scenario = "WORLD_HUMAN_MOBILE_FILM_SHOCKING", name = "Film Shocking Event"},
    {scenario = "WORLD_HUMAN_STAND_FISHING", name = "Go Fishing"},
    {scenario = "WORLD_HUMAN_HANG_OUT_STREET", name = "Hangout (conversate)"},
    {scenario = "WORLD_HUMAN_STRIP_WATCH_STAND", name = "Hangout (dance)"},
    {scenario = "WORLD_HUMAN_HIKER", name = "Hiker"},
    {scenario = "WORLD_HUMAN_BUM_FREEWAY", name = "HOBO Begging"},
    {scenario = "PROP_HUMAN_BUM_SHOPPING_CART", name = "HOBO Leaning"},
    {scenario = "WORLD_HUMAN_BUM_SLUMPED", name = "HOBO Sleeping"},
    {scenario = "WORLD_HUMAN_BUM_STANDING", name = " HOBO Standing"},
    {scenario = "WORLD_HUMAN_BUM_WASH", name = "HOBO Washing"},
    {scenario = "WORLD_HUMAN_CLIPBOARD", name = "Hold Clipboard"},
    {scenario = "WORLD_HUMAN_HUMAN_STATUE", name = "Human Statue"},
    {scenario = "WORLD_HUMAN_INSPECT_STAND", name = "Inspect"},
    {scenario = "WORLD_HUMAN_JANITOR", name = "Janitor"},
    {scenario = "WORLD_HUMAN_JOG", name = "Jog"},
    {scenario = "PROP_HUMAN_SEAT_SUNLOUNGER", name = "Lay On Sunlounger"},
    {scenario = "WORLD_HUMAN_GARDENER_LEAF_BLOWER", name = "Leaf Blower"},
    {scenario = "WORLD_HUMAN_LEANING", name = "Lean 01"},
    {scenario = "WORLD_HUMAN_LEANING_CASINO_TERRACE", name = "Lean 02"},
    {scenario = "WORLD_HUMAN_TOURIST_MAP", name = "Look At Tourist Map"},
    {scenario = "WORLD_HUMAN_BINOCULARS", name = "Look Through Binoculars"},
    {scenario = "WORLD_HUMAN_MAID_CLEAN", name = "Maid"},
    {scenario = "WORLD_HUMAN_VEHICLE_MECHANIC", name = "Mechanic"},
    {scenario = "WORLD_HUMAN_PAPARAZZI", name = "Paparazzi"},
    {scenario = "WORLD_HUMAN_CAR_PARK_ATTENDANT", name = "Park Attendant"},
    {scenario = "WORLD_HUMAN_PARTYING", name = "Party"},
    {scenario = "PROP_HUMAN_PARKING_METER", name = "Pay For Parking"},
    {scenario = "WORLD_HUMAN_PICNIC", name = "Picnic"},
    {scenario = "WORLD_HUMAN_GOLF_PLAYER", name = "Player: Golf"},
    {scenario = "WORLD_HUMAN_TENNIS_PLAYER", name = "Player: Tennis"},
    {scenario = "WORLD_HUMAN_COP_IDLES", name = "Police: Idle"},
    {scenario = "WORLD_HUMAN_DRUG_PROCESSORS_COKE", name = "Process Cocaine"},
    {scenario = "WORLD_HUMAN_DRUG_PROCESSORS_WEED", name = "Process Weed"},
    {scenario = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", name = "Prostitute: High-Class"},
    {scenario = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", name = "Prostitute: Low-Class"},
    {scenario = "WORLD_HUMAN_GUARD_PATROL", name = "Security Guard (check)"},
    {scenario = "WORLD_HUMAN_GUARD_STAND", name = "Security Guar (stand)"},
    {scenario = "WORLD_HUMAN_SECURITY_SHINE_TORCH", name = "Security Guar (torch)"},
    {scenario = "WORLD_HUMAN_SMOKING", name = "Smoke Cigarette"},
    {scenario = "WORLD_HUMAN_SMOKING_POT", name = "Smoke Weed"},
    {scenario = "PROP_HUMAN_SEAT_ARMCHAIR", name = "Sit On Armchair"},
    {scenario = "PROP_HUMAN_SEAT_BAR", name = "Sit On Barstool"},
    {scenario = "PROP_HUMAN_SEAT_BENCH", name = "Sit On Bench"},
    {scenario = "PROP_HUMAN_SEAT_BENCH_DRINK", name = "Sit On Bench/Drink"},
    {scenario = "PROP_HUMAN_SEAT_BENCH_DRINK_BEER", name = "Sit On Bench/Drink Beer"},
    {scenario = "PROP_HUMAN_SEAT_BENCH_FOOD", name = "Sit On Bench/Eat"},
    {scenario = "PROP_HUMAN_SEAT_CHAIR", name = "Sit On Chair"},
    {scenario = "PROP_HUMAN_SEAT_CHAIR_DRINK", name = "Sit On Chair/Drink"},
    {scenario = "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER", name = "Sit On Chair/Drink Beer"},
    {scenario = "PROP_HUMAN_SEAT_CHAIR_FOOD", name = "Sit On Chair/Eat"},
    {scenario = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT", name = "Sit On Chair Upright"},
    {scenario = "PROP_HUMAN_SEAT_DECKCHAIR", name = "Sit On Deckchair"},
    {scenario = "PROP_HUMAN_SEAT_DECKCHAIR_DRINK", name = "Sit On Deckchair/Drink"},
    {scenario = "WORLD_HUMAN_SEAT_LEDGE", name = "Sit On Ledge"},
    {scenario = "WORLD_HUMAN_SEAT_LEDGE_EATING", name = "Sit On Ledge/Eat"},
    {scenario = "WORLD_HUMAN_SEAT_STEPS", name = "Sit On Steps"},
    {scenario = "WORLD_HUMAN_SEAT_WALL", name = "Sit On Wall"},
    {scenario = "WORLD_HUMAN_SEAT_WALL_EATING", name = "Sit On Wall/Eat"},
    {scenario = "WORLD_HUMAN_STAND_IMPATIENT", name = "Stand Impatiently"},
    {scenario = "WORLD_HUMAN_STAND_FIRE", name = "Stand Near Fire"},
    {scenario = "WORLD_HUMAN_MUSICIAN", name = "Street Musician"},
    {scenario = "WORLD_HUMAN_SUNBATHE_BACK", name = "Sunbathe (lay on back)"},
    {scenario = "WORLD_HUMAN_SUNBATHE", name = "Sunbathe (lay on stomach)"},
    {scenario = "WORLD_HUMAN_TOURIST_MOBILE", name = "Take Photo"},
    {scenario = "PROP_HUMAN_ATM", name = "Use ATM"},
    {scenario = "WORLD_HUMAN_VALET", name = "Valet"},
    {scenario = "PROP_HUMAN_SEAT_BUS_STOP_WAIT", name = "Wait At Bus Stop"},
    {scenario = "PROP_HUMAN_SEAT_STRIP_WATCH", name = "Watch Stripper"},
    {scenario = "WORLD_HUMAN_WINDOW_SHOP_BROWSE", name = "Window Shop"},
    {scenario = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS", name = "Workout: Bench Press"},
    {scenario = "PROP_HUMAN_MUSCLE_CHIN_UPS", name = "Workout: Chin-ups"},
    {scenario = "WORLD_HUMAN_MUSCLE_FLEX", name = "Workout: Flex Muscles"},
    {scenario = "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS", name = "Workout: Freeweights"},
    {scenario = "WORLD_HUMAN_PUSH_UPS", name = "Workout: Push-ups"},
    {scenario = "WORLD_HUMAN_SIT_UPS", name = "Workout: Sit-ups"},
    {scenario = "WORLD_HUMAN_YOGA", name = "Workout: Yoga"},
}
 
local scenario_index = 1
local searchQuery = ""
local is_typing = false

script.register_looped("YimScenarios", function()
	if is_typing then
		PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
	end
end)

scenario_player:add_text("Search scenarios :")

scenario_player:add_imgui(function()
    searchQuery, used = ImGui.InputText("", searchQuery, 32)
    if ImGui.IsItemActive() then
		is_typing = true
	else
		is_typing = false
	end
    ImGui.PushItemWidth(250)
end)

local filteredScenarios = {}
local function updatefilteredScenarios()
    filteredScenarios = {}
    for _, scene in ipairs(ped_scenarios) do
        if string.find(string.lower(scene.name), string.lower(searchQuery)) then
            table.insert(filteredScenarios, scene)
        end
    end
end

local function displayFilteredList()
    updatefilteredScenarios()
    local scenarioNames = {}
    for _, scene in ipairs(filteredScenarios) do
        table.insert(scenarioNames, scene.name)
    end
    scenario_index, used = ImGui.ListBox(" ", scenario_index, scenarioNames, #filteredScenarios)
end

scenario_player:add_imgui(displayFilteredList)

scenario_player:add_separator()

scenario_player:add_imgui(function()
local data = filteredScenarios[scenario_index+1]
local ped = self.get_ped()
    if ImGui.Button("Play") then
        if data.name == "Cook On BBQ" then
            local coords = ENTITY.GET_ENTITY_COORDS(ped, false)
            local heading = ENTITY.GET_ENTITY_HEADING(ped)
            local forwardX = ENTITY.GET_ENTITY_FORWARD_X(ped)
            local forwardY = ENTITY.GET_ENTITY_FORWARD_Y(ped)
            script.run_in_fiber(function()
                while not STREAMING.HAS_MODEL_LOADED(286252949) do
                    STREAMING.REQUEST_MODEL(286252949)
                    coroutine.yield()
                end
                prop = OBJECT.CREATE_OBJECT(286252949, coords.x + (forwardX), coords.y + (forwardY), coords.z, true, true, false)
                ENTITY.SET_ENTITY_HEADING(prop, heading)
                OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(prop)
                STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(286252949)
		TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
		TASK.TASK_START_SCENARIO_IN_PLACE(ped, data.scenario, -1, true)
                is_playing_scenario = true
            end)
        else
            script.run_in_fiber(function()
	    	TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
	    	TASK.TASK_START_SCENARIO_IN_PLACE(ped, data.scenario, -1, true)
            	is_playing_scenario = true
            end)
        end
    end

    ImGui.SameLine()

    if ImGui.Button("Stop") then
        script.run_in_fiber(function()
            ENTITY.DELETE_ENTITY(prop)
	    TASK.CLEAR_PED_TASKS(ped)
            is_playing_scenario = false
	end)
    end
		
    event.register_handler(menu_event.ScriptsReloaded, function()
	ENTITY.DELETE_ENTITY(prop)
	TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
    end)
 
    event.register_handler(menu_event.MenuUnloaded, function()
	ENTITY.DELETE_ENTITY(prop)
	TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
    end)
		
end)
