BIOS.protocol.beginModule("Bf-109K-4", 0x4200)
BIOS.protocol.setExportModuleAircrafts({"Bf-109K-4"})
--by WarLord (aka BlackLibrary) v2.0
local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document  

local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineTumb = BIOS.util.defineTumb
local define3PosTumb = BIOS.util.define3PosTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineString = BIOS.util.defineString
local defineIntegerFromGetter = BIOS.util.defineIntegerFromGetter

-- remove Arg# Pilot 540

defineToggleSwitch("GEN_ON_OFF", 1, 3075, 114, "Generator", "Generator CB On/Off")
definePushButton("GEN_ON", 1, 3077, 114, "Generator", "Generator CB On")
defineToggleSwitch("GEN_OFF", 1, 3092, 151, "Generator", "Generator CB Off")
-- D 100 - Heating CB
defineToggleSwitch("PIT_HEAT_ON_OFF", 1, 3012, 115, "Pitot", "Pitot/Windscreen Heating CB On/Off")
definePushButton("PIT_HEAT_ON", 1, 3014, 115, "Pitot", "Pitot/Windscreen Heating CB On")
defineToggleSwitch("PIT_HEAT_OFF", 1, 3086, 152, "Pitot", "Pitot/Windscreen Heating CB Off")
-- C 100 - Navigation Lights CB
defineToggleSwitch("NAV_LIGHTS_ON_OFF", 1, 3006, 116, "Lights", "Nav. Lights CB On/Off")
definePushButton("NAV_LIGHTS_ON", 1, 3008, 116, "Lights", "Nav. Lights CB On")
defineToggleSwitch("NAV_LIGHTS_OFF", 1, 3084, 153, "Lights", "Nav. Lights CB Off")
-- C 101 - Instrument Panel Illumination CB
defineToggleSwitch("UV_LIGHTS_ON_OFF", 1, 3009, 117, "Lights", "UV Lights CB On/Off")
definePushButton("UV_LIGHTS_ON", 1, 3011, 117, "Lights", "UV Lights CB On")
defineToggleSwitch("UV_LIGHTS_OFF", 1, 3085, 154, "Lights", "UV Lights CB Off")
-- V 101 - Drop Ordnance & Optional Armament CB
defineToggleSwitch("WNG_DRP_ON_OFF", 1, 3024, 118, "Weapon Control", "Wing / Drop Ordnance CB On/Off")
definePushButton("WNG_DRP_ON", 1, 3026, 118, "Weapon Control", "Wing / Drop Ordnance CB On")
defineToggleSwitch("WNG_DRP_OFF", 1, 3090, 155, "Weapon Control", "Wing / Drop Ordnance CB Off")
-- V 100 - Systematic & Ignition CB
defineToggleSwitch("IGN_ON_OFF", 1, 3003, 119, "Engine", "Ignition CB On/Off")
definePushButton("IGN_ON", 1, 3005, 119, "Engine", "Ignition CB On")
defineToggleSwitch("IGN_OFF", 1, 3083, 156, "Engine", "Ignition CB Off")
-- Right Row
-- A 101 - Battery Cut-Off Relay
defineToggleSwitch("BAT_ON_OFF", 1, 3078, 120, "Engine", "Battery CB On/Off")
definePushButton("BAT_ON", 1, 3080, 120, "Engine", "Battery CB On")
defineToggleSwitch("BAT_OFF", 1, 3093, 157, "Engine", "Battery CB Off")
-- F 135 - Radio CB - Labelled "FuG 16"
defineToggleSwitch("RADIO_ON_OFF", 1, 3018, 121, "Radio", "Radio CB On/Off")
definePushButton("RADIO_ON", 1, 3020, 121, "Radio", "Radio CB On")
defineToggleSwitch("RADIO_OFF", 1, 3088, 158, "Radio", "Radio CB Off")
-- F 211 - IFF CB - Labelled "FuG 25a"
defineToggleSwitch("IFF_ON_OFF", 1, 3021, 122, "Radio", "I.F.F. Power CB On/Off")
definePushButton("IFF_ON", 1, 3023, 122, "Radio", "I.F.F. Power CB On")
defineToggleSwitch("IFF_OFF", 1, 3089, 159, "Radio", "I.F.F. Power CB Off")
-- E 101 - Fuel Pump CB - Labelled "Tankpumpe"
defineToggleSwitch("FUEL_ON_OFF", 1, 3015, 123, "Engine", "Fuel Pump CB On/Off")
definePushButton("FUEL_ON", 1, 3017, 123, "Engine", "Fuel Pump CB On")
defineToggleSwitch("FUEL_OFF", 1, 3087, 160, "Engine", "Fuel Pump CB Off")

