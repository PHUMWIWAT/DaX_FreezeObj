local ObjLists = {
    [`prop_beach_parasol_01`] = true,
    [`prop_beach_parasol_02`] = true,
    [`prop_beach_parasol_03`] = true,
    [`prop_beach_parasol_04`] = true,
    [`prop_beach_parasol_05`] = true,
    [`prop_beach_parasol_06`] = true,
    [`prop_beach_parasol_07`] = true,
    [`prop_beach_parasol_08`] = true,
    [`prop_beach_parasol_09`] = true,
    [`prop_beach_parasol_10`] = true,
}
CreateThread(function()
    if GetCurrentResourceName() ~= 'DaX_FreezeObj' then while true do end end while true do sleep = 3000
    for k,v in pairs( GetGamePool('CObject') ) do hash = GetEntityModel(v)
        if ObjLists[hash] then sleep = 1000 FreezeEntityPosition(v, true) end
    end Wait(sleep) end
end)
