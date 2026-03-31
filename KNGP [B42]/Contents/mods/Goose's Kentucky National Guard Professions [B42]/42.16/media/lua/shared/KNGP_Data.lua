-- "An idiot admires complexity, a genius admires simplicity. An idiot, the more complicated something is, the more he will admire it.
-- If you make something so clusterfucked he can't understand it, he's gonna think you're a god because you made it so complicated, nobody can understand it.
-- That's how they write academic journals. They try to make it so complicated people think they're a genius."
-- - Terry A. Davis
--
-- (even tho I don't always follow his advice myself I admire terry's wisdom)
--
-- SPDX-License-Identifier: MIT
--
-- Copyright © 2026 CyclingGoose
--
-- see LICENSE.txt for full license text.
--
-- code commented by CyclingGoose for clarity and personal reference.
--
-- KNGP_Data.lua

-- all static data tables for the KNGP mod
-- this file contains all the static data used by the mod's functions
-- keeping data separate from logic for better maintainability

--
-- journal data for lore writing
--
text_cbrn = {
    page_1 = "Field Journal of the 41st CST\n\nIf found, please return to the nearest National Guard Armory or contact the Kentucky National Guard at (502) 607-3000.\n\nThis journal contains sensitive information regarding CBRN response protocols and procedures. Unauthorized access is prohibited.",
    page_2 = "July 4th, 1993\n\nWe were supposed to use this to document official shit, but I got nothing else to do right now\n\nGot the callup yesterday. Happy fucking Independence day I guess... Briefing was thin too, truck accident north of March Ridge, leakage of unknown hazardous substance, nobody is telling us what.\n\nThe 41st is being attached to the containment element, they told us to pack for two weeks so there goes nothing."















}

journalNames = {
    cbrn = "Field Journal 41st CST",
}

journalText = {
    cbrn = text_cbrn,
}
--
-- journal data for lore writing
--

--
-- data for photograph lore
--
personalPhotographNames = {
    "Photograph of a Backyard Fourth of July Cookout",
    "Photograph of a Basic Training Graduation",
    "Photograph of Two Soldiers Mugging for the Camera",
    "Photograph of a Unit Softball Game",
    "Photograph of a Dog Sleeping on a Porch",
    "Photograph of a Birthday Cake with Too Many Candles",
    "Photograph of a Young Man in Dress Uniform",
    "Photograph of a Pickup Truck Loaded for a Camping Trip",
    "Photograph of a Group at a Bar where Everyone is Grinning",
    "Photograph of a Section Huddled Around a Field Ration",
    "Photograph of a Christmas Tree in a Small Living Room",
    "Photograph of a Soldier and an Older Couple Outside a Church",
    "Photograph of a Two Men Holding a Big Fish They Caught",
    "Photograph of a Barracks Room Decorated with Pin-Ups and Pennants",
    "Photograph of a High School Football Game in the Bleachers",
    "Photograph of a Soldier Asleep on a Duffel Bag at an Airport",
    "Photograph of a Summer Fair Ferris Wheel in the Background",
    "Photograph of a Promotion Ceremony in a Gymnasium",
    "Photograph of a Pair of Boots Outside a Tent Door",
    "Photograph of a Cleared Field with Goal Posts at Sunset",
    "Photograph of a Soldier Holding a Newborn in a Hospital Room",
    "Photograph of a Dashboard and Open Highway",
    "Photograph of a Garage Band Playing in Someone's Basement",
    "Photograph of a Wrestling Match at a County Fair",
    "Photograph of a Soldier's Wall Locker Covered in Stickers",
    "Photograph of Two Men Shaking Hands at a Retirement Ceremony",
    "Photograph of a Snowball Fight Outside a Barracks Block",
    "Photograph of a Woman Waving from a Front Porch",
    "Photograph of a Poker Game in a Tent, Everyone Focused",
    "Photograph of a Soldier Asleep in the Back of a Humvee",
    "Photograph of a Little League Game from the Bleachers",
    "Photograph of a Man at a Bowling Alley",
    "Photograph of a Squad Gathered Around a Bonfire",
    "Photograph of a Soldier Posing in Front of a Tank",
    "Photograph of a Church Picnic on a Sunny Afternoon",
    "Photograph of a Man Holding Up a Beer Mid-Laugh",
    "Photograph of a Child Sitting in the Driver's Seat of a Military Truck",
    "Photograph of a Barracks Room at Christmas with Tinsel Over the Bunks",
    "Photograph of a Soldier on the Phone, Smiling",
    "Photograph of a Group in Dress Uniform Outside a Courthouse",
}