-- Control Stick Triggers and Buttons
defineToggleSwitch("TRG_SAFETY", 1, 3073, 107, "Stick", "Trigger Safety Cover")
definePushButton("MG_TRIGGER", 1, 3051, 108, "Stick", "Button A MG Trigger")
definePushButton("CANNON_TRIGGER", 1, 3052, 109, "Stick", "Button B1 CANNON Trigger")
definePushButton("BOMB_RLS", 1, 3053, 110, "Stick", "Button B2 BOMB")
definePushButton("MK108_CHARGE", 1, 3055, 111, "Stick", "Button D MK 108")

-- Ignition Controls and Starter and Motor-Related Switches
defineTumb("MAGNETOS", 1, 3066, 59, 0.1, {0,0.3}, nil, false, "Engine", "Magnetos Off/M1/M2/M1+M2")
defineTumb("STARTER_HNDL_CVR", 1, 3063, 51, 1, {0, 1}, nil, false, "Engine", "Starter Handle Cover")
definePushButton("STARTER_HNDL", 1, 3065, 52, "Engine", "Starter Turn Handle")
-- WM-Kommandgerat Toggle
defineTumb("GOV_ON_OFF", 1, 3058, 62, 1, {0, 1}, nil, false, "Engine", "Governor Automation On/Off")
-- Dashboard and Secondary Switches
-- A 104 - Kill Switch
defineTumb("KILL_SWITCH", 1, 3001, 49, 1, {0, 1}, nil, false, "Engine", "Kill Switch")

definePushButton("GUN_CAM_TRG", 1, 3054, 149, "Weapon Control", "Button T Gun Camera Trigger")
defineTumb("SZKK3_CTRL_ON_OFF", 1, 3032, 37, 1, {0, 1}, nil, false, "Weapon Control", "SZKK 3 Weapon Control Master Switch On/Off")
defineRotary("SZKK3_AMMO_LEFT", 3, 3001, 38, "Weapon Control", "Left SZ 500 Ammo Counter Setter Pinion")
defineRotary("SZKK3_AMMO_RIGHT", 3, 3004, 39, "Weapon Control", "Right SZ 500 Ammo Counter Setter Pinion")

-- MW50 Operational Toggle
defineTumb("MW50_BOOST", 1, 3036, 60, 1, {0, 1}, nil, false, "Engine", "MW50 Boost On/Off")
-- Wing Cannons Toggle
defineTumb("WNG_CANNONS_ON_OFF", 1, 3034, 61, 1, {0, 1}, nil, false, "Weapon Control", "Wing Cannons On/Off")
-- MK 108 / Wing Guns Toggle
defineTumb("MK108_R21", 1, 3081, 62, 1, {0, 1}, nil, false, "Weapon Control", "MK 108 / R 21")

-- R 101 ZSK 244 A Bomb Panel Master Switch
-- Operated internally via ZSK 244 A Mode Control
-- R 101 ZSK 244 A Mode Selector
defineTumb("FUSING_SEL", 3, 3013, 64, 0.25, {0, 1}, nil, false, "Weapon Control", "Bomb Fusing Selector")

-- Illumination Controls
definePotentiometer("L_UV_BRIGHT", 1, 3038, 80, {0, 1}, "Lamps", "Left UV Lamp Rheostat")
definePotentiometer("R_UV_BRIGHT", 1, 3041, 82, {0, 1},"Lamps", "Right UV Lamp Rheostat")

-- Oxygen Apparatus Controls
definePushButton("OXYGEN_VALVE", 2, 3001, 127, "Oxygen", "Oxygen Valve")

