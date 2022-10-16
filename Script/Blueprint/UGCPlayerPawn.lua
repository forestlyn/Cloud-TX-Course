---@class UGCPlayerPawn_C:BP_UGCPlayerPawn_C
--Edit Below--
local UGCPlayerPawn = {};

function UGCPlayerPawn:ReceiveBeginPlay()
    self.SuperClass.ReceiveBeginPlay(self);
end



function UGCPlayerPawn:ReceiveTick(DeltaTime)
    self.SuperClass.ReceiveTick(self, DeltaTime);
end



function UGCPlayerPawn:ReceiveEndPlay()
    self.SuperClass.ReceiveEndPlay(self); 
end

function UGCPlayerPawn:UGC_WeaponBulletHitEvent(ShootWeapon,Bullet,HitInfo)
    if self:HasAuthority() then
        self.SuperClass.UGC_WeaponBulletHitEvent(self,ShootWeapon,Bullet,HitInfo);
        print("UGCPlayerPawn:UGC_WeaponBulletHitEvent:");
        if HitInfo then
            print("HitInfo:");
            print(HitInfo);
        end
        local HitActor = HitInfo.Actor:Get();
        if HitActor ~= nil then
            print("HitActor isn't nil");
            if HitActor:ActorHasTag("block") then
                print("HitActor has tag block");
                local PlayerState = self:GetPlayerStateSafety();
                HitActor.State = PlayerState.TeamID;
            end
        end
    end
end

--[[
function UGCPlayerPawn:GetReplicatedProperties()
    return
end
--]]

--[[
function UGCPlayerPawn:GetAvailableServerRPCs()
    return
end
--]]

return UGCPlayerPawn;