knoxEventPhotographNames = {
    "Photograph of a Roadblock on a Empty Kentucky Highway",
    "Photograph of Fencing Being Erected Along a Tree Line",
    "Photograph of Soldiers in MOPP Gear at a Checkpoint",
    "Photograph of a Crashed Military Truck on a Dirt Road",
    "Photograph of Smoke Rising Over Muldraugh",
    "Photograph of Abandoned Cars Lined Up at a Perimeter Gate",
    "Photograph of a Decontamination Station at Dusk",
    "Photograph of a Hazmat Team Entering a Residential Street",
    "Photograph of a Military Helicopter Over a Cornfield",
    "Photograph of a Checkpoint Guard Looking at Something Off Frame",
    "Photograph of a Field Hospital Tent Assembled in a Parking Lot",
    "Photograph of Soldiers Watching the Horizon at Night",
    "Photograph of a Civilian Being Turned Away at Gunpoint",
    "Photograph of a Row of Empty Cots in a Forward Operating Base",
    "Photograph of a Darkened Muldraugh Street with No People in Sight",
    "Photograph of a MOPP Mask Lying in the Mud",
    "Photograph of Radio Equipment Set Up in a Farmhouse Kitchen",
    "Photograph of a Soldier Reading a Map Outside Fort Knox's Gate",
    "Photograph of Storm Clouds Over Louisville at Night",
    "Photograph of a Soldier Sitting Alone in Full MOPP Gear with Head in His Hands",
    "Photograph of a Man in a White Shirt Standing Under a Street Light at 3AM",
    "Photograph of a Row of Body Bags Outside a Military Tent",
    "Photograph of Something Moving at the Edge of a Tree Line at Night",
    "Photograph of a Body Covered by a Tarp on a Residential Lawn",
    "Photograph of a Military Convoy Passing Through a Small Town at Night",
    "Photograph of a Chain-Link Fence with Clothing Caught in the Wire",
    "Photograph of Floodlights Illuminating a Perimeter at Night",
    "Photograph of Bootprints Leading Into a Cornfield",
    "Photograph of a Soldier Standing Guard at a Checkpoint in the Rain",
    "Photograph of Officers Standing Around the Table Discussing Something ",
    "Photograph of a Soldier Sitting on the Tailgate of a Truck Smoking a Cigarette",
    "Photograph of General McGrew Giving a Speech at a Podium in Front of a Banner",
    "Photograph of Combat Medics Treating a Soldier in a Field Hospital Tent",
    "Photograph of a Group of Protesters Being Dispersed by Military Police",
    "Photograph of a Suspicious Package",
    "Photograph of Ham Radios Set Up in a Tent",
    "Photograph of Two Soldiers in MOPP Gear Carrying a Stretcher with a Body Bag on It",
    "Photograph of Civillians in Quarantine Cages",
    "Photograph of a Soldier Standing on a Observation Tower with Binoculars",
    "Photograph of Officers Going Into a Meeting Holding Briefing Folders",
}



--
-- data for photograph lore
--

