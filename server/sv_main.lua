XZCore = nil
TriggerEvent('XZCore:GetObject', function(obj) XZCore = obj end)

XZCore.Functions.CreateUseableItem("bowlingball", function(source, item)
    local Player = XZCore.Functions.GetPlayer(source)
    TriggerClientEvent('bp-bowling:client:itemused', source)
end)


XZCore.Functions.CreateCallback('bp-bowling:purchaseItem', function(source, cb , key , lane)
    local Player = XZCore.Functions.GetPlayer(source)
    if(lane == true) then
        Player.Functions.RemoveMoney("cash", 25)
        local info = {
            lane = key
        }
        Player.Functions.AddItem('bowlingreceipt', 1, false, info)
        TriggerClientEvent("inventory:client:ItemBox", source, XZCore.Shared.Items["bowlingreceipt"], "add")
        cb(true)
    else
        cb(true)
        Player.Functions.RemoveMoney("cash", 50)
        Player.Functions.AddItem('bowlingball', 1, false, info)
        TriggerClientEvent("inventory:client:ItemBox", source, XZCore.Shared.Items["bowlingball"], "add")
    end

end)
XZCore.Functions.CreateCallback('bp-bowling:getLaneAccess', function(source, cb , currentid)
 local Player = XZCore.Functions.GetPlayer(source)

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
    local Player = XZCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('bowlingball', 1)
    Player.Functions.RemoveItem('bowlingreceipt', 1)
    TriggerClientEvent("inventory:client:ItemBox", source, XZCore.Shared.Items["bowlingball"], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, XZCore.Shared.Items["bowlingreceipt"], "remove")

end)