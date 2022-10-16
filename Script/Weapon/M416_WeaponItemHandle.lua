---@class M416_WeaponItemHandle_C:Rifle_M416_ItemHandle_C
--Edit Below--
local M416_WeaponItemHandle = {};
 
--[[
function M416_WeaponItemHandle:ReceiveBeginPlay()
    self.SuperClass.ReceiveBeginPlay(self);
end
--]]

--[[
function M416_WeaponItemHandle:ReceiveTick(DeltaTime)
    self.SuperClass.ReceiveTick(self, DeltaTime);
end
--]]

--[[
function M416_WeaponItemHandle:ReceiveEndPlay()
    self.SuperClass.ReceiveEndPlay(self); 
end
--]]

--[[
function M416_WeaponItemHandle:GetReplicatedProperties()
    return
end
--]]

--[[
function M416_WeaponItemHandle:GetAvailableServerRPCs()
    return
end
--]]

return M416_WeaponItemHandle;