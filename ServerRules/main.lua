local display = false

RegisterCommand("rules", function()
Citizen.CreateThread(function()
       TriggerEvent("nui:on", true)
   end)
end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if IsControlJustPressed(1, 121) then
                TriggerEvent("nui:off", true)
            end
        end
    end)

RegisterNetEvent("nui:on")
AddEventHandler("nui:on", function(value)
SendNUIMessage({
    type = "ui",
    display = true
})
end)

RegisterNetEvent("nui:off")
AddEventHandler("nui:off", function(value)
SendNUIMessage({
    type = "ui",
    display = false
})
end)

