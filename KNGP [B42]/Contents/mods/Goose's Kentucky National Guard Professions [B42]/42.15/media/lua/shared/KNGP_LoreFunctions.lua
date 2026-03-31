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
-- KNGP_JournalFunctions.lua

-- holds the functions for writing lore in journals
-- this is used for the CBRN Specialist profession but can be expanded for other professions if desired 
-- this is separate from the AddToContainer/Inventory functions since it is more of a utility than a container population function, and it keeps the code cleaner to have it separate

require "KNGP_Data";

local function determineJournalName(type)
    if journalNames[type] then
        return journalNames[type]
    else
        return "Journal"
    end
end

function LoreFunctions:writeLoreInJournal(type, journal)
    local journalname = determineJournalName(type);
    local journaltext = journalText[type]

    journal:setCanBeWrite(true);
    journal:addPage(1, journaltext.page_1);
    journal:addPage(2, journaltext.page_2);

    journal:setName(journalname);
end

function LoreFunctions:pickPhotographName(photograph)
    local photographname = normalPhotographNames[GeneralFunctions:randomNumberTableIndex(normalPhotographNames)];
    photograph:setName(photographname);
end