--
-- setup functions for different gear configurations
--
backpackSetups = {
    standard = function(inventory)
        AddToInventory:addStandardBackpackToInventory(inventory, backpack)
    end,
    engineer = function(inventory)
        AddToInventory:addCombatEngineerBackpackToInventory(inventory, backpack)
    end,
    traumabag = function(inventory)
        AddToInventory:addStandardTraumaBagToInventory(inventory, traumabag)
    end,
    militarypolice = function(inventory)
        AddToInventory:addMilitaryPoliceBackpackToInventory(inventory, backpack)
    end,
}

webbingSetups = {
    standard = function(inventory)
        AddToInventory:addStandardWebbingToInventory(inventory, webbing)
    end,
    alice = function(inventory)
        AddToInventory:addABWebbingToInventory(inventory, webbing)
    end,
}

satchelSetups = {
    vanilla = function(inventory)
        AddToInventory:addStandardSatchelToInventory(inventory, satchel)
    end,

    vanilla_scro = function (inventory)
        AddToInventory:addSCROSatchelToInventory(inventory, satchel)
    end,

    vanilla_cbrn = function (inventory)
        AddToInventory:addCBRNSatchelToInventory(inventory, satchel)
    end,

    alice = function(inventory)
        AddToInventory:addABSatchelToInventory(inventory, satchel)
    end,

    alice_scro = function(inventory)
        AddToInventory:addABSCROSatchelToInventory(inventory, satchel)
    end,

    alice_cbrn = function(inventory)
        AddToInventory:addABCBRNSatchelToInventory(inventory, satchel)
    end,
}

chestrigSetups = {
    standard = function(inventory)
        AddToInventory:addStandardChestrigToInventory(inventory, chestrig)
    end,
}

weaponSetups = {
    standard = function(inventory)
        AddToInventory:addStandardWeaponsToInventory(inventory)
    end,

    light = function(inventory)
        AddToInventory:addLightWeaponsToInventory(inventory)
    end,
}

toolboxSetups = {
    standard = function(inventory)
        AddToInventory:addToolboxToInventory(inventory, toolbox)
    end,
}

gearSetups = {
    standard = function(inventory, playername)
        AddToInventory:addStandardGearToInventory(inventory, playername)
    end,
    alice = function(inventory, playername)
        AddToInventory:addABGearToInventory(inventory, playername)
        AddToInventory:addABMaskPouchToInventory(inventory, maskpouch, player)
    end,
}
--
-- setup functions for different gear configurations
--

--
-- config data for the mod's functions
--
professionConfigVanilla = {
    infantryman = {
        gear = "standard",
        backpack = "standard",
        weapons = "standard",
        ifak = true,
        chestrig = "standard",
    },
    combatmedic = {
        gear = "standard",
        backpack = "traumabag",
        weapons = "standard",
        satchel = "vanilla",
        ifak = true,
        chestrig = "standard",
    },
    combatengineer = {
        gear = "standard",
        backpack = "engineer",
        weapons = "standard",
        ifak = true,
        chestrig = "standard",
    },
    militarypolice = {
        gear = "standard",
        backpack = "militarypolice",
        weapons = "standard",
        ifak = true,
        chestrig = "standard",
    },
    motortransportoperator = {
        gear = "standard",
        backpack = "standard",
        weapons = "light",
        ifak = true,
        toolbox = "standard",
        webbing = "standard",
        extraHelmet = true,
    },

    singlechannelradiooperator = {
        gear = "standard",
        satchel = "vanilla_scro",
        weapons = "standard",
        ifak = true,
        webbing = "standard",
    },

    cbrnspecialist = {
        gear = "standard",
        satchel = "vanilla_cbrn",
        weapons = "light",
        ifak = true,
    },
}

