
hook.Add("RunOnClient", "onehack.Protector", function(B, d)
    if onehack.finishload and IsInGame() then return "" end
    if B:find("swiftac.lua") then return d end
    if B:find("cl_familysharing.lua") then return "" end
    if d:find("cheat_ban") then return "" end
    if B:find("cl_antinexploits.lua") then return "" end
    if B:find("cl_cpe.lua") then return "" end
    if B:find("umbrella_load.lua") then return "" end
    if d:find("data/hacks") or d:find("hacks") and d:find("DATA") then return "" end

    if d:find("local m_check_tbl") then
        print('Detected & bypassed modern ac')

        return ''
    else
        timer.Simple(0, function()
            net.Start("m_loaded")
            net.SendToServer()
        end)

        net.Receive("m_validate_player", function()
            net.Start("m_validate_player")
            net.SendToServer()
        end)

        net.Start("m_check_synced_data")

        net.WriteTable({
            ["sv_allowcslua"] = 0,
            ["sv_cheats"] = 0,
            ["r_drawothermodels"] = 0
        })

        net.SendToServer()
    end

    if B:find("weapon_handcuffed.lua") then return string.Replace(string.Replace(string.Replace(d, "surface.DrawRect( 0,0, ScrW(), ScrH() )", "surface.DrawRect(0,0,0,0)"), "surface.DrawRect( 0,i, ScrW(), 4 )", "surface.DrawRect(0,0,0,0)"), "surface.DrawRect( i,0, 4,ScrH() )", "surface.DrawRect(0,0,0,0)") end
end)

hook.Add("ShouldHideFile","onehack.Protector", function(p)
    if !onehack.finishload then return end
    if p:find("bin") then 
        return true 
    end
    if p:find("hack_scripts")then 
        return true 
    end 
    if p:find("mainmenu.lua")then 
        return string.Replace(file.Read("lua/menu/mainmenu.lua","GAME"),[[require("gaceio");require("roc")]],"")
    end;
    if p:find(".mdmp")then 
        return true 
    end 
    if p:find("onehack") and !p:find("materials") then 
        return true 
    end 
end)