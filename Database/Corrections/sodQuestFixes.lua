---@type SeasonOfDiscovery
local SeasonOfDiscovery = QuestieLoader:ImportModule("SeasonOfDiscovery")
---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")
---@type QuestieProfessions
local QuestieProfessions = QuestieLoader:ImportModule("QuestieProfessions")

function SeasonOfDiscovery:LoadQuests()
    local questKeys = QuestieDB.questKeys
    local zoneIDs = ZoneDB.zoneIDs
    local raceIDs = QuestieDB.raceKeys
    local classIDs = QuestieDB.classKeys
    local sortKeys = QuestieDB.sortKeys
    local profKeys = QuestieProfessions.professionKeys
    local specKeys = QuestieProfessions.specializationKeys

    return {
        -- Example from corrections
        -- [65610] = {
        --     [questKeys.name] = "Wish You Were Here",
        --     [questKeys.startedBy] = { { 3363 }, nil, nil },
        --     [questKeys.finishedBy] = { { 5875 }, nil },
        --     [questKeys.requiredLevel] = 20,
        --     [questKeys.questLevel] = -1,
        --     [questKeys.requiredRaces] = raceIDs.ALL_HORDE,
        --     [questKeys.requiredClasses] = classIDs.WARLOCK,
        --     [questKeys.objectivesText] = { "Investigate Fallen Sky Lake in Ashenvale and report your findings to Gan'rul Bloodeye in Orgrimmar." },
        --     [questKeys.preQuestSingle] = { 65601 },
        --     [questKeys.objectives] = { nil, nil, { { 190232 } }, nil, nil },
        --     [questKeys.exclusiveTo] = { 65593 },
        --     [questKeys.zoneOrSort] = sortKeys.WARLOCK,
        -- },

        --- Fake rune quests
        [90000] = {
            [questKeys.name] = "Arcane Blast",
            [questKeys.startedBy] = {{3711,3712,3713,3715,3717,3944}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 20,
            [questKeys.requiredRaces] = raceIDs.NONE,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Kill Wrathtail Naga to receive Naga Manuscript. Then cast Arcane Explosion next to three crystals you find along the shore."},
            [questKeys.requiredSpell] = -401757,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90001] = {
            [questKeys.name] = "Burnout",
            [questKeys.startedBy] = {{208752}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 9,
            [questKeys.requiredRaces] = raceIDs.GNOME,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Gather some Mage and Warlock friends and attack the Frozen Trogg with fire spells."},
            [questKeys.requiredSpell] = -401759,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90002] = {
            [questKeys.name] = "Burnout",
            [questKeys.startedBy] = {{202060}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 9,
            [questKeys.requiredRaces] = raceIDs.HUMAN + raceIDs.UNDEAD,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Gather some Mage and Warlock friends and attack the Frozen Murloc with fire spells."},
            [questKeys.requiredSpell] = -401759,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90003] = {
            [questKeys.name] = "Burnout",
            [questKeys.startedBy] = {{208275}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 9,
            [questKeys.requiredRaces] = raceIDs.TROLL,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Gather some Mage and Warlock friends and attack the Frozen Murloc with fire spells."},
            [questKeys.requiredSpell] = -401759,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90004] = {
            [questKeys.name] = "Fingers of Frost",
            [questKeys.startedBy] = {{1132,1388,1271}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 11,
            [questKeys.requiredRaces] = raceIDs.GNOME,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Kill him."},
            [questKeys.requiredSpell] = -401765,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90005] = {
            [questKeys.name] = "Fingers of Frost",
            [questKeys.startedBy] = {{448}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 11,
            [questKeys.requiredRaces] = raceIDs.HUMAN,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Kill him."},
            [questKeys.requiredSpell] = -401765,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90006] = {
            [questKeys.name] = "Fingers of Frost",
            [questKeys.startedBy] = {{208196}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 11,
            [questKeys.requiredRaces] = raceIDs.UNDEAD,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Kill him."},
            [questKeys.requiredSpell] = -401765,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90007] = {
            [questKeys.name] = "Fingers of Frost",
            [questKeys.startedBy] = {{3205}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 11,
            [questKeys.requiredRaces] = raceIDs.TROLL,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Kill him."},
            [questKeys.requiredSpell] = -401765,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90008] = {
            [questKeys.name] = "Regeneration",
            [questKeys.startedBy] = {nil,{407983}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 14,
            [questKeys.requiredRaces] = raceIDs.GNOME,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Search the hut for a Pile of Stolen Books."},
            [questKeys.requiredSpell] = -401767,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
        [90009] = {
            [questKeys.name] = "Regeneration",
            [questKeys.startedBy] = {nil,{152608,3642}},
            [questKeys.finishedBy] = nil,
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 14,
            [questKeys.requiredRaces] = raceIDs.TROLL + raceIDs.UNDEAD,
            [questKeys.requiredClasses] = classIDs.MAGE,
            [questKeys.objectivesText] = {"Loot the Kolkar's Booty chest."},
            [questKeys.requiredSpell] = -401767,
            [questKeys.zoneOrSort] = sortKeys.MAGE,
        },
    }
end
