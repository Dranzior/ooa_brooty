CURRENT_ITEM = nil

ITEM_MAPPING = {}
-- INVENTORY
ITEM_MAPPING[Progressive_Shield] = {"shield", "progressive"}
ITEM_MAPPING[Bombs__10_] = {"bombs", "progressive"}
ITEM_MAPPING[Progressive_Sword] = {"swordupgrade", "progressive"}
ITEM_MAPPING[Boomerang] = {"boomerang", "progressive"}
ITEM_MAPPING[Progressive_Harp] = {"harpupgrade", "progressive"}
ITEM_MAPPING[Progressive_Hook] = {"hookupgrade", "progressive"}
ITEM_MAPPING[Cane_of_Somaria] = {"cane", "toggle"}
ITEM_MAPPING[Biggorons_Sword] = {"bigsword", "toggle"}
ITEM_MAPPING[Bombchus__10_] = {"bombchus", "progressive"}
ITEM_MAPPING[Rickys_Flute] = {"flute", "toggle"}
ITEM_MAPPING[Dimitris_Flute] = {"flute", "toggle"}
ITEM_MAPPING[Mooshs_Flute] = {"flute", "toggle"}
ITEM_MAPPING[Seed_Shooter] = {"shooter", "toggle"}
ITEM_MAPPING[Shovel] = {"shovel", "toggle"}
ITEM_MAPPING[Progressive_Bracelet] = {"liftupgrade", "progressive"}
ITEM_MAPPING[Feather] = {"feather", "progressive"}
ITEM_MAPPING[Seed_Satchel] = {"satchel", "progressive"}
ITEM_MAPPING[Ember_Seeds] = {"emberseeds", "toggle"}
ITEM_MAPPING[Scent_Seeds] = {"scentseeds", "toggle"}
ITEM_MAPPING[Pegasus_Seeds] = {"pegasusseeds", "toggle"}
ITEM_MAPPING[Gale_Seeds] = {"galeseeds", "toggle"}
ITEM_MAPPING[Mystery_Seeds] = {"mysteryseeds", "toggle"}
-- RUPEES
ITEM_MAPPING[Rupees__5_] = {"rupees", "consumable"}     --   5 Rupees
ITEM_MAPPING[Rupees__10_] = {"rupees", "consumable", 2}  --  10 Rupees
ITEM_MAPPING[Rupees__20_] = {"rupees", "consumable", 4}  --  20 Rupees
ITEM_MAPPING[Rupees__30_] = {"rupees", "consumable", 6}  --  30 Rupees
ITEM_MAPPING[Rupees__50_] = {"rupees", "consumable", 10} --  50 Rupees
ITEM_MAPPING[Rupees__100_] = {"rupees", "consumable", 20} -- 100 Rupees
ITEM_MAPPING[Rupees__200_] = {"rupees", "consumable", 40} -- 200 Rupees
-- PASSIVE
ITEM_MAPPING[Progressive_Flippers] = {"swimupgrade", "progressive"}
ITEM_MAPPING[King_Zoras_Potion] = {"potion", "toggle"}
-- SMALL KEYS
ITEM_MAPPING[Small_Key__Maku_Path_] = {"pathkey", "toggle"}
ITEM_MAPPING[Small_Key__Spirits_Grave_] = {"d1sk", "consumable"}
ITEM_MAPPING[Small_Key__Wing_Dungeon_] = {"d2sk", "consumable"}
ITEM_MAPPING[Small_Key__Moonlit_Grotto_] = {"d3sk", "consumable"}
ITEM_MAPPING[Small_Key__Skull_Dungeon_] = {"d4sk", "consumable"}
ITEM_MAPPING[Small_Key__Crown_Dungeon_] = {"d5sk", "consumable"}
ITEM_MAPPING[Small_Key__Mermaids_Cave_Past_] = {"d6_1sk", "consumable"}
ITEM_MAPPING[Small_Key__Mermaids_Cave_Present_] = {"d6_2sk", "consumable"}
ITEM_MAPPING[Small_Key__Jabu_Jabus_Belly_] = {"d7sk", "consumable"}
ITEM_MAPPING[Small_Key__Ancient_Tomb_] = {"d8sk", "consumable"}
ITEM_MAPPING[Small_Key__Linked_Heros_Cave_] = {"d11sk", "consumable"}
-- MASTER KEYS
ITEM_MAPPING[Master_Key__Maku_Path_] = {"pathkey", "toggle"}
ITEM_MAPPING[Master_Key__Spirits_Grave_] = {"d1mk", "toggle"}
ITEM_MAPPING[Master_Key__Wing_Dungeon_] = {"d2mk", "toggle"}
ITEM_MAPPING[Master_Key__Moonlit_Grotto_] = {"d3mk", "toggle"}
ITEM_MAPPING[Master_Key__Skull_Dungeon_] = {"d4mk", "toggle"}
ITEM_MAPPING[Master_Key__Crown_Dungeon_] = {"d5mk", "toggle"}
ITEM_MAPPING[Master_Key__Mermaids_Cave_Past_] = {"d6_1mk", "toggle"}
ITEM_MAPPING[Master_Key__Mermaids_Cave_Present_] = {"d6_2mk", "toggle"}
ITEM_MAPPING[Master_Key__Jabu_Jabus_Belly_] = {"d7mk", "toggle"}
ITEM_MAPPING[Master_Key__Ancient_Tomb_] = {"d8mk", "toggle"}
ITEM_MAPPING[Master_Key__Linked_Heros_Cave_] = {"d11mk", "toggle"}
-- BOSS KEYS
ITEM_MAPPING[Boss_Key__Spirits_Grave_] = {"d1bk", "toggle"}
ITEM_MAPPING[Boss_Key__Wing_Dungeon_] = {"d2bk", "toggle"}
ITEM_MAPPING[Boss_Key__Moonlit_Grotto_] = {"d3bk", "toggle"}
ITEM_MAPPING[Boss_Key__Skull_Dungeon_] = {"d4bk", "toggle"}
ITEM_MAPPING[Boss_Key__Crown_Dungeon_] = {"d5bk", "toggle"}
ITEM_MAPPING[Boss_Key__Mermaids_Cave_] = {"d6bk", "toggle"}
ITEM_MAPPING[Boss_Key__Jabu_Jabus_Belly_] = {"d7bk", "toggle"}
ITEM_MAPPING[Boss_Key__Ancient_Tomb_] = {"d8bk", "toggle"}
-- TRADE
ITEM_MAPPING[Poe_Clock] = {"poeclock", "toggle"}
ITEM_MAPPING[Stationery] = {"stationary", "toggle"}
ITEM_MAPPING[Stink_Bag] = {"stinkbag", "toggle"}
ITEM_MAPPING[Tasty_Meat] = {"tastymeat", "toggle"}
ITEM_MAPPING[Doggie_Mask] = {"doggiemask", "toggle"}
ITEM_MAPPING[Dumbbell] = {"dumbbell", "toggle"}
ITEM_MAPPING[Cheesy_Mustache] = {"mustache", "toggle"}
ITEM_MAPPING[Funny_Joke] = {"funnyjoke", "toggle"}
ITEM_MAPPING[Touching_Book] = {"touchingbook", "toggle"}
ITEM_MAPPING[Magic_Oar] = {"magicoar", "toggle"}
ITEM_MAPPING[Sea_Ukulele] = {"seaukulele", "toggle"}
ITEM_MAPPING[Broken_Sword] = {"brokensword", "toggle"}
-- RANDOM ITEMS
ITEM_MAPPING[Bomb_Flower] = {"bombflower", "toggle"}
ITEM_MAPPING[Book_of_Seals] = {"book", "toggle"}
ITEM_MAPPING[Brother_Emblem] = {"emblem", "toggle"}
ITEM_MAPPING[Cheval_Rope] = {"cheval", "toggle"}
ITEM_MAPPING[Crown_Key] = {"crownkey", "toggle"}
ITEM_MAPPING[Fairy_Powder] = {"powder", "toggle"}
ITEM_MAPPING[Goron_Vase] = {"vase", "toggle"}
ITEM_MAPPING[Goronade] = {"goronade", "toggle"}
ITEM_MAPPING[Graveyard_Key] = {"gravekey", "toggle"}
ITEM_MAPPING[Island_Chart] = {"chart", "toggle"}
ITEM_MAPPING[Lava_Juice] = {"lavajuice", "toggle"}
ITEM_MAPPING[Letter_of_Introduction] = {"introduction", "toggle"}
ITEM_MAPPING[Library_Key] = {"librarykey", "toggle"}
ITEM_MAPPING[Mermaid_Key] = {"d6keypast", "toggle"}
ITEM_MAPPING[Old_Mermaid_Key] = {"d6keypresent", "toggle"}
ITEM_MAPPING[Rickys_Gloves] = {"gloves", "toggle"}
ITEM_MAPPING[Rock_Brisket] = {"brisket", "toggle"}
ITEM_MAPPING[Scent_Seedling] = {"seedling", "toggle"}
ITEM_MAPPING[Slate] = {"d8slate", "consumable"}
ITEM_MAPPING[Tokay_Eyeball] = {"eyeball", "toggle"}
ITEM_MAPPING[Cracked_Tuni_Nut] = {"tuninut", "toggle"}
ITEM_MAPPING[Tuni_Nut] = {"repairednut", "toggle"}
ITEM_MAPPING[Zora_Scale] = {"scale", "toggle"}
-- RINGS
ITEM_MAPPING[Experts_Ring] = {"ring_expert", "toggle"}
ITEM_MAPPING[Toss_Ring] = {"ring_toss", "toggle"}
ITEM_MAPPING[Energy_Ring] = {"ring_energy", "toggle"}
ITEM_MAPPING[Fist_Ring] = {"ring_fist", "toggle"}

-- ESSENCE
ITEM_MAPPING[Eternal_Spirit] = {"d1", "toggle"}
ITEM_MAPPING[Ancient_Wood] = {"d2", "toggle"}
ITEM_MAPPING[Echoing_Howl] = {"d3", "toggle"}
ITEM_MAPPING[Burning_Flame] = {"d4", "toggle"}
ITEM_MAPPING[Sacred_Soil] = {"d5", "toggle"}
ITEM_MAPPING[Lonely_Peak] = {"d6", "toggle"}
ITEM_MAPPING[Rolling_Sea] = {"d7", "toggle"}
ITEM_MAPPING[Falling_Star] = {"d8", "toggle"}
