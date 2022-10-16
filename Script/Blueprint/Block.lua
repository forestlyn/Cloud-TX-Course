---@class Block_C:AActor
---@field Box UBoxComponent
---@field Cube UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
--Edit Below--
local Block = {
    State = 0,
};
 
--[[
function Block:ReceiveBeginPlay()
    self.SuperClass.ReceiveBeginPlay(self);
end
--]]

--[[
function Block:ReceiveTick(DeltaTime)
    self.SuperClass.ReceiveTick(self, DeltaTime);
end
--]]

--[[
function Block:ReceiveEndPlay()
    self.SuperClass.ReceiveEndPlay(self); 
end
--]]


function Block:GetReplicatedProperties()
    return "State"
end

function Block:OnRep_State()
    if self.State == EMaterial.Red then
        self.Cube:SetMaterial(0,Red_Material)
        print("Set green material")
    end
    if self.State == EMaterial.Green then
        self.Cube:SetMaterial(0,Green_Material)
        print("Set red material")
    end
    if self.State == EMaterial.Blue then
        self.Cube:SetMaterial(0,Blue_Material)
        print("Set blue material")
    end
end
--[[
function Block:GetAvailableServerRPCs()
    return
end
--]]

return Block;