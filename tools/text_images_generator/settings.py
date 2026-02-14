from settings_templates import *

image_lib = [
    #Essences
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, "Required\nEssence", "essence"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "0", "essence0"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "1", "essence1"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "2", "essence2"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "3", "essence3"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "4", "essence4"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "5", "essence5"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "6", "essence6"],
[SETTING_DEFAULT_HALF_WHITE, "essence", "7", "essence7"],
[SETTING_DEFAULT_HALF_GREEN, "essence", "8", "essence8"],
    #Slates
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, "Required\nSlates", "slate"],
[SETTING_DEFAULT_HALF_WHITE, "slate", "0", "slate0"],
[SETTING_DEFAULT_HALF_WHITE, "slate", "1", "slate1"],
[SETTING_DEFAULT_HALF_WHITE, "slate", "2", "slate2"],
[SETTING_DEFAULT_HALF_WHITE, "slate", "3", "slate3"],
[SETTING_DEFAULT_HALF_GREEN, "slate", "4", "slate4"],
    #Logic
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, "Logic", "logic"],
[SETTING_DEFAULT_FULL_GREEN, SETTING_DEFAULT_IMAGE, "Basic", "basic"],
[SETTING_DEFAULT_FULL_WHITE, SETTING_DEFAULT_IMAGE, "Medium", "medium"],
[SETTING_DEFAULT_FULL_RED, SETTING_DEFAULT_IMAGE, "Hard", "hard"],
    #Entrance shuffle
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, " Dungeon \n Entrances ", "entrance"],
[SETTING_DEFAULT_FULL_RED, SETTING_DEFAULT_IMAGE, "Vanilla", "vanilla"],
[SETTING_DEFAULT_FULL_GREEN, SETTING_DEFAULT_IMAGE, "Shuffled", "shuffled"],
    #Advance Shop
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, "Advance\nShop", "advanceshop"],
[SETTING_DEFAULT_HALF_RED, "advanceshop", "Off", "advanceshopoff"],
[SETTING_DEFAULT_HALF_GREEN, "advanceshop", "On", "advanceshopon"],
    #Master Key
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, "Master\nKeys", "masterkeys"],
[SETTING_DEFAULT_FULL_RED, SETTING_DEFAULT_IMAGE, "Off", "masterkeysoff"],
[SETTING_DEFAULT_FULL_WHITE, SETTING_DEFAULT_IMAGE, "Small\nKeys", "masterkeyssmall"],
[SETTING_DEFAULT_FULL_WHITE, SETTING_DEFAULT_IMAGE, "Small &\nBoss Keys", "masterkeysboss"],
    #Animal Companion
[SETTING_DEFAULT_FULL_YELLOW, SETTING_DEFAULT_IMAGE, "Animal\nCompanion", "companion"],
[SETTING_DEFAULT_HALF_WHITE, "companions", "?", "unknowncompanion"],
[SETTING_DEFAULT_HALF_ORANGE, "ricky", "Ricky", "ricky"],
[SETTING_DEFAULT_HALF_RED, "dimitri", "Dimitri", "dimitri"],
[SETTING_DEFAULT_HALF_BLUE, "moosh", "Moosh", "moosh"],
]

def generate_settings():
    for img in image_lib:
        base_img = "ref_images/" + img[1] + ".png"
        text = img[2]
        filename = outputPath + img[3] + ".png"

        img[0].create_image(base_img, text, filename)