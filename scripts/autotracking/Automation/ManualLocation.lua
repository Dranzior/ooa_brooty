local function SaveManualLocationStorageFunc(self) -- executed on pack close or during export for each item
    return {
        MANUAL_LOCATIONS = self.ItemState.MANUAL_LOCATIONS,
        MANUAL_LOCATIONS_ORDER = self.ItemState.MANUAL_LOCATIONS_ORDER,
        Name = self.Name,
        Icon = self.Icon
    }
end

local function LoadManualLocationStorageFunc(self, data) --executed on pack load
    if data ~= nil and self.Name == data.Name then
        self.ItemState.MANUAL_LOCATIONS = data.MANUAL_LOCATIONS
        self.ItemState.MANUAL_LOCATIONS_ORDER = data.MANUAL_LOCATIONS_ORDER
        self.Icon = ImageReference:FromPackRelativePath(data.Icon)
    else
    end
end

local function OnLeftClickFunc(self)
end
local function OnRightClickFunc(self)
end
local function OnMiddleClickFunc(self)
end

local function CanProvideCodeFunc(self, code)
    return code == self.Name
end

local function ProvidesCodeFunc(self, code)
    if CanProvideCodeFunc(self, code) then
        return 1
    end
    return 0
end

function CreateLuaManualLocationStorage(name)
    local self = ScriptHost:CreateLuaItem()

    self.Name = name --code --
    self.Icon = ImageReference:FromPackRelativePath("/images/items/closed_Chest.png")
    self.ItemState = {
        MANUAL_LOCATIONS = {
            ["default"] = {}
        },
        MANUAL_LOCATIONS_ORDER = {}
    }

    self.CanProvideCodeFunc = CanProvideCodeFunc
    self.OnLeftClickFunc = OnLeftClickFunc
    self.OnRightClickFunc = OnRightClickFunc
    self.OnMiddleClickFunc = OnMiddleClickFunc
    self.ProvidesCodeFunc = ProvidesCodeFunc
    -- self.AdvanceToCodeFunc = AdvanceToCodeFunc
    self.SaveFunc = SaveManualLocationStorageFunc
    self.LoadFunc = LoadManualLocationStorageFunc
    -- self.PropertyChangedFunc = PropertyChangedFunc
    -- self.ItemState = ItemState
    return self
end

CreateLuaManualLocationStorage("manual_location_storage")