-- Regulator "Oxygen Shower" Blue Button
defineTumb("OXY_BYPASS", 2, 3003, 126, 1, {0, 1}, nil, false, "Oxygen", "Oxygen Emergency By-Pass")
--
-- Main Panel Controls
-- Undercarriage Controls
-- U/C Plungers Cover
defineToggleSwitch("LG_COVER", 4, 3039, 53, "Landing Gear", "Undercarriage Controls Cover")
-- U/C Raise Plunger
defineTumb("LG_UP", 4, 3001, 54, 1,  {0, 1.0}, nil, false, "Landing Gear", "Raise Undercarriage")
-- U/C Extension Plunger
defineTumb("LG_DOWN", 4, 3002, 55, 1,  {0, 1.0}, nil, false, "Landing Gear", "Lower Undercarriage")

definePushButton("LG_EMG_RLS", 4, 3004, 63, "Landing Gear", "Undercarriage Emergency Release")
-- U/C Locks Release Pull Handle

-- Stoff-Kraftstoff Ventilbatterie Lever
definePushButton("FUEL_MW_VALVE", 4, 3027, 96, "Engine", "MW / Fuel")

-- Fuel Jettison Knob
definePushButton("FUEL_JETTISON", 4, 3041, 112, "Engine", "MW / Fuel Jettison")


-- Fuel and MW50 Systems Controls
-- Fuel Primer Hand Pump
defineTumb("FUEL_PRIMER_PUMP", 4, 3012, 140, 1, {0, 1}, nil, false, "Engine", "Fuel Priming Pump")

-- Schnellstop Lever
definePushButton("ENGINE_STOP", 5, 3006, 88, "Engine", "Engine Stop")
-- Booster Pumps Lever
defineTumb("BOOSTER_PUMPS", 4, 3023, 87, 0.1, {0,0.3}, nil, false, "Engine", "Booster Pumps")
-- Coolant System Controls
-- Radiator Mode Lever
defineTumb("RADIATOR_MODE", 4, 3035, 113, 0.1, {0,0.3}, nil, false, "Engine", "Radiators Mode")
-- LH Radiator Hose Cut-Off Pull Handle
definePushButton("L_RADIATOR_OFF", 4, 3043, 90, "Engine", "LH Radiator Cut-Off")
-- RH Radiator Hose Cut-Off Pull Handle
definePushButton("R_RADIATOR_OFF", 4, 3045, 91, "Engine", "RH Radiator Cut-Off")

-- Altimeter
defineRotary("ALT_PRESS_SET", 8, 3001, 11, "Cockpit", "Altimeter Pressure Set")

-- Artificial Horizon
definePotentiometer("HORIZON_CAGE", 9,3001, 7, {0, 0.511},"Cockpit", "Horizon Cage")

-- Repeater Compass
defineRotary("COURSE_SET", 10, 3001, 12, "Cockpit", "Course Set")

-- Instruments
-- Clock Scale
defineRotary("CLOCK_SCALE", 19, 3001, 21, "Cockpit", "Clock Scale Set")
-- Clock Setter Pinion
defineRotary("CLOCK_SET", 19, 3004, 22, "Cockpit", "Clock Adjusting Knob")
-- Clock Freeze Lever
defineTumb("CLOCK_TIME_LEVER", 19, 3006, 23, 1, {0, 1}, nil, false, "Cockpit", "Time Setting Lever")
-- Clock Stopwatch Button
defineTumb("CLOCK_TIMER", 19, 3008, 24, 1, {0, 1}, nil, false, "Cockpit", "Start/Stop/Reset Chronometer")

