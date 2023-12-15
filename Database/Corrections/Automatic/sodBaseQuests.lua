---@type SeasonOfDiscovery
local SeasonOfDiscovery = QuestieLoader:ImportModule("SeasonOfDiscovery")
---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")

--- Load the base quests for Season of Discovery
--- These are generated, do NOT EDIT the data entries here.
--- If you want to edit a quest, do so in sodQuestFixes.lua
function SeasonOfDiscovery:LoadBaseQuests()
    local questKeys = QuestieDB.questKeys
    local zoneIDs = ZoneDB.zoneIDs
    local raceIDs = QuestieDB.raceKeys
    local classIDs = QuestieDB.classKeys
    local sortKeys = QuestieDB.sortKeys

    return {
        [77617] = {
            [questKeys.name] = "Relics of the Light",
            [questKeys.startedBy] = {{925}},
            [questKeys.finishedBy] = {{925,}},
            [questKeys.requiredLevel] = 2,
            [questKeys.questLevel] = 2,
            [questKeys.requiredRaces] = raceIDs.HUMAN,
            [questKeys.requiredClasses] = classIDs.PALADIN,
            [questKeys.objectivesText] = {"Recover the libram and follow its guidance to learn a new ability, then return to Brother Sammuel in Northshire."},
            [questKeys.objectives] = {nil,nil,nil,nil,nil,{410002}},
        },
        [77666] = {
            [questKeys.name] = "Stolen Power",
            [questKeys.startedBy] = {{460}},
            [questKeys.finishedBy] = {{460,}},
            [questKeys.requiredLevel] = 2,
            [questKeys.questLevel] = 2,
            [questKeys.requiredRaces] = raceIDs.GNOME,
            [questKeys.requiredClasses] = classIDs.WARLOCK,
            [questKeys.objectivesText] = {"Recover the rune from the group of Troggs, southwest of Anvilmar, and use it to learn a new ability. Then, return to Alamar Grimm in Anvilmar."},
            [questKeys.objectives] = nil,
        },
        [78611] = {
            [questKeys.name] = "A Waylaid Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 8,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"The shipment's missing some items, but it will still be of some use. &nbsp;Thank you, &lt;name&gt;."},
            [questKeys.objectives] = nil,
        },
        [78612] = {
            [questKeys.name] = "A Full Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 9,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Do you have something for me?"},
            [questKeys.objectives] = nil,
        },
        [78872] = {
            [questKeys.name] = "A Full Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 12,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Do you have something for me?"},
            [questKeys.objectives] = nil,
        },
        [78916] = {
            [questKeys.name] = "The Heart of the Void",
            [questKeys.startedBy] = nil,
            [questKeys.finishedBy] = {{4783,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 25,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Blackfathom Pearl to Dawnwatcher Selgorm in Darnassus."},
            [questKeys.objectives] = nil,
        },
        [78917] = {
            [questKeys.name] = "The Heart of the Void",
            [questKeys.startedBy] = nil,
            [questKeys.finishedBy] = {{9087,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 25,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Blackfathom Pearl to Bashana Runetotem in Thunder Bluff."},
            [questKeys.objectives] = nil,
        },
        [78920] = {
            [questKeys.name] = "Baron Aquanis",
            [questKeys.startedBy] = nil,
            [questKeys.finishedBy] = {{12736,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Strange Water Globe to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale."},
            [questKeys.objectives] = nil,
        },
        [78921] = {
            [questKeys.name] = "Blackfathom Villainy",
            [questKeys.startedBy] = {{4787}},
            [questKeys.finishedBy] = {{4783,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus."},
            [questKeys.objectives] = {nil,nil,{5881}},
        },
        [78922] = {
            [questKeys.name] = "Blackfathom Villainy",
            [questKeys.startedBy] = {{4787}},
            [questKeys.finishedBy] = {{9087,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff."},
            [questKeys.objectives] = {nil,nil,{5881}},
        },
        [78923] = {
            [questKeys.name] = "Knowledge in the Deeps",
            [questKeys.startedBy] = {{2786}},
            [questKeys.finishedBy] = {{2786,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge."},
            [questKeys.objectives] = {nil,nil,{5359}},
        },
        [78925] = {
            [questKeys.name] = "Twilight Falls",
            [questKeys.startedBy] = {{4784}},
            [questKeys.finishedBy] = {{4784,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus."},
            [questKeys.objectives] = {nil,nil,{5879}},
        },
        [78926] = {
            [questKeys.name] = "Researching the Corruption",
            [questKeys.startedBy] = {{8997}},
            [questKeys.finishedBy] = {{8997,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems."},
            [questKeys.objectives] = {nil,nil,{5952}},
        },
        [78927] = {
            [questKeys.name] = "Allegiance to the Old Gods",
            [questKeys.startedBy] = {{12736}},
            [questKeys.finishedBy] = {{12736,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale."},
            [questKeys.objectives] = nil,
        },
        [79090] = {
            [questKeys.name] = "Repelling Invaders",
            [questKeys.startedBy] = nil,
            [questKeys.finishedBy] = {{212970,}},
            [questKeys.requiredLevel] = 18,
            [questKeys.questLevel] = 25,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Warsong Outrider Mark to Felore Moonray, Priestess of the Moon, at the Moonwell base in Ashenvale."},
            [questKeys.objectives] = nil,
        },
        [79098] = {
            [questKeys.name] = "Clear the Forest!",
            [questKeys.startedBy] = nil,
            [questKeys.finishedBy] = {{212969,}},
            [questKeys.requiredLevel] = 18,
            [questKeys.questLevel] = 25,
            [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Silverwing Sentinel Charm to Kazragore, Far Seer, at the Bonfire base in Ashenvale."},
            [questKeys.objectives] = nil,
        },
        [79099] = {
            [questKeys.name] = "Baron Aquanis",
            [questKeys.startedBy] = {{214876}},
            [questKeys.finishedBy] = {{214876,}},
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 27,
            [questKeys.requiredRaces] = raceIDs.ALL_ALLIANCE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Bring the Strange Water Globe to Davidus Voidstar in Auberdine, Darkshore."},
            [questKeys.objectives] = {nil,nil,{211818}},
        },
        [79100] = {
            [questKeys.name] = "A Waylaid Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 15,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"The shipment's missing some items, but it will still be of some use. &nbsp;Thank you, &lt;name&gt;."},
            [questKeys.objectives] = nil,
        },
        [79101] = {
            [questKeys.name] = "A Full Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 18,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Do you have something for me?"},
            [questKeys.objectives] = nil,
        },
        [79102] = {
            [questKeys.name] = "A Full Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 22,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Do you have something for me?"},
            [questKeys.objectives] = nil,
        },
        [79103] = {
            [questKeys.name] = "A Full Shipment",
            [questKeys.startedBy] = {{214101}},
            [questKeys.finishedBy] = {{213077,214070,214096,214098,214099,214101,}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 25,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Do you have something for me?"},
            [questKeys.objectives] = nil,
        },
        [79492] = {
            [questKeys.name] = "Metzen the Reindeer",
            [questKeys.startedBy] = nil,
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 25,
            [questKeys.questLevel] = 60,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.NONE,
            [questKeys.objectivesText] = {"Find Metzen the Reindeer.  Use the notes provided to you for clues as to where he is being held.When you find Metzen, have the Pouch of Reindeer Dust in your possession so you can sprinkle some of the dust on him; this should free Metzen from his bonds of captivity.Return the Pouch of Reindeer Dust to Wulmort Jinglepocket in Ironforge once Metzen is freed."},
            [questKeys.objectives] = {nil,nil,{21211,21315}},
        },
    }
end
