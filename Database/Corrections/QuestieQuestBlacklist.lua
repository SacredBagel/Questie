---@class QuestieQuestBlacklist
local QuestieQuestBlacklist = QuestieLoader:CreateModule("QuestieQuestBlacklist")
---@type QuestieCorrections
local QuestieCorrections = QuestieLoader:ImportModule("QuestieCorrections")

function QuestieQuestBlacklist:Load()
    local questsToBlacklist = {
        [7462] = true, -- Duplicate of 7877. See #1583
        [5663] = true, -- Touch of Weakness of Dark Cleric Beryl - Fixing #730
        [5658] = true, -- Touch of Weakness of Father Lankester -- See #1603
        [2358] = true, -- Horns of Nez'ra is not in the game at this point. See #921
        [787] = true, -- The New Horde is not in the game. See #830
        [6606] = true, -- Quest is not in the game. See #1338
        [6072] = true, -- Ayanna Everstride doesn't start "Hunter's Path" (this quest is most likely simply not in the game) #700
        [614] = true, -- Duplicate of 8551
        [615] = true, -- Duplicate of 8553. See #2215
        [618] = true, -- Duplicate of 8554
        [934] = true, -- Duplicate of 7383. See #2386
        [960] = true, -- Duplicate of 961
        [9378] = true, -- Naxxramas quest which doesn't seem to be in the game
        [1318] = true, -- Duplicate of 7703 and not in the game
        [7704] = true, -- Not in the game
        [7668] = true, -- Not in the game (yet) Replaced with 8258 in Ph 4-- #1805
        [636] = true, -- Not in the game - #1900
        [6066] = true, -- Not in the game - #1957
        [4603] = true, -- Duplicate of 2953
        [4604] = true, -- Duplicate of 2953
        [8856] = true, -- Duplicate of 8497
        [936] = true,  -- Seems to not be in the game
        -- Welcome! quests (Collectors Edition)
        [5805] = true,
        [5841] = true,
        [5842] = true,
        [5843] = true,
        [5844] = true,
        [5847] = true,
        --Stray quests
        [3861] = true, --CLUCK!
        --World event quests
        --Fetched from https://classic.wowhead.com/world-event-quests
        [7904] = true,
        [8571] = true,
        [7930] = true,
        [7931] = true,
        [7935] = true,
        [7932] = true,
        [7933] = true,
        [7934] = true,
        [7936] = true,
        [7981] = true,
        [7940] = true,
        [8744] = true,
        [8803] = true,
        [8768] = true,
        [8788] = true,
        [8767] = true,
        [9319] = true,
        [9386] = true,
        [7045] = true,
        [6984] = true,
        [9365] = true,
        [9339] = true,
        [8769] = true,
        [171] = true,
        [5502] = true,
        [7885] = true,
        [8647] = true,
        [7892] = true,
        [8715] = true,
        [8719] = true,
        [8718] = true,
        [8673] = true,
        [8726] = true,
        [8866] = true,
        [925] = true,
        [7881] = true,
        [7882] = true,
        [8353] = true,
        [8354] = true,
        [172] = true,
        [1468] = true,
        [8882] = true,
        [8880] = true,
        [7889] = true,
        [7894] = true,
        [1658] = true,
        [7884] = true,
        [8357] = true,
        [8360] = true,
        [8648] = true,
        [8677] = true,
        [7907] = true,
        [7906] = true,
        [7929] = true,
        [7927] = true,
        [7928] = true,
        [8683] = true,
        [910] = true,
        [8684] = true,
        [8868] = true,
        [8862] = true,
        [7903] = true,
        [8727] = true,
        [8863] = true,
        [8864] = true,
        [8865] = true,
        [8878] = true,
        [8877] = true,
        [8356] = true,
        [8359] = true,
        [9388] = true,
        [9389] = true,
        [911] = true,
        [8222] = true,
        [8653] = true,
        [8652] = true,
        [6961] = true,
        [7021] = true,
        [7024] = true,
        [7022] = true,
        [7023] = true,
        [7896] = true,
        [7891] = true,
        [8679] = true,
        [8311] = true,
        [8312] = true,
        [8646] = true,
        [7890] = true,
        [8686] = true,
        [8643] = true,
        [8149] = true,
        [8150] = true,
        [8355] = true,
        [8358] = true,
        [8651] = true,
        [558] = true,
        [8881] = true,
        [8879] = true,
        [1800] = true,
        [8867] = true,
        [8722] = true,
        [7897] = true,
        [8762] = true,
        [8746] = true,
        [8685] = true,
        [8714] = true,
        [8717] = true,
        [7941] = true,
        [7943] = true,
        [7939] = true,
        [8223] = true,
        [7942] = true,
        [8619] = true,
        [8724] = true,
        [8861] = true,
        [8860] = true,
        [8723] = true,
        [8645] = true,
        [8654] = true,
        [8678] = true,
        [8671] = true,
        [7893] = true,
        [8725] = true,
        [8322] = true,
        [8409] = true,
        [8636] = true,
        [8670] = true,
        [8642] = true,
        [8675] = true,
        [8720] = true,
        [8682] = true,
        [7899] = true,
        [8876] = true,
        [8650] = true,
        [7901] = true,
        [7946] = true,
        [8635] = true,
        [1687] = true,
        [8716] = true,
        [8713] = true,
        [8721] = true,
        [9332] = true,
        [9331] = true,
        [9324] = true,
        [9330] = true,
        [9326] = true,
        [9325] = true,
        [1657] = true,
        [7042] = true,
        [6963] = true,
        [8644] = true,
        [8672] = true,
        [8649] = true,
        [1479] = true,
        [7063] = true,
        [7061] = true,
        [9368] = true,
        [9367] = true,
        [8763] = true,
        [8799] = true,
        [8873] = true,
        [8874] = true,
        [8875] = true,
        [8870] = true,
        [8871] = true,
        [8872] = true,
        [8373] = true,
        [7062] = true,
        [6964] = true,
        [1558] = true,
        [7883] = true,
        [7898] = true,
        [8681] = true,
        [7900] = true,
        [6962] = true,
        [7025] = true,
        [8883] = true,
        [7902] = true,
        [7895] = true,
        [9322] = true,
        [9323] = true,
        [8676] = true,
        [8688] = true,
        [8680] = true,
        [8828] = true,
        [8827] = true,
        [8674] = true,
        [915] = true,
        [4822] = true,
        [7043] = true,
        [6983] = true,
        [7937] = true,
        [7938] = true,
        [7944] = true,
        [7945] = true,
        [8857] = true,
        [8858] = true,
        [8859] = true,
        --Rocknot's Ale instance quest shown in SG/BS at lvl 1
        [4295] = true,
        --mount exchange/replacement
        [7678] = true,
        [7677] = true,
        [7673] = true,
        [7674] = true,
        [7671] = true,
        [7665] = true,
        [7675] = true,
        [7664] = true,
        [7672] = true,
        [7676] = true,
        --fishing tournament
        [8194] = true,
        [8221] = true,
        [8224] = true,
        [8225] = true,
        [8193] = true,
        [8226] = true,
        [8228] = true,
        [8229] = true,
        --love is in the air
        [8903] = true,
        [8904] = true,
        [8897] = true,
        [8898] = true,
        [8899] = true,
        [9029] = true,
        [8981] = true,
        [8993] = true,
        [8900] = true,
        [8901] = true,
        [8902] = true,
        [9024] = true,
        [9025] = true,
        [9026] = true,
        [9027] = true,
        [9028] = true,
        [8971] = true,
        [8972] = true,
        [8973] = true,
        [8974] = true,
        [8975] = true,
        [8976] = true,
        [8979] = true,
        [8980] = true,
        [8982] = true,
        [8983] = true,
        [8984] = true,
        -- TBC event quests
        [9249] = QuestieCorrections.TBC_ONLY,
        [10938] = true,
        [10939] = true,
        [10940] = true,
        [10941] = true,
        [10942] = true,
        [10943] = true,
        [11117] = true,
        [11118] = true,
        [11120] = true,
        [11127] = true,
        [11131] = true,
        [11135] = true,
        [11219] = true,
        [11220] = true,
        [11318] = true,
        [11320] = true,
        [11356] = true,
        [11357] = true,
        [11360] = true,
        [11361] = true,
        [11392] = true,
        [11400] = true,
        [11401] = true,
        [11404] = true,
        [11405] = true,
        [11409] = true,
        [11437] = true,
        [11438] = true,
        [11439] = true,
        [11440] = true,
        [11441] = true,
        [11442] = true,
        [11446] = true,
        [12062] = true,
        [11447] = true,
        [11449] = true,
        [11450] = true,
        [11454] = true,
        [11528] = true,
        [11580] = true,
        [11581] = true,
        [11583] = true,
        [11584] = true,
        [11691] = true,
        [11696] = true,
        [11731] = true,
        [11732] = true,
        [11734] = true,
        [11735] = true,
        [11736] = true,
        [11737] = true,
        [11738] = true,
        [11739] = true,
        [11740] = true,
        [11741] = true,
        [11742] = true,
        [11743] = true,
        [11744] = true,
        [11745] = true,
        [11746] = true,
        [11747] = true,
        [11748] = true,
        [11749] = true,
        [11750] = true,
        [11751] = true,
        [11752] = true,
        [11753] = true,
        [11754] = true,
        [11755] = true,
        [11756] = true,
        [11757] = true,
        [11758] = true,
        [11759] = true,
        [11760] = true,
        [11761] = true,
        [11762] = true,
        [11763] = true,
        [11764] = true,
        [11765] = true,
        [11766] = true,
        [11767] = true,
        [11768] = true,
        [11769] = true,
        [11770] = true,
        [11771] = true,
        [11772] = true,
        [11773] = true,
        [11774] = true,
        [11775] = true,
        [11776] = true,
        [11777] = true,
        [11778] = true,
        [11779] = true,
        [11780] = true,
        [11781] = true,
        [11782] = true,
        [11783] = true,
        [11784] = true,
        [11785] = true,
        [11786] = true,
        [11787] = true,
        [11799] = true,
        [11800] = true,
        [11801] = true,
        [11802] = true,
        [11803] = true,
        [11804] = true,
        [11805] = true,
        [11806] = true,
        [11807] = true,
        [11808] = true,
        [11809] = true,
        [11810] = true,
        [11811] = true,
        [11812] = true,
        [11813] = true,
        [11814] = true,
        [11815] = true,
        [11816] = true,
        [11817] = true,
        [11818] = true,
        [11819] = true,
        [11820] = true,
        [11821] = true,
        [11822] = true,
        [11823] = true,
        [11824] = true,
        [11825] = true,
        [11826] = true,
        [11827] = true,
        [11828] = true,
        [11829] = true,
        [11830] = true,
        [11831] = true,
        [11832] = true,
        [11833] = true,
        [11834] = true,
        [11835] = true,
        [11836] = true,
        [11837] = true,
        [11838] = true,
        [11839] = true,
        [11840] = true,
        [11841] = true,
        [11842] = true,
        [11843] = true,
        [11844] = true,
        [11845] = true,
        [11846] = true,
        [11847] = true,
        [11848] = true,
        [11849] = true,
        [11850] = true,
        [11851] = true,
        [11852] = true,
        [11853] = true,
        [11854] = true,
        [11855] = true,
        [11856] = true,
        [11857] = true,
        [11858] = true,
        [11859] = true,
        [11860] = true,
        [11861] = true,
        [11862] = true,
        [11863] = true,
        [11882] = true,
        [11886] = true,
        [11915] = true,
        [11921] = true,
        [11922] = true,
        [11923] = true,
        [11924] = true,
        [11925] = true,
        [11926] = true,
        [11933] = true,
        [11935] = true,
        [11954] = true,
        [11955] = true,
        [11972] = true,
        [11964] = true,
        [11966] = true,
        [11970] = true,
        [11971] = true,
        [12020] = true,
        [12192] = true,
        [11293] = true,
        [11294] = true,
        [11407] = true,
        [11408] = true,
        [11412] = true,
        [11122] = true,
        [12318] = true,
        [12022] = true,
        [12062] = true,
        [12133] = true,
        [12135] = true,
        [12139] = true,
        [12191] = true,
        [12194] = true,
        [12278] = true,
        [12155] = true,
        [12286] = true,
        [12331] = true,
        [12332] = true,
        [12333] = true,
        [12334] = true,
        [12335] = true,
        [12336] = true,
        [12337] = true,
        [12338] = true,
        [12339] = true,
        [12340] = true,
        [12341] = true,
        [12342] = true,
        [12343] = true,
        [12344] = true,
        [12345] = true,
        [12346] = true,
        [12347] = true,
        [12348] = true,
        [12349] = true,
        [12350] = true,
        [12351] = true,
        [12352] = true,
        [12353] = true,
        [12354] = true,
        [12355] = true,
        [12356] = true,
        [12357] = true,
        [12358] = true,
        [12359] = true,
        [12360] = true,
        [12361] = true,
        [12362] = true,
        [12363] = true,
        [12364] = true,
        [12365] = true,
        [12366] = true,
        [12367] = true,
        [12368] = true,
        [12369] = true,
        [12370] = true,
        [12371] = true,
        [12373] = true,
        [12374] = true,
        [12375] = true,
        [12376] = true,
        [12377] = true,
        [12378] = true,
        [12379] = true,
        [12380] = true,
        [12381] = true,
        [12382] = true,
        [12383] = true,
        [12384] = true,
        [12385] = true,
        [12386] = true,
        [12387] = true,
        [12388] = true,
        [12389] = true,
        [12390] = true,
        [12391] = true,
        [12392] = true,
        [12393] = true,
        [12394] = true,
        [12395] = true,
        [12396] = true,
        [12397] = true,
        [12398] = true,
        [12399] = true,
        [12400] = true,
        [12401] = true,
        [12402] = true,
        [12403] = true,
        [12404] = true,
        [12406] = true,
        [12407] = true,
        [12408] = true,
        [12409] = true,
        [12420] = true,
        [12421] = true,
        ----------------

        --mount replacement
        [7662] = true,
        [7663] = true,
        [7660] = true,
        [7661] = true,
        -- PvP Quests which are not in the game anymore
        -----------------------------------------------
        -- Vanquish the Invaders
        [7788] = true,
        [7871] = true,
        [7872] = true,
        [7873] = true,
        [8290] = true,
        [8291] = true,
        -- Talisman of Merit
        [7886] = true,
        [7887] = true,
        [7888] = true,
        [7921] = true,
        [8567] = true,
        [8289] = true,
        [8292] = true,
        [8001] = true,
        -- Quell the Silverwing Usurpers
        [7789] = true,
        [7874] = true,
        [7875] = true,
        [7876] = true,
        [8294] = true,
        [8295] = true,
        -- Warsong Mark of Honor
        [7922] = true,
        [7923] = true,
        [7924] = true,
        [7925] = true,
        [8293] = true,
        [8296] = true,
        [8568] = true,
        [8002] = true,
        -- Arathi Basin
        [8081] = true,
        [8124] = true,
        [8157] = true,
        [8158] = true,
        [8159] = true,
        [8163] = true,
        [8164] = true,
        [8165] = true,
        [8298] = true,
        [8300] = true,
        [8565] = true,
        [8566] = true,
        [8123] = true,
        [8160] = true,
        [8161] = true,
        [8162] = true,
        [8299] = true,
        [8080] = true,
        [8154] = true,
        [8155] = true,
        [8156] = true,
        [8297] = true,
        -- Alterac Valley
        [7221] = true,
        [7222] = true,
        [7367] = true,
        [7368] = true,
        -- Master Ryson's All Seeing Eye
        [6847] = true,
        [6848] = true,
        -- WANTED: Orcs and WANTED: Dwarves
        [7402] = true,
        [7428] = true,
        [7401] = true,
        [7427] = true,
        -- Ribbons of Sacrifice
        [8266] = true,
        [8267] = true,
        [8268] = true,
        [8269] = true,
        [8569] = true,
        [8570] = true,
        -----------------------------------------------

        -- corrupted windblossom
        [2523] = true,
        [2878] = true,
        [3363] = true,
        [4113] = true,
        [4114] = true,
        [4116] = true,
        [4118] = true,
        [4401] = true,
        [4464] = true,
        [4465] = true,
        [996] = true,
        [998] = true,
        [1514] = true,
        [4115] = true,
        [4221] = true,
        [4222] = true,
        [4343] = true,
        [4403] = true,
        [4466] = true,
        [4467] = true,
        [4117] = true,
        [4443] = true,
        [4444] = true,
        [4445] = true,
        [4446] = true,
        [4461] = true,
        [4119] = true,
        [4447] = true,
        [4448] = true,
        [4462] = true,

        --Darkmoon Faire
        [7905] = true,
        [7926] = true,

        [8743] = true, -- Bang a Gong! (AQ40 opening quest)

        -- Classic Phase 6 Invasion quests
        -- Investigate the Scourge of X
        [9260] = true,
        [9261] = true,
        [9262] = true,
        [9263] = true,
        [9264] = true,
        [9265] = true,
        --
        [9085] = true,
        [9153] = true,
        [9154] = true,
        --

        ----- TBC -------------- TBC quests --------------- TBC -----
        ----- TBC ------------- starting here -------------- TBC -----

        -- [BETA] quests
        [402] = true, -- Sirra is Busy
        [785] = true, -- A Strategic Alliance
        [999] = true, -- When Dreams Turn to Nightmares
        [1005] = true, -- What Lurks Beyond
        [1006] = true, -- What Lies Beyond
        [1099] = true, -- Goblins Win!
        [1263] = true, -- The Burning Inn <CHANGE TO GOSSIP>
        [1272] = true, -- Finding Reethe <CHANGE INTO GOSSIP>
        [1281] = true, -- Jim's Song <CHANGE TO GOSSIP>
        [1289] = true, -- Vimes's Report
        [1500] = true, -- Waking Naralex
        [7961] = true, -- Waskily Wabbits!
        [8478] = true, -- Choose Your Weapon
        [8489] = true, -- An Intact Converter
        [8896] = true, -- The Dwarven Spy
        [9168] = true, -- Heart of Deatholme
        [9342] = true, -- Marauding Crust Bursters
        [9344] = true, -- A Hasty Departure
        [9346] = true, -- When Helboars Fly
        [9357] = true, -- Report to Aeldon Sunbrand
        [9382] = true, -- The Fate of the Clefthoof
        [9408] = true, -- Forgotten Heroes
        [9511] = true, -- Kargath's Battle Plans
        [9568] = true, -- On the Offensive
        [9749] = true, -- They're Alive! Maybe...
        [9929] = true, -- The Missing Merchant
        [9930] = true, -- The Missing Merchant
        [9941] = true, -- Tracking Down the Culprits
        [9942] = true, -- Tracking Down the Culprits
        [9943] = true, -- Return to Thander
        [9947] = true, -- Return to Rokag
        [9949] = true, -- A Bird's-Eye View
        [9950] = true, -- A Bird's-Eye View
        [9952] = true, -- Prospector Balmoral
        [9953] = true, -- Lookout Nodak
        [9958] = true, -- Scouting the Defenses
        [9959] = true, -- Scouting the Defenses
        [9963] = true, -- Seeking Help from the Source
        [9964] = true, -- Seeking Help from the Source
        [9965] = true, -- A Show of Good Faith
        [9966] = true, -- A Show of Good Faith
        [9969] = true, -- The Final Reagents
        [9974] = true, -- The Final Reagents
        [9975] = true, -- Primal Magic
        [9976] = true, -- Primal Magic
        [9980] = true, -- Rescue Deirom!
        [9981] = true, -- Rescue Dugar!
        [9984] = true, -- Host of the Hidden City
        [9985] = true, -- Host of the Hidden City
        [9988] = true, -- A Dandy's Best Friend
        [9989] = true, -- Alien Spirits
        [10014] = true, -- The Firewing Point Project
        [10015] = true, -- The Firewing Point Project
        [10029] = true, -- The Spirits Are Calling
        [10046] = true, -- Through the Dark Portal
        [10053] = true, -- Dealing with Zeth'Gor
        [10054] = true, -- Impending Doom
        [10056] = true, -- Bleeding Hollow Supplies
        [10059] = true, -- Dealing With Zeth'Gor
        [10060] = true, -- Impending Doom
        [10061] = true, -- The Unyielding
        [10062] = true, -- Looking to the Leadership
        [10084] = true, -- Assault on Mageddon
        [10088] = true, -- When This Mine's a-Rockin'
        [10089] = true, -- Forge Camps of the Legion
        [10092] = true, -- Assault on Mageddon
        [10100] = true, -- The Mastermind
        [10122] = true, -- The Citadel's Reach
        [10125] = true, -- Mission: Disrupt Communications
        [10126] = true, -- Warboss Nekrogg's Orders
        [10127] = true, -- Mission: Sever the Tie
        [10128] = true, -- Saving Private Imarion
        [10130] = true, -- The Western Flank
        [10131] = true, -- Planning the Escape
        [10133] = true, -- Mission: Kill the Messenger
        [10135] = true, -- Mission: Be the Messenger
        [10137] = true, -- Provoking the Warboss
        [10138] = true, -- Under Whose Orders?
        [10139] = true, -- Dispatching the Commander
        [10145] = true, -- Mission: Sever the Tie UNUSED
        [10147] = true, -- Mission: Kill the Messenger
        [10148] = true, -- Mission: Be the Messenger
        [10149] = true, -- Mission: End All, Be All
        [10150] = true, -- The Citadel's Reach
        [10151] = true, -- Warboss Nekrogg's Orders
        [10152] = true, -- The Western Flank
        [10153] = true, -- Saving Scout Makha
        [10154] = true, -- Planning the Escape
        [10155] = true, -- Provoking the Warboss
        [10156] = true, -- Under Whose Orders?
        [10157] = true, -- Dispatching the Commander
        [10158] = true, -- Bleeding Hollow Supplies
        [10179] = true, -- The Custodian of Kirin'Var
        [10187] = true, -- A Message for the Archmage
        [10195] = true, -- Mercenary See, Mercenary Do
        [10196] = true, -- More Arakkoa Feathers
        [10207] = true, -- Forward Base: Reaver's Fall REUSE
        [10214] = true, -- When This Mine's a-Rockin'
        [10244] = true, -- R.T.F.R.C.M.
        [10260] = true, -- Netherologist Coppernickels
        [10292] = true, -- More Power!
        [10370] = true, -- Nazgrel's Command <TXT>
        [10375] = true, -- Obsidian Warbeads
        [10386] = true, -- The Fel Reaver Slayer
        [10387] = true, -- The Fel Reaver Slayer
        [10398] = true, -- Return to Honor Hold
        [10401] = true, -- Mission: End All, Be All
        [10404] = true, -- Against the Legion
        [10441] = true, -- Peddling the Goods
        [10716] = true, -- Test Flight: Raven's Wood <needs reward>
        [10815] = true, -- The Journal of Val'zareq: Portends of War
        [10841] = true, -- The Vengeful Harbringer
        [10844] = true, -- Forge Camp: Anger
        [10871] = true, -- Ally of the Netherwing
        [10872] = true, -- Zuluhed the Whacked
        [10925] = true, -- Evil Draws Near

        -- <NYI> quests
        [3482] = true, -- <NYI> <TXT> The Pocked Black Box
        [7741] = true, -- Praise from the Emerald Circle <NYI> <TXT>
        [8339] = true, -- Royalty of the Council <NYI> <TXT> UNUSED
        [8340] = true, -- Twilight Signet Ring <NYI> <TXT>

        -- [Not Used] quests
        [620] = true, -- UNUSED The Monogrammed Sash
        [1390] = true, -- BETA Oops, We Killed Them Again.
        [2019] = true, -- Tools of the Trade
        [5383] = true, -- Krastinov's Bag of Horrors
        [8530] = true, -- The Alliance Needs Singed Corestones!
        [8618] = true, -- The Horde Needs More Singed Corestones!
        [9380] = true, -- BETA Hounded for More
        [9510] = true, -- BETA Bristlehide Clefthoof Hides
        [9599] = true, -- <UNUSED>
        [9750] = true, -- UNUSED Urgent Delivery
        [9767] = true, -- Know Your Enemy
        [9955] = true, -- A Show of Good Faith
        [10090] = true, -- BETA The Legion's Plans
        [11027] = true, -- NOT IN GAME: Yous Have Da Darkrune? , "replaced" by 11060 (A Crystalforged Darkrune)

        [1] = true, -- Unavailable quest "The "Chow" Quest (123)aa"
        [2881] = QuestieCorrections.TBC_ONLY, -- Wildhammer faction removed in TBC. Repeatable to gain rep
        [8329] = true, -- Warrior Training / Not in the game
        [8547] = true, -- Welcome!
        [9065] = true, -- Unavailable quest "The "Chow" Quest (123)aa"
        [9278] = true, -- Welcome!
        [9681] = true, -- Replaced with [A Study in Power (64319)]
        [9684] = true, -- Replaced with [Claiming the Light (63866)]
        [9721] = true, -- Replaced with [A Summons from Lady Liadrin (64139)]
        [9722] = true, -- Replaced with [The Master's Path (64140)]
        [9723] = true, -- Replaced with [A Gesture of Commitment (64141)]
        [9725] = true, -- Replaced with [A Demonstration of Loyalty (64142)]
        [9735] = true, -- Replaced with [True Masters of the Light (64143)]
        [9736] = true, -- Replaced with [True Masters of the Light (64144)]
        [9737] = true, -- Replaced with [True Masters of the Light  (64145)]
        [9926] = true, -- FLAG Shadow Council/Warmaul Questline
        [10048] = true, -- A Handful of Magic Dust BETA
        [10049] = true, -- A Handful of Magic Dust BETA
        [10169] = true, -- Losing Gracefully (removed with 2.4.0)
        [10259] = true, -- Into the Breach (TBC Pre patch event)
        [10364] = true, -- Caedmos (Unavailable Priest quest)
        [10379] = true, -- Touch of Weakness (Followup of NOT A QUEST)
        [10534] = true, -- Returning Home (Unavailable Priest quest)
        [10539] = true, -- Returning Home (Unavailable Priest quest)
        [10638] = true, -- NOT A QUEST (Unavailable Priest quest)
        [10779] = true, -- The Hunter's Path (Unused)
        [10931] = true, -- Level 0 Priest quest
        [10932] = true, -- Level 0 Priest quest
        [10933] = true, -- Level 0 Priest quest
        [10934] = true, -- Level 0 Priest quest
        [64028] = true, -- First quest for boosted characters. Blocked to not show for others
        [64037] = true, -- Boosted character quest
        [64038] = true, -- Boosted character quest
        [64046] = true, -- First quest for boosted characters. Blocked to not show for others
        [64047] = true, -- First quest for boosted characters. Blocked to not show for others
        [64063] = true, -- Boosted character quest
        [64064] = true, -- Boosted character quest
        [64128] = true, -- Boosted character quest
        [64217] = true, -- Boosted character quest

        -- Revered Among X quests
        [10459] = true,
        [10558] = true,
        [10559] = true,
        [10560] = true,
        [10561] = true,

        [11497] = true, -- Learning to Fly (requires NOT to have flying skill, which can't be handled atm)
        [11498] = true, -- Learning to Fly (requires NOT to have flying skill, which can't be handled atm)

        -- [OLD] quests. Classic quests deprecated in TBC
        [708] = true,
        [909] = true,
        [1288] = true,
        [1661] = true,
        [3366] = true,
        [3381] = true,
        [3631] = true,
        [4487] = true,
        [4488] = true,
        [4489] = true,
        [4490] = true,
        [5627] = true,
        [5641] = true,
        [5645] = true,
        [5647] = true,
        [6131] = true,
        [6221] = true,
        [6241] = true,
        [7364] = true,
        [7365] = true,
        [7421] = true,
        [7422] = true,
        [7423] = true,
        [7425] = true,
        [7426] = true,
        [7521] = true,
        [8368] = true,
        [8383] = true,
        [8384] = true,
        [8386] = true,
        [8387] = true,
        [8390] = true,
        [8391] = true,
        [8392] = true,
        [8397] = true,
        [8398] = true,
        [8404] = true,
        [8405] = true,
        [8406] = true,
        [8407] = true,
        [8408] = true,
        [8411] = true,
        [8426] = true,
        [8427] = true,
        [8428] = true,
        [8429] = true,
        [8430] = true,
        [8440] = true,
        [8441] = true,
        [8442] = true,
        [8443] = true,
        [9712] = true,
        [10377] = true,
        [11052] = true,

        -- Classic only PvP quests
        [8369] = QuestieCorrections.TBC_ONLY,
        [8370] = QuestieCorrections.TBC_ONLY,
        [8372] = QuestieCorrections.TBC_ONLY,
        [8374] = QuestieCorrections.TBC_ONLY,
        [8375] = QuestieCorrections.TBC_ONLY,
        [8389] = QuestieCorrections.TBC_ONLY,
        [8393] = QuestieCorrections.TBC_ONLY,
        [8394] = QuestieCorrections.TBC_ONLY,
        [8395] = QuestieCorrections.TBC_ONLY,
        [8396] = QuestieCorrections.TBC_ONLY,
        [8399] = QuestieCorrections.TBC_ONLY,
        [8400] = QuestieCorrections.TBC_ONLY,
        [8401] = QuestieCorrections.TBC_ONLY,
        [8402] = QuestieCorrections.TBC_ONLY,
        [8403] = QuestieCorrections.TBC_ONLY,
        [8431] = QuestieCorrections.TBC_ONLY,
        [8432] = QuestieCorrections.TBC_ONLY,
        [8433] = QuestieCorrections.TBC_ONLY,
        [8434] = QuestieCorrections.TBC_ONLY,
        [8435] = QuestieCorrections.TBC_ONLY,
        [8436] = QuestieCorrections.TBC_ONLY,
        [8437] = QuestieCorrections.TBC_ONLY,
        [8438] = QuestieCorrections.TBC_ONLY,
        [8439] = QuestieCorrections.TBC_ONLY,

        -- Netherwing
        [11012] = true,
        [11013] = true,
        [11015] = true,
        [11016] = true,
        [11017] = true,
        [11018] = true,
        [11020] = true,
        [11035] = true,
        [11041] = true,
        [11049] = true,
        [11050] = true,
        [11053] = true,
        [11054] = true,
        [11055] = true,
        [11064] = true,
        [11067] = true,
        [11068] = true,
        [11069] = true,
        [11070] = true,
        [11071] = true,
        [11075] = true,
        [11076] = true,
        [11077] = true,
        [11081] = true,
        [11082] = true,
        [11083] = true,
        [11084] = true,
        [11086] = true,
        [11089] = true,
        [11090] = true,
        [11092] = true,
        [11094] = true,
        [11097] = true,
        [11099] = true,
        [11101] = true,
        [11108] = true,

        -- Phase 3 - Hyjal, Black Temple
        [10460] = true,
        [10461] = true,
        [10462] = true,
        [10463] = true,
        [10464] = true,
        [10465] = true,
        [10466] = true,
        [10467] = true,
        [10468] = true,
        [10469] = true,
        [10470] = true,
        [10471] = true,
        [10472] = true,
        [10473] = true,
        [10474] = true,
        [10475] = true,
        [10944] = true,
        [10946] = true,
        [10947] = true,
        [10948] = true,
        [10949] = true,
        [10957] = true,
        [10958] = true,
        [10959] = true,
        [10985] = true,

        -- Phase 4 Zul'Aman
        [11130] = true,
        [11132] = true,
        [11163] = true,
        [11164] = true,
        [11178] = true,
        [11196] = true,

        -- Phase 5 Sunwell and Isle of Quel'Danas
        [11481] = true,
        [11482] = true,
        [11488] = true,
        [11496] = true,
        [11513] = true,
        [11514] = true,
        [11515] = true,
        [11516] = true,
        [11517] = true,
        [11520] = true,
        [11521] = true,
        [11523] = true,
        [11524] = true,
        [11525] = true,
        [11526] = true,
        [11532] = true,
        [11533] = true,
        [11534] = true,
        [11535] = true,
        [11536] = true,
        [11537] = true,
        [11538] = true,
        [11539] = true,
        [11540] = true,
        [11541] = true,
        [11542] = true,
        [11543] = true,
        [11544] = true,
        [11545] = true,
        [11546] = true,
        [11547] = true,
        [11548] = true,
        [11549] = true,
        [11550] = true,
        [11554] = true,
        [11555] = true,
        [11556] = true,
        [11557] = true,
        [11875] = true,
        [11880] = true,
        [11877] = true,
    }

    if Questie.IsSoM then
        Questie:Debug(Questie.DEBUG_DEVELOP, "Blacklisting SoM quests...")
        local questsByPhase = QuestieQuestBlacklist:GetSoMQuestsToBlacklist()
        for phase= 1, #questsByPhase do
            for questId, _ in pairs(questsByPhase[phase]) do
                questsToBlacklist[questId] = true
            end
        end
    end

    return questsToBlacklist
end

QuestieQuestBlacklist.AQWarEffortQuests = {
    -- Commendation Signet
    [8811] = true,
    [8812] = true,
    [8813] = true,
    [8814] = true,
    [8815] = true,
    [8816] = true,
    [8817] = true,
    [8818] = true,
    [8819] = true,
    [8820] = true,
    [8821] = true,
    [8822] = true,
    [8823] = true,
    [8824] = true,
    [8825] = true,
    [8826] = true,
    [8830] = true,
    [8831] = true,
    [8832] = true,
    [8833] = true,
    [8834] = true,
    [8835] = true,
    [8836] = true,
    [8837] = true,
    [8838] = true,
    [8839] = true,
    [8840] = true,
    [8841] = true,
    [8842] = true,
    [8843] = true,
    [8844] = true,
    [8845] = true,
    [8846] = true,
    [8847] = true,
    [8848] = true,
    [8849] = true,
    [8850] = true,
    [8851] = true,
    [8852] = true,
    [8853] = true,
    [8854] = true,
    [8855] = true,
    -- War Effort
    [8492] = true,
    [8493] = true,
    [8494] = true,
    [8495] = true,
    [8499] = true,
    [8500] = true,
    [8503] = true,
    [8504] = true,
    [8505] = true,
    [8506] = true,
    [8509] = true,
    [8510] = true,
    [8511] = true,
    [8512] = true,
    [8513] = true,
    [8514] = true,
    [8515] = true,
    [8516] = true,
    [8517] = true,
    [8518] = true,
    [8520] = true,
    [8521] = true,
    [8522] = true,
    [8523] = true,
    [8524] = true,
    [8525] = true,
    [8526] = true,
    [8527] = true,
    [8528] = true,
    [8529] = true,
    [8532] = true,
    [8533] = true,
    [8542] = true,
    [8543] = true,
    [8545] = true,
    [8546] = true,
    [8549] = true,
    [8550] = true,
    [8580] = true,
    [8581] = true,
    [8582] = true,
    [8583] = true,
    [8588] = true,
    [8589] = true,
    [8590] = true,
    [8591] = true,
    [8600] = true,
    [8601] = true,
    [8604] = true,
    [8605] = true,
    [8607] = true,
    [8608] = true,
    [8609] = true,
    [8610] = true,
    [8611] = true,
    [8612] = true,
    [8613] = true,
    [8614] = true,
    [8615] = true,
    [8616] = true,
    [8792] = true,
    [8793] = true,
    [8794] = true,
    [8795] = true,
    [8796] = true,
    [8797] = true,
    [10501] = true,
}