-- P 112 Gun Sight Brightness Rheostat
definePotentiometer("SIGHT_BRIGHT", 1, 3044, 48, {0, 1}, "Gun Sight", "Gun Sight Brightness")
-- P 9 / P 10 REVI Power Plug and Socket
-- Operated internally via gun sight movement
-- P 112 Gun Sight Folding Controls
defineTumb("SIGHT_FOLD", 3, 3007, 139, 1, {0, 1}, nil, false, "Gun Sight", "Gun Sight Fold")
-- P 112 Gun Sight Smoked Screen Controls
definePushButton("SIGHT_SCREEN", 3, 3010, 47, "Gun Sight", "Gun Sight Smoked Screen Up/Down")
-- Radio Controls
defineTumb("RADIO_MODE", 14, 3001, 128, 0.1, {0,0.3}, nil, false, "Radio", "Radio Mode")
defineRotary("FUG16_TUNING", 14,3008, 129, "Radio", "FuG16 ZY Fine Tune")
defineRotary("FUG16_VOLUME", 14, 3003, 130, "Radio", "FuG16 ZY Volume")
defineToggleSwitch("FT_ZF_SWITCH", 14, 3006, 131, "Radio", "FT FT / Y ZF Homing Switch")
defineToggleSwitch("FUG25_MODE", 14, 3012, 132, "Radio", "FuG25 Mode 1 / 2")
definePushButton("FUG25_TEST", 14, 3014, 133, "Radio", "FuG25 Test")

-- Left Wall Controls
definePushButton("TAIL_LOCK", 4, 3021, 97, "Tail Wheel", "Tail Wheel Lock Handle")

defineToggleSwitch("CANOPY_OPEN", 4, 3029, 136, "Canopy", "Canopy Open/Close")
definePushButton("JETTISON_CANOPY", 4, 3032, 83, "Canopy", "Jettison Canopy")

defineTumb("TRIM_WHEEL_UP", 4, 3008, 141, 1, {0, 1}, nil, false, "Trim", "Stabilizer Trim Nose Up")
defineTumb("TRIM_WHEEL_DOWN", 4, 3009, 142, 1, {0, 1}, nil, false, "Trim", "Stabilizer Trim Nose Down")

defineTumb("FLAPS_EXTEND", 4, 3010, 143, 1, {0, 1}, nil, false, "Flaps", "Extend Flaps")
defineTumb("FLAPS_RETRACT", 4, 3011, 144, 1, {0, 1}, nil, false, "Flaps", "Retract Flaps")

-- Notwurf / Ordinance Dump
definePushButton("ORD_EMG_DUMP", 3, 3018, 92, "Weapon Control", "Ordinance Emergency Release")

definePushButton("FLARE_GUN", 20, 3001, 72, "Flare Gun", "Flare Gun Trigger")

-- Throttle Lever
define3PosTumb("DEC_RPM", 1, 3060, 85, "Engine", "Decrease/Increase RPM")
definePushButton("MIC_ON", 14, 3005, 150, "Radio", "Microphone On")

defineTumb("GOV_AUTO_SWITCH", 1, 3058, 89, 1, {0, 1}, nil, false, "Engine", "Governor Automation On/Off")
definePushButton("COLD_START", 5, 3008, 86, "Engine", "Cold Weather Start Valve Handle")