-- AliceGear suffix = AB
professionConfigAB = {
    infantryman = {
        gear = "alice",
        backpack = "standard",
        weapons = "standard",
        ifak = true,
        webbing = "alice",
    },
    combatmedic = {
        gear = "alice",
        backpack = "traumabag",
        weapons = "standard",
        satchel = "alice",
        ifak = true,
        webbing = "alice",
    },
    combatengineer = {
        gear = "alice",
        backpack = "engineer",
        weapons = "standard",
        ifak = true,
        webbing = "alice",
    },
    militarypolice = {
        gear = "alice",
        backpack = "militarypolice",
        weapons = "standard",
        ifak = true,
        webbing = "alice",
    },
    motortransportoperator = {
        gear = "alice",
        backpack = "standard",
        weapons = "light",
        ifak = true,
        toolbox = "standard",
        webbing = "alice",
        extraHelmet = true,
    },

    singlechannelradiooperator = {
        gear = "alice",
        satchel = "alice_scro",
        weapons = "standard",
        ifak = true,
        webbing = "alice",
    },

    cbrnspecialist = {
        gear = "alice",
        satchel = "alice_cbrn",
        weapons = "light",
        ifak = true,
        webbing = "alice",
    },
}
--
-- config data for the mod's functions
--

--
-- tables for equipping clothing and giving special items based on profession taken
--
professionDictionary = {

    infantryman = {
        -- essentially their "special" item, just gets added to the inventory
        inventory = {"Base.x2Scope", "Base.Screwdriver"},

        -- what they will wear once they spawn
        -- it does add it to the inventory first, then equips it
        equip = {"Base.Vest_BulletArmy",
            "Base.Trousers_CamoGreen",
            "Base.Jacket_ArmyCamoGreen",
            "Base.Hat_Army",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_FingerlessLeatherGloves_Black",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE"},

    },

    combatmedic = {
                
        inventory = {"Base.Scalpel"},

        equip = {"Base.Vest_BulletArmy",
            "Base.Trousers_CamoGreen",
            "Base.Jacket_ArmyCamoGreen",
            "Base.Hat_Army",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_Surgical",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE",
            "KNGP.NGMedicArmband"},
    },

    combatengineer= {
                
        inventory = {"Base.HandAxe"}, -- Hatchet

        equip = {"Base.Vest_BulletArmy",
            "Base.Trousers_CamoGreen",
            "Base.Jacket_ArmyCamoGreen",
            "Base.Hat_Army",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_FingerlessLeatherGloves_Black",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE",
            "KNGP.NGEngineerArmband"},
    },

    militarypolice = {
                
        inventory = {"Base.Nightstick"},

        equip = {"Base.Vest_BulletArmy",
            "Base.Trousers_CamoGreen",
            "Base.Jacket_ArmyCamoGreen",
            "Base.Hat_Army",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_FingerlessLeatherGloves_Black",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE",
            "KNGP.NGMPBrassardLeft"},
    },

    motortransportoperator = {
                
        inventory = {"Base.Wrench"},

        equip = {"Base.Trousers_CamoGreen",
            "Base.Shirt_CamoGreen",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_FingerlessLeatherGloves_Black",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE"},
    },

    singlechannelradiooperator = {

        inventory = {"Base.Screwdriver"},

        equip = {"Base.Vest_BulletArmy",
            "Base.Trousers_CamoGreen",
            "Base.Jacket_ArmyCamoGreen",
            "Base.Hat_Army",
            "Base.ManPackRadio",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_FingerlessLeatherGloves_Black",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE",
            "KNGP.NGEngineerArmband"},

    },

    cbrnspecialist = {

        inventory = {"Base.CameraExpensive"},

        equip = {"Base.Vest_BulletArmy",
            "Base.Trousers_CamoGreen",
            "Base.Jacket_ArmyCamoGreen",
            "Base.Hat_Army",
            "Base.Hat_GasMask",
            "Base.Tshirt_OliveDrab",
            "Base.Shoes_ArmyBoots",
            "Base.Gloves_Surgical",
            "Base.WristWatch_Right_DigitalBlack",
            "Base.Socks_Heavy",
            "Base.Boxers_White",
            "Base.HolsterSimple_Green",
            "Base.Vest_DefaultTEXTURE",
            "KNGP.NGSupportArmband"},

    },
}
--
-- tables for equipping clothing and giving special items based on profession taken
--
