scenarios_menu = gui.get_tab("YimScenarios")
 
local ped_scenarios = {
    "WORLD_HUMAN_BINOCULARS",
    "WORLD_HUMAN_BUM_FREEWAY",
    "WORLD_HUMAN_BUM_SLUMPED",
    "WORLD_HUMAN_BUM_STANDING",
    "WORLD_HUMAN_BUM_WASH",
    "WORLD_HUMAN_CAR_PARK_ATTENDANT",
    "WORLD_HUMAN_CHEERING",
    "WORLD_HUMAN_CLIPBOARD",
    "WORLD_HUMAN_CLIPBOARD_FACILITY",
    "WORLD_HUMAN_CONST_DRILL",
    "WORLD_HUMAN_COP_IDLES",
    "WORLD_HUMAN_DRINKING",
    "WORLD_HUMAN_DRINKING_FACILITY",
    "WORLD_HUMAN_DRINKING_CASINO_TERRACE",
    "WORLD_HUMAN_DRUG_DEALER",
    "WORLD_HUMAN_DRUG_DEALER_HARD",
    "WORLD_HUMAN_DRUG_FIELD_WORKERS_RAKE",
    "WORLD_HUMAN_DRUG_FIELD_WORKERS_WEEDING",
    "WORLD_HUMAN_DRUG_PROCESSORS_COKE",
    "WORLD_HUMAN_DRUG_PROCESSORS_WEED",
    "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
    "WORLD_HUMAN_GARDENER_LEAF_BLOWER",
    "WORLD_HUMAN_GARDENER_PLANT",
    "WORLD_HUMAN_GOLF_PLAYER",
    "WORLD_HUMAN_GUARD_PATROL",
    "WORLD_HUMAN_GUARD_STAND",
    "WORLD_HUMAN_HAMMERING",
    "WORLD_HUMAN_HANG_OUT_STREET",
    "WORLD_HUMAN_HIKER",
    "WORLD_HUMAN_HIKER_STANDING",
    "WORLD_HUMAN_HUMAN_STATUE",
    "WORLD_HUMAN_INSPECT_CROUCH",
    "WORLD_HUMAN_INSPECT_STAND",
    "WORLD_HUMAN_JANITOR",
    "WORLD_HUMAN_JOG",
    "WORLD_HUMAN_LEANING",
    "WORLD_HUMAN_LEANING_CASINO_TERRACE",
    "WORLD_HUMAN_MAID_CLEAN",
    "WORLD_HUMAN_MUSCLE_FLEX",
    "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS",
    "WORLD_HUMAN_MUSICIAN",
    "WORLD_HUMAN_PAPARAZZI",
    "WORLD_HUMAN_PARTYING",
    "WORLD_HUMAN_PICNIC",
    "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
    "WORLD_HUMAN_PROSTITUTE_LOW_CLASS",
    "WORLD_HUMAN_PUSH_UPS",
    "WORLD_HUMAN_SEAT_LEDGE",
    "WORLD_HUMAN_SEAT_LEDGE_EATING",
    "WORLD_HUMAN_SEAT_STEPS",
    "WORLD_HUMAN_SEAT_WALL",
    "WORLD_HUMAN_SEAT_WALL_EATING",
    "WORLD_HUMAN_SECURITY_SHINE_TORCH",
    "WORLD_HUMAN_SIT_UPS",
    "WORLD_HUMAN_SMOKING",
    "WORLD_HUMAN_SMOKING_POT",
    "WORLD_HUMAN_STAND_FIRE",
    "WORLD_HUMAN_STAND_FISHING",
    "WORLD_HUMAN_STAND_IMPATIENT",
    "WORLD_HUMAN_STAND_MOBILE",
    "WORLD_HUMAN_STRIP_WATCH_STAND",
    "WORLD_HUMAN_STUPOR",
    "WORLD_HUMAN_SUNBATHE",
    "WORLD_HUMAN_SUNBATHE_BACK",
    "WORLD_HUMAN_TENNIS_PLAYER",
    "WORLD_HUMAN_TOURIST_MAP",
    "WORLD_HUMAN_TOURIST_MOBILE",
    "WORLD_HUMAN_VALET",
    "WORLD_HUMAN_VEHICLE_MECHANIC",
    "WORLD_HUMAN_WELDING",
    "WORLD_HUMAN_WINDOW_SHOP_BROWSE",
    "WORLD_HUMAN_YOGA",
    "PROP_HUMAN_ATM",
    "PROP_HUMAN_BBQ",
    "PROP_HUMAN_BUM_BIN",
    "PROP_HUMAN_BUM_SHOPPING_CART",
    "PROP_HUMAN_MUSCLE_CHIN_UPS",
    "PROP_HUMAN_PARKING_METER",
    "PROP_HUMAN_SEAT_ARMCHAIR",
    "PROP_HUMAN_SEAT_BAR",
    "PROP_HUMAN_SEAT_BENCH",
    "PROP_HUMAN_SEAT_BENCH_DRINK",
    "PROP_HUMAN_SEAT_BENCH_DRINK_BEER",
    "PROP_HUMAN_SEAT_BENCH_FOOD",
    "PROP_HUMAN_SEAT_BUS_STOP_WAIT",
    "PROP_HUMAN_SEAT_CHAIR",
    "PROP_HUMAN_SEAT_CHAIR_DRINK",
    "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER",
    "PROP_HUMAN_SEAT_CHAIR_FOOD",
    "PROP_HUMAN_SEAT_CHAIR_UPRIGHT",
    "PROP_HUMAN_SEAT_DECKCHAIR",
    "PROP_HUMAN_SEAT_DECKCHAIR_DRINK",
    "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS",
    "PROP_HUMAN_SEAT_STRIP_WATCH",
    "PROP_HUMAN_SEAT_SUNLOUNGER",
    "PROP_HUMAN_MOVIE_BULB",
    "PROP_HUMAN_MOVIE_STUDIO_LIGHT"
}
 
local selected_scenario = 0
local filter_text = ""
local is_typing = false
 
event.register_handler(menu_event.ScriptsReloaded, function()
	TASK.CLEAR_PED_TASKS_IMMEDIATELY(self.get_ped())
end)
 
event.register_handler(menu_event.MenuUnloaded, function()
	TASK.CLEAR_PED_TASKS_IMMEDIATELY(self.get_ped())
end)
 
script.register_looped("YimScenarios", function()
	if is_typing then
		PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
	end
end)
 
scenarios_menu:add_imgui(function()
    filter_text = ImGui.InputText("Choose a Scenario", filter_text, 100)
	if ImGui.IsItemActive() then
		is_typing = true
	else
		is_typing = false
	end
 
    if ImGui.BeginListBox("##scenarios", 400, 200) then
        for index, item in ipairs(ped_scenarios) do
            if string.find(item:lower(), filter_text:lower()) then
                if ImGui.Selectable(item) then
                    selected_scenario = index
					script.run_in_fiber(function()
						TASK.CLEAR_PED_TASKS_IMMEDIATELY(self.get_ped())
						TASK.TASK_START_SCENARIO_IN_PLACE(self.get_ped(), ped_scenarios[selected_scenario], -1, true)
					end)
                end
            end
        end
        ImGui.EndListBox()
    end
 
    if ImGui.Button("Stop Scenario") then
        script.run_in_fiber(function()
			TASK.CLEAR_PED_TASKS(self.get_ped())
		end)
    end
end)