defineFloat("MIRRORS_DRAW", 183, {1, 0}, "Indicator", "mirrors_draw")
defineFloat("PANEL_SHAKE_Z", 146, {-0.8, 0.8}, "Indicator", "Panel_Shake_Z")
defineFloat("PANEL_SHAKE_Y", 147, {-0.8, 0.8}, "Indicator", "Panel_Shake_Y")
defineFloat("PANEL_ROT_X", 148, {-0.5, 0.5}, "Indicator", "Panel_Rot_X")
defineFloat("STICKPITCH", 105, {-1, 1}, "Indicator", "StickPitch")
defineFloat("STICKBANK", 106, {-1, 1}, "Indicator", "StickBank")
defineFloat("RUDDERPEDALS", 102, {-1, 1}, "Indicator", "RudderPedals")
defineFloat("CANOPY_TRUCKS", 162, {0, 1}, "Indicator", "Canopy_Trucks")
defineFloat("CANOPY_VISIBILITY", 163, {0, 1}, "Indicator", "Canopy_Visibility")
defineFloat("CANOPY_CRANK", 147, {0, 1}, "Indicator", "Canopy_Crank")
defineFloat("LEFT_WHEEL_BRAKE", 103, {0, 1}, "Indicator", "Left_Wheel_Brake")
defineFloat("RIGHT_WHEEL_BRAKE", 104, {0, 1}, "Indicator", "Right_Wheel_Brake")
defineFloat("MW50_PRESSURE", 1, {0, 1}, "Indicator", "MW50_Pressure")
defineFloat("AIRSPEEDNEEDLE", 2, {0, 1}, "Indicator", "AirspeedNeedle")
defineFloat("TURNNEEDLE", 3, {-1, 1}, "Indicator", "TurnNeedle")
defineFloat("AHORIZON_BANK", 4, {1.0, -1.0}, "Indicator", "AHorizon_Bank")
defineFloat("AHORIZON_PITCH", 5, {1.0, -1.0}, "Indicator", "AHorizon_Pitch")
defineFloat("SLIPBALL", 6, {-1, 1}, "Indicator", "Slipball")
defineFloat("AHORIZON_CAGED", 7, {0, 1}, "Indicator", "AHorizon_Caged")
defineFloat("ALTIMETER_FINEPTR", 8, {0, 1}, "Indicator", "Altimeter_FinePtr")
defineFloat("ALTIMETER_COARSEPTR", 9, {0, 1}, "Indicator", "Altimeter_CoarsePtr")
defineFloat("ALTIMETER_PRESSURE", 10, {0, 1}, "Indicator", "Altimeter_Pressure")
defineFloat("PRESSURE_SETTER_PINION", 11, {0, 1}, "Indicator", "Pressure_Setter_Pinion")
defineFloat("COMPASSHEADING", 13, {0, 1}, "Indicator", "CompassHeading")
defineFloat("COMMANDEDCOURSE", 12, {0, 1}, "Indicator", "CommandedCourse")
defineFloat("AFN2_HORIZONTAL_NEEDLE", 14, {-1, 1}, "Indicator", "AFN2_Horizontal_Needle")
defineFloat("AFN2_VERTICAL_NEEDLE", 15, {0, 1}, "Indicator", "AFN2_Vertical_Needle")
defineIndicatorLight("AFN2_SIGNAL_LAMP", 16, "Indicator", "AFN2_Signal_Lamp (white)")
defineFloat("FUEL_PRESSURE", 25, {0, 1}, "Indicator", "Fuel_Pressure")
defineFloat("OIL_PRESSURE", 26, {0, 1.0}, "Indicator", "Oil_Pressure")
defineFloat("COOLANT_TEMPERATURE", 27, {-1, 1}, "Indicator", "Coolant_Temperature")
defineFloat("OIL_TEMPERATURE", 28, {-1, 1}, "Indicator", "Oil_Temperature")
defineFloat("ENGINE_RPM", 29, {0, 1}, "Indicator", "Engine_RPM")
defineFloat("PROPELLER_PITCH_HOUR", 30, {0, 1}, "Indicator", "Propeller_Pitch_Hour")
defineFloat("PROPELLER_PITCH_MINUTE", 31, {0, 1}, "Indicator", "Propeller_Pitch_Minute")
defineFloat("MANIFOLD_PRESSURE", 32, {0, 1}, "Indicator", "Manifold_Pressure")
defineFloat("FUEL_TANK_FUSELAGE", 33, {-1, 1}, "Indicator", "Fuel_Tank_Fuselage")
defineFloat("OXYGEN_PRESSURE", 34, {0, 1}, "Indicator", "Oxygen_Pressure")
defineFloat("OXYGEN_FLOW_BLINKER", 35, {0, 1}, "Indicator", "Oxygen_Flow_Blinker")
defineFloat("VARIOMETERNEEDLE", 36, {-0.3, 0.3}, "Indicator", "VariometerNeedle")
defineFloat("MG131_0_SHELL_COUNTER", 40, {0, 1}, "Indicator", "MG131_0_Shell_Counter")
defineFloat("MG131_1_SHELL_COUNTER", 41, {0, 1}, "Indicator", "MG131_1_Shell_Counter")
defineFloat("MG131_0_KLAPPANKER", 42, {0, 1}, "Indicator", "MG131_0_Klappanker")
defineFloat("MG131_1_KLAPPANKER", 43, {0, 1}, "Indicator", "MG131_1_Klappanker")
defineIndicatorLight("LEFTWING_MG151_CONTROL_LAMP", 44, "Indicator", "LeftWing MG151 Control Lamp (yellow)")
defineIndicatorLight("RIGHTWING_MG151_CONTROL_LAMP", 45, "Indicator", "RightWing MG151 Control Lamp (yellow)")
defineFloat("BODYSTATE", 46, {0, 1}, "Indicator", "BodyState")
defineFloat("SMOKEDSCREEN", 47, {0, 1}, "Indicator", "SmokedScreen")
defineFloat("SIGHTBRIGHTNESS", 48, {0, 1}, "Indicator", "SightBrightness")
defineIndicatorLight("LANDINGGEARREDLIGHT", 56, "Indicator", "LandingGearLight (red)")
defineIndicatorLight("LANDINGGEARGREENLIGHTLEFT", 57, "Indicator", "LandingGearLightLeft (green)")
defineIndicatorLight("LANDINGGEARGREENLIGHTRIGHT", 58, "Indicator", "LandingGearLightRight (green)")
defineIndicatorLight("FUEL_RESERVE_LAMP", 164, "Indicator", "Fuel Reserve Lamp")

