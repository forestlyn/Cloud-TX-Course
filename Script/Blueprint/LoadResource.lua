local LoadResource = {};
 

function LoadResource:ReceiveBeginPlay()
    self.SuperClass.ReceiveBeginPlay(self);
    Red_Material = UE.LoadObject(UGCMapInfoLib.GetRootLongPackagePath().."/Asset/Materials/Red.Red");
    Green_Material =  UE.LoadObject(UGCMapInfoLib.GetRootLongPackagePath().."/Asset/Materials/Green.Green");
    Blue_Material = UE.LoadObject(UGCMapInfoLib.GetRootLongPackagePath().."/Asset/Materials/Blue.Blue");
end


--[[
function LoadResource:ReceiveTick(DeltaTime)
    self.SuperClass.ReceiveTick(self, DeltaTime);
end
--]]

--[[
function LoadResource:ReceiveEndPlay()
    self.SuperClass.ReceiveEndPlay(self); 
end
--]]

--[[
function LoadResource:GetReplicatedProperties()
    return
end
--]]

--[[
function LoadResource:GetAvailableServerRPCs()
    return
end
--]]

return LoadResource;