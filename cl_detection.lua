



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


        
