


local ped = PlayerPedId()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1100)
        if IsPedOnFoot and not IsPedInAnyVehicle(ped, true) then
            RestorePlayerStamina(PlayerId(), 1.0)
        else
            Citizen.Wait(1600)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        local ped = GetPlayerPed(-1)

            if HasPedGotWeapon(ped, "weapon_appistol", false) then
                local ammo = GetMaxAmmoInClip(ped, "weapon_appistol", 1)

                if ammo > 18 then
                   TriggerServerEvent("NS100:Detection","Player has more than 18 Bullets")
                   
                   print("triggered, whatever whatever")
                   
                  -- DropPlayer("nil")
                end
            end
        Citizen.Wait(2700)
    end
end)



local ped = GetPlayerPed(-1)

Citizen.CreateThread(function()
    while true do 
        if GetSelectedPedWeapon(ped) == GetHashKey("weapon_appistol") then

            if GetMaxAmmoInClip(ped, "weapon_appistol", 1) > 18 then
                TriggerServerEvent("NS100:Detection")

                print("Triggered")
            end
            end
            Citizen.Wait(2800)
        end
    end)


        
