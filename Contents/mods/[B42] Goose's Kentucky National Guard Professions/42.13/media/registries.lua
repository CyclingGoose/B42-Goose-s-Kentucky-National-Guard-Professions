-- SPDX-License-Identifier: MIT
--
-- Copyright © 2025 CyclingGoose
--
-- see LICENSE.txt for full license text.
--
-- code commented by CyclingGoose for clarity and personal reference.
--
-- registries.lua

-- registers the lua classes and professions

KNGProfessions = {}
AddToInventory = {}
AddToContainer = {}
KNGProfessions.CharacterProfession = {}
KNGProfessions.CharacterTrait = {}

KNGProfessions.CharacterProfession.KNG_Infantryman = CharacterProfession.register("kngprofessions:infantryman")
KNGProfessions.CharacterProfession.KNG_CombatMedic = CharacterProfession.register("kngprofessions:combatmedic")
KNGProfessions.CharacterProfession.KNG_MilitaryPolice = CharacterProfession.register("kngprofessions:militarypolice")
KNGProfessions.CharacterProfession.KNG_CombatEngineer = CharacterProfession.register("kngprofessions:combatengineer")
KNGProfessions.CharacterProfession.KNG_MotorTransportOperator = CharacterProfession.register("kngprofessions:motortransportoperator")