-- Gauge Formulas
local function getManifold()
     local returnValue = (GetDevice(0):get_argument_value(32))*65+10
     return returnValue
end
defineIntegerFromGetter("MANIFOLD_PRESSURE_VALUE", getManifold, 65000, 
"Gauge Values", "Manifold Pressure kg/cm2")

local function getMW50()
     local returnValue = (GetDevice(0):get_argument_value(1))*30
     return returnValue
end
defineIntegerFromGetter("METHANOL_WATER_PRES_VALUE", getMW50, 65000, 
"Gauge Values", "Methanol Water Pres kg/cm2 Read as X.X")

local function getPropPitch()
     local returnValue = (GetDevice(0):get_argument_value(30))*63+26
     return returnValue
end
defineIntegerFromGetter("PROPELLER_PITCH_DEG_VALUE", getPropPitch, 65000, 
"Gauge Values", "Propeller Pitch Degrees")

local function getFuelLevel()
     local returnValue = (GetDevice(0):get_argument_value(33))*400
     return returnValue
end
defineIntegerFromGetter("FUEL_LEVEL_VALUE", getFuelLevel, 65000, 
"Gauge Values", "Fuel Level Liters")

local function getFuelPressure()
     local returnValue = (GetDevice(0):get_argument_value(25))*20
     return returnValue
end
defineIntegerFromGetter("FUEL_PRESSURE_VALUE", getFuelPressure, 65000, 
"Gauge Values", "Fuel Pres kg/cm2 Read as X.X")

local function getOilPressure()
     local returnValue = (GetDevice(0):get_argument_value(26))*100
     return returnValue
end
defineIntegerFromGetter("OIL_PRESSURE_VALUE", getOilPressure, 65000, 
"Gauge Values", "Oil Pressure kg/cm2 Read as X.X or XX.X")

local function getOilTemp()
     local returnValue = (GetDevice(0):get_argument_value(28))*130
     return returnValue
end
defineIntegerFromGetter("OIL_TEMPERATURE_VALUE", getOilTemp, 65000, 
"Gauge Values", "Oil Temp °C")

local function getCoolantTemp()
     local returnValue = (GetDevice(0):get_argument_value(27))*130
     return returnValue
end
defineIntegerFromGetter("COOLANT_TEMPERATURE_VALUE", getCoolantTemp, 65000, 
"Gauge Values", "Coolant Temp °C")

local function getOxygenPressure()
     local returnValue = (GetDevice(0):get_argument_value(34))*250
     return returnValue
end
defineIntegerFromGetter("OXYGEN_PRESSURE_VALUE", getOxygenPressure, 65000, 
"Gauge Values", "Oxygen Pressure kg/cm2")

local function getAirspeed()
     local returnValue = (GetDevice(0):get_argument_value(2))*750
     return returnValue
end
defineIntegerFromGetter("AIRSPEED_VALUE", getAirspeed, 65000, 
"Gauge Values", "Airspeed km/h")

local function getAltitude()
     local returnValue = (GetDevice(0):get_argument_value(9))*9999
     return returnValue
end
defineIntegerFromGetter("ALTITUDE_VALUE", getAltitude, 65000, 
"Gauge Values", "Altitude Meters")

--[[--local function getVariometer()
     local returnValue = (GetDevice(0):get_argument_value(36))*100
     return returnValue
end
defineIntegerFromGetter("VARIOMETER_VVI_VALUE", getVariometer, 65000, 
"Gauge Values", "Variometer VVI m/s")--]]--

