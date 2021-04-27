print("https://discord.gg/pFuAaeJHpu")

local status = nil
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)

            o2 = GetPlayerUnderwaterTimeRemaining(PlayerId()) * 10

        TriggerEvent('esx_status:getStatus', 'hunger', function(status) comida = status.val / 10000 end)
       
        TriggerEvent('esx_status:getStatus', 'thirst', function(status) bebida = status.val / 10000 end)

        SendNUIMessage({
            health = GetEntityHealth(PlayerPedId()) - 100,
            armor = GetPedArmour(PlayerPedId()),
            stamina = 99 - GetPlayerSprintStaminaRemaining(PlayerId()),
            bebida = bebida;
            comida = comida;
        })


        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            Wait(400)
            DisplayRadar(true)
        else
            Wait(400)
            DisplayRadar(false)
            
        end
    end
end)




