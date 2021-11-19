QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Functions.CreateUseableItem("bowlingball", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('bp-bowling:client:itemused', source)
end)


QBCore.Functions.CreateCallback('bp-bowling:purchaseItem', function(source, cb , key , lane)
    local Player = QBCore.Functions.GetPlayer(source)
    if(lane == true) then
        Player.Functions.RemoveMoney("cash", 25)
        local info = {
            lane = key
        }
        Player.Functions.AddItem('bowlingreceipt', 1, false, info)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["bowlingreceipt"], "add")
        cb(true)
    else
        cb(true)
        Player.Functions.RemoveMoney("cash", 50)
        Player.Functions.AddItem('bowlingball', 1, false, info)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["bowlingball"], "add")
    end

end)
QBCore.Functions.CreateCallback('bp-bowling:getLaneAccess', function(source, cb , currentid)
 local Player = QBCore.Functions.GetPlayer(source)

  local item = Player.Functions.GetItemByName('bowlingreceipt')
  if(item == nil) then
    cb(false)
  else
    if(item.info.lane == currentid) then
        cb(true)
    end
  end
end)





RegisterServerEvent("bp-bowling:RemoveItem")
AddEventHandler("bp-bowling:RemoveItem" , function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('bowlingball', 1)
    Player.Functions.RemoveItem('bowlingreceipt', 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["bowlingball"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["bowlingreceipt"], "remove")

end)