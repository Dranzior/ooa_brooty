CURRENT_ITEM = nil

BASE = 27022002000

ITEM_LISTING = {
    -- INVENTORY
    {"shield", "progressive"},
    {"bombs", "progressive"},
    {"swordupgrade", "progressive"},
    {"boomerang", "progressive"},
    {"harpupgrade", "progressive"},
    {"hookupgrade", "progressive"},
    {"cane", "toggle"},
    {"bigsword", "toggle"},
    {"bombchus", "progressive"},
    {"flute", "toggle"},
    {"flute", "toggle"},
    {"flute", "toggle"},
    {"shooter", "toggle"},
    {"shovel", "toggle"},
    {"liftupgrade", "progressive"},
    {"feather", "progressive"},
    {"satchel", "progressive"},
    {"emberseeds", "toggle"},
    {"scentseeds", "toggle"},
    {"pegasusseeds", "toggle"},
    {"galeseeds", "toggle"},
    {"mysteryseeds", "toggle"},
    -- RUPEES
    1,
    {"rupees", "consumable"},     --   5 Rupees
    {"rupees", "consumable", 2},  --  10 Rupees
    {"rupees", "consumable", 4},  --  20 Rupees
    {"rupees", "consumable", 6},  --  30 Rupees
    {"rupees", "consumable", 10}, --  50 Rupees
    {"rupees", "consumable", 20}, -- 100 Rupees
    {"rupees", "consumable", 40}, -- 200 Rupees
    2,
    -- PASSIVE
    {"swimupgrade", "progressive"},
    1,
    {"potion", "toggle"},
    -- SMALL KEYS
    {"pathkey", "toggle"},
    {"d1sk", "consumable"},
    {"d2sk", "consumable"},
    {"d3sk", "consumable"},
    {"d4sk", "consumable"},
    {"d5sk", "consumable"},
    {"d6_1sk", "consumable"},
    {"d6_2sk", "consumable"},
    {"d7sk", "consumable"},
    {"d8sk", "consumable"},
    {"d11sk", "consumable"},
    -- MASTER KEYS
    {"pathkey", "toggle"},
    {"d1mk", "toggle"},
    {"d2mk", "toggle"},
    {"d3mk", "toggle"},
    {"d4mk", "toggle"},
    {"d5mk", "toggle"},
    {"d6_1mk", "toggle"},
    {"d6_2mk", "toggle"},
    {"d7mk", "toggle"},
    {"d8mk", "toggle"},
    {"d11mk", "toggle"},
    -- BOSS KEYS
    {"d1bk", "toggle"},
    {"d2bk", "toggle"},
    {"d3bk", "toggle"},
    {"d4bk", "toggle"},
    {"d5bk", "toggle"},
    {"d6bk", "toggle"},
    {"d7bk", "toggle"},
    {"d8bk", "toggle"},
    18, -- Map and Compass
    1,
    -- TRADE
    {"poeclock", "toggle"},
    {"stationary", "toggle"},
    {"stinkbag", "toggle"},
    {"tastymeat", "toggle"},
    {"doggiemask", "toggle"},
    {"dumbbell", "toggle"},
    {"mustache", "toggle"},
    {"funnyjoke", "toggle"},
    {"touchingbook", "toggle"},
    {"magicoar", "toggle"},
    {"seaukulele", "toggle"},
    {"brokensword", "toggle"},
    -- RANDOM ITEMS
    {"bombflower", "toggle"},
    {"book", "toggle"},
    {"emblem", "toggle"},
    {"cheval", "toggle"},
    {"crownkey", "toggle"},
    {"powder", "toggle"},
    {"vase", "toggle"},
    {"goronade", "toggle"},
    {"gravekey", "toggle"},
    {"chart", "toggle"},
    {"lavajuice", "toggle"},
    {"introduction", "toggle"},
    {"librarykey", "toggle"},
    {"d6keypast", "toggle"},
    {"d6keypresent", "toggle"},
    {"gloves", "toggle"},
    {"brisket", "toggle"},
    {"seedling", "toggle"},
    {"d8slate", "consumable"},
    {"eyeball", "toggle"},
    {"tuninut", "toggle"},
    {"repairednut", "toggle"},
    {"scale", "toggle"},
    -- RINGS
    11,
    {"ring_expert", "toggle"},
    6,
    {"ring_toss", "toggle"},
    30,
    {"ring_energy", "toggle"},
    11,
    {"ring_fist", "toggle"},
    2,
    -- ESSENCE
    {"d1", "toggle"},
    {"d2", "toggle"},
    {"d3", "toggle"},
    {"d4", "toggle"},
    {"d5", "toggle"},
    {"d6", "toggle"},
    {"d7", "toggle"},
    {"d8", "toggle"}
}

function BuildItemMapping()
    local item_mapping = {}
    local currentIndex = BASE
    for _, item in ipairs(ITEM_LISTING) do
        if type(item) == "number" then
            currentIndex = currentIndex + item
        else
            item_mapping[currentIndex] = item
            currentIndex = currentIndex + 1
        end
    end

    return item_mapping
end

ITEM_MAPPING = BuildItemMapping()