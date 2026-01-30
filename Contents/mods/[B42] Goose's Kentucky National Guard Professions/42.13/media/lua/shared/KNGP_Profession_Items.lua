-- SPDX-License-Identifier: MIT
--
-- Copyright © 2025 CyclingGoose
--
-- see LICENSE.txt for full license text.
--
-- code commented by CyclingGoose for clarity and personal reference.
--
-- KNGP_Profession_Items.lua

require "Items_AddToContainer";
require "Items_AddToInventory";
require "registries";

local function kngpGearPlayer(_player)

        local activate_loadouts = SandboxVars.KNGP.Loadouts;
        local player = _player
        local prof = player:getDescriptor():getCharacterProfession():getName(); -- gets the profession name of the player 
        local playername = player:getFullName() -- gets the player characters full name

        
        print("kentuckynationalguardprofessionsgoose - Loadout Activated: ", activate_loadouts);
        print("kentuckynationalguardprofessionsgoose - Profession Chosen: ", prof);

        local function setupGear(prof)
            
            local inventory = player:getInventory();
            local professionCategories = {"inventory","equip"}

            -- iterates though the professionCategories table and adds items to inventory or equips them based on the professionDictionary table
            -- i wouldn't touch this if you don't know what you're doing
            for i,v in ipairs(professionCategories) do
                for index, value in ipairs(professionDictionary[prof][v]) do
                    if v == "inventory" then
                        inventory:AddItem(value)
                    end
                    if v == "equip" then
                        itemToEquip = inventory:AddItem(value);
                        player:setWornItem(itemToEquip:getBodyLocation(), itemToEquip);
                    end   
                end
            end
            
            -- this is where the items get added to the inventory base on the profession
            --
            -- GEAR INFANTRYMAN
            --
            if prof == "infantryman" then
                --
                -- STANDARD ISSUE GEAR
                --
                print("INFANTRYMAN GEAR IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardGearToInventory(inventory, playername);
                
                --
                -- STANDARD ISSUE BACKPACK
                --
                print("INFANTRYMAN BACKPACK IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardBackpackToInventory(inventory, backpack);

                --
                -- STANDARD ISSUE WEAPONS
                --
                print("INFANTRYMAN WEAPONS ARE BEING ADDED TO: ", playername);
                AddToInventory:addStandardWeaponsToInventory(inventory);

                --
                -- STANDARD ISSUE FIRST AID KIT
                --
                print("INFANTRYMAN FIRST AID KIT IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardIFAKToInventory(inventory, firstaidkit);

                --
                -- STANDARD ISSUE CHESTRIG
                --
                print("INFANTRYMAN CHESTRIG IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardChestrigToInventory(inventory, chestrig);
            end

            -- PROFESSION COMBAT MEDIC
            if prof == "combatmedic" then
                --
                -- STANDARD ISSUE GEAR
                --
                print("COMBAT MEDIC GEAR IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardGearToInventory(inventory, playername);

                --
                -- STANDARD ISSUE TRAUMABAG
                --
                print("COMBAT MEDIC TRAUMABAG IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardTraumaBagToInventory(inventory, traumabag);

                --
                -- STANDARD ISSUE WEAPONS
                --
                print("COMBAT MEDIC WEAPONS ARE BEING ADDED TO: ", playername);
                AddToInventory:addStandardWeaponsToInventory(inventory);

                --
                -- STANDARD ISSUE SATCHEL
                --
                print("COMBAT MEDIC SATCHEL IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardSatchelToInventory(inventory, satchel);

                --
                -- STANDARD ISSUE FIRST AID KIT
                --
                print("COMBAT MEDIC FIRST AID KIT IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardIFAKToInventory(inventory, firstaidkit);

                --
                -- STANDARD ISSUE CHESTRIG
                --
                print("COMBAT MEDIC CHESTRIG IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardChestrigToInventory(inventory, chestrig);
            end

            -- PROFESSION COMBAT ENGINEER
            if prof == "combatengineer" then
                --
                -- STANDARD ISSUE GEAR
                --
                print("COMBAT ENGINEER GEAR IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardGearToInventory(inventory, playername);
                
                --
                -- STANDARD ISSUE BACKPACK
                --
                print("COMBAT ENGINEER BACKPACK IS BEING ADDED TO: ", playername);
                AddToInventory:addCombatEngineerBackpackToInventory(inventory, backpack);

                --
                -- STANDARD ISSUE WEAPONS
                --
                print("COMBAT ENGINEER WEAPONS ARE BEING ADDED TO: ", playername);
                AddToInventory:addStandardWeaponsToInventory(inventory);

                --
                -- STANDARD ISSUE FIRST AID KIT
                --
                print("COMBAT ENGINEER FIRST AID KIT IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardIFAKToInventory(inventory, firstaidkit);

                --
                -- STANDARD ISSUE CHESTRIG
                --
                print("COMBAT ENGINEER CHESTRIG IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardChestrigToInventory(inventory, chestrig);
            end
            
            -- PROFESSION MILITARY POLICE
            if prof == "militarypolice" then
                --
                -- STANDARD ISSUE GEAR
                --
                print("MILITARY POLICE GEAR IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardGearToInventory(inventory, playername);
                inventory:AddItem("Base.Hat_Army"); -- Military Helmet Woodland Camo

                --
                -- STANDARD ISSUE MILITARY POLICE BACKPACK
                --
                print("MILITARY POLICE BACKPACK IS BEING ADDED TO: ", playername);
                AddToInventory:addMilitaryPoliceBackpackToInventory(inventory, backpack);

                --
                -- STANDARD ISSUE WEAPONS
                --
                print("MILITARY POLICE WEAPONS ARE BEING ADDED TO: ", playername);
                AddToInventory:addStandardWeaponsToInventory(inventory);

                --
                -- STANDARD ISSUE FIRST AID KIT
                --
                print("MILITARY POLICE FIRST AID KIT IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardIFAKToInventory(inventory, firstaidkit);

                --
                -- STANDARD ISSUE CHESTRIG
                --
                print("MILITARY POLICE CHESTRIG IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardChestrigToInventory(inventory, chestrig);
            end

            -- PROFESSION MOTOR TRANSPORT OPERATOR
            -- 2x Toolbox 1x Chestrig (Those Who Know, Know)
            if prof == "motortransportoperator" then
                --
                -- STANDARD ISSUE GEAR
                --
                print("MOTOR TRANSPORT OPERATOR GEAR IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardGearToInventory(inventory, playername);
                inventory:AddItem("Base.Hat_Army"); -- Military Helmet Woodland Camo
                
                --
                -- STANDARD ISSUE BACKPACK
                --
                print("MOTOR TRANSPORT OPERATOR BACKPACK IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardBackpackToInventory(inventory, backpack);

                --
                -- STANDARD ISSUE TOOLBOX
                --
                print("MOTOR TRANSPORT OPERATOR TOOLBOX IS BEING ADDED TO: ", playername);
                AddToInventory:addToolboxToInventory(inventory);
                
                --
                -- STANDARD ISSUE WEAPONS
                --
                print("MOTOR TRANSPORT OPERATOR WEAPONS ARE BEING ADDED TO: ", playername);
                AddToInventory:addStandardWeaponsToInventory(inventory);

                --
                -- STANDARD ISSUE FIRST AID KIT
                --
                print("MOTOR TRANSPORT OPERATOR FIRST AID KIT IS BEING ADDED TO: ", playername);
                AddToInventory:addStandardIFAKToInventory(inventory, firstaidkit);

                --
                -- STANDARD ISSUE ALICE BELT AND SUSPENDERS
                --
                print("MOTOR TRANSPORT OPERATOR ALICE BELT AND SUSPENDERS IS BEING ADDED TO: ", playername);
                AddToInventory:addMechanicWebbingToInventory(inventory);
            end
             
        end

        professionDictionary = {
            
           infantryman = {
                -- essentially their "special" item, just gets added to the inventory
                inventory = {"Base.Screwdriver"},

                -- what they will wear once they spawn
                equip = {"Base.Vest_BulletArmy",
                    "Base.Trousers_CamoGreen",
                    "Base.Jacket_ArmyCamoGreen",
                    "Base.Hat_Army",
                    "Base.Tshirt_OliveDrab",
                    "Base.Shoes_ArmyBoots",
                    "Base.Gloves_FingerlessLeatherGloves_Black",
                    "Base.WristWatch_Left_DigitalBlack",
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
                    "Base.WristWatch_Left_DigitalBlack",
                    "Base.Socks_Heavy",
                    "Base.Boxers_White",
                    "Base.HolsterSimple_Green",
                    "Base.Vest_DefaultTEXTURE"},
            },

            combatengineer= {
                
                inventory = {"Base.Axe"},

                equip = {"Base.Vest_BulletArmy",
                    "Base.Trousers_CamoGreen",
                    "Base.Jacket_ArmyCamoGreen",
                    "Base.Hat_Army",
                    "Base.Tshirt_OliveDrab",
                    "Base.Shoes_ArmyBoots",
                    "Base.Gloves_FingerlessLeatherGloves_Black",
                    "Base.WristWatch_Left_DigitalBlack",
                    "Base.Socks_Heavy",
                    "Base.Boxers_White",
                    "Base.HolsterSimple_Green",
                    "Base.Vest_DefaultTEXTURE"},
            },

            militarypolice = {
                
                inventory = {"Base.Nightstick"},

                equip = {"Base.Vest_BulletPolice",
                    "Base.Trousers_CamoGreen",
                    "Base.Jacket_ArmyCamoGreen",
                    "Base.Hat_BeretArmy",
                    "Base.Hat_GasMask",
                    "Base.Tshirt_OliveDrab",
                    "Base.Shoes_ArmyBoots",
                    "Base.Gloves_FingerlessLeatherGloves_Black",
                    "Base.WristWatch_Left_DigitalBlack",
                    "Base.Socks_Heavy",
                    "Base.Boxers_White",
                    "Base.HolsterSimple_Green",
                    "Base.Vest_DefaultTEXTURE"},
            },

            motortransportoperator = {
                
                inventory = {"Base.Wrench"},

                equip = {"Base.Trousers_CamoGreen",
                    "Base.Shirt_CamoGreen",
                    "Base.Tshirt_OliveDrab",
                    "Base.Shoes_ArmyBoots",
                    "Base.Gloves_FingerlessLeatherGloves_Black",
                    "Base.WristWatch_Left_DigitalBlack",
                    "Base.Socks_Heavy",
                    "Base.Boxers_White",
                    "Base.HolsterSimple_Green",
                    "Base.Vest_DefaultTEXTURE"},
            },

        }


        if activate_loadouts then
            setupGear(prof);
        end

end

Events.OnNewGame.Add(kngpGearPlayer)