local function getTachometer()
     local returnValue = (GetDevice(0):get_argument_value(29))*3200+400
     return returnValue
end
defineIntegerFromGetter("TACHOMETER_VALUE", getTachometer, 65000, 
"Gauge Values", "Tachometer RPM")

local function getBaro()
     local returnValue = (GetDevice(0):get_argument_value(10))*120+920
     return returnValue
end
defineIntegerFromGetter("BAROMETRIC_PRESSURE_VALUE", getBaro, 65000, 
"Gauge Values", "Barometric Pressure mb")

local function getHDG()
     local returnValue = (GetDevice(0):get_argument_value(13))*360
     return returnValue
end
defineIntegerFromGetter("COMPASS_HEADING_VALUE", getHDG, 65000, 
"Gauge Values", "Compass Heading")

--[[--local function getCRS()
     local returnValue = (GetDevice(0):get_argument_value(12))*360
     return returnValue
end
defineIntegerFromGetter("COURSE_VALUE", getCRS, 65000, 
"Gauge Values", "Course")--]]--

--Externals
defineIntegerFromGetter("EXT_POSITION_LIGHT_LEFT", function()
	if LoGetAircraftDrawArgumentValue(190) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Left Position Light (red)")
defineIntegerFromGetter("EXT_POSITION_LIGHT_RIGHT", function()
	if LoGetAircraftDrawArgumentValue(191) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Right Position Light (green)")
defineIntegerFromGetter("EXT_POSITION_LIGHT_TAIL", function()
	if LoGetAircraftDrawArgumentValue(192) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Tail Position Light (white)")
defineIntegerFromGetter("EXT_WOW_NOSE", function()
	if LoGetAircraftDrawArgumentValue(1) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Nose Gear")
defineIntegerFromGetter("EXT_WOW_RIGHT", function()
	if LoGetAircraftDrawArgumentValue(4) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Right Gear")
defineIntegerFromGetter("EXT_WOW_LEFT", function()
	if LoGetAircraftDrawArgumentValue(6) > 0 then return 1 else return 0 end
end, 1, "External Aircraft Model", "Weight ON Wheels Left Gear")

defineToggleSwitch("COCKPIT_VENT_L", 4, 3060, 98, "Cockpit", "Left Cockpit Vent")
defineToggleSwitch("COCKPIT_VENT_R", 4, 3062, 99, "Cockpit", "Right Cockpit Vent")

definePushButton("FLARE_GUN_GN", 20, 3003, 165, "Flare Gun", "Fire Flare Gun Green")
definePushButton("FLARE_GUN_RD", 20, 3004, 165, "Flare Gun", "Fire Flare Gun Red")
definePushButton("FLARE_GUN_WH", 20, 3005, 165, "Flare Gun", "Fire Flare Gun White")
definePushButton("FLARE_GUN_YE", 20, 3006, 165, "Flare Gun", "Fire Flare Gun Yellow")

-- Rudder and Wheel Brakes
definePotentiometer("LH_WHEELBRAKE", 4, 3015, 103, {0, 1}, "Cockpit", "Left Wheel Brake")
definePotentiometer("RH_WHEELBRAKE", 4, 3018, 104, {0, 1}, "Cockpit", "Right Wheel Brake")

defineFloat("CANOPY_POS", 95, {0, 1}, "Cockpit", "Canopy Position")

defineIndicatorLight("BOMB_SBY_L", 65, "Indicator", "Bomb Standby Light (red)")
defineIndicatorLight("BOMB_1_L", 66, "Indicator", "Bomb 1 Status Light (white)")
defineIndicatorLight("BOMB_2_L", 67, "Indicator", "Bomb 2 Status Light (white)")
defineIndicatorLight("BOMB_3_L", 68, "Indicator", "Bomb 3 Status Light (white)")
defineIndicatorLight("BOMB_4_L", 69, "Indicator", "Bomb 4 Status Light (white)")
defineFloat("PANEL_GLOW", 79, {0, 1}, "Indicator", "Gauges Glow (green)")

BIOS.protocol.endModule()