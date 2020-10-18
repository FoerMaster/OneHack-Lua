local function ChamsPanel()

	if IsValid(onehack.curpage) then onehack.curpage:Remove() end

	local Visuals = onehack.OptionsPanel(onehack.MainFrame)
	Visuals.ActiveTab = nil
	Visuals:MoveToBack()
	onehack.curpage = Visuals

	local Player = onehack.OptionsPanel(Visuals)
	Player:SetPos(0,50)
	Player:SetSize(Visuals:GetWide(),Visuals:GetTall()-50)
	Visuals.ActiveTab = Player
	function Player:Paint(w,h) end
	local MainSettings = onehack.Panel(Player)
	MainSettings:Dock(LEFT)
	MainSettings:DockMargin(10, 10, 10, 10)
	MainSettings:SetWide(260)
	onehack.Header(MainSettings, {{name='Player',onclick=function()end}})
	local MainSettingsScroll = onehack.ScrollPanel(MainSettings,0)

	onehack.CheckBox(MainSettingsScroll,'Player ESP','ESP_PLAYER_ENABLED')
    onehack.CheckBox(MainSettingsScroll,'Only Visible','ESP_PLAYER_ONLY_VISIBLE')
    onehack.Slider(MainSettingsScroll,'Distance','ESP_PLAYER_DISTANCE',100,1)
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Boxes','ESP_PLAYER_BOX')
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Health bar','ESP_PLAYER_HP_BOX')
	onehack.CheckBox(MainSettingsScroll,'Health Numbers','ESP_PLAYER_HP_NUMBERS')
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Armor bar','ESP_PLAYER_ARMOR_BOX')
	onehack.CheckBox(MainSettingsScroll,'Armor Numbers','ESP_PLAYER_ARMOR_NUMBERS')
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Weapon name','ESP_PLAYER_WEAPON_NAME')
	onehack.CheckBox(MainSettingsScroll,'Player Name','ESP_PLAYER_NAME')
	onehack.CheckBox(MainSettingsScroll,'Usergroup','ESP_PLAYER_USERGROUP')
	onehack.CheckBox(MainSettingsScroll,'Team name','ESP_PLAYER_TEAM')
	onehack.CheckBox(MainSettingsScroll,'Distance','ESP_PLAYER_DISTANCE')
	onehack.CheckBox(MainSettingsScroll,'Skeleton','ESP_PLAYER_SKELETON')
	
	local MainSettings = onehack.Panel(Player)
	MainSettings:Dock(LEFT)
	MainSettings:DockMargin(0, 10, 10, 10)
	MainSettings:SetWide(260)
	onehack.Header(MainSettings, {{name='Entity',onclick=function()end}})
	local MainSettingsScroll = onehack.ScrollPanel(MainSettings,80)
	
    onehack.CheckBox(MainSettingsScroll,'Entity ESP','ESP_PROPS_ENABLED')
    onehack.Slider(MainSettingsScroll,'Distance','ESP_PROPS_DISTANCE',100,1)
	--onehack.CheckBox(MainSettingsScroll,'Only Visible','ESP_PROPS_ONLY_VISIBLE')
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Boxes','ESP_PROPS_BOX')
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Health bar','ESP_PROPS_HP_BOX')
	onehack.CheckBox(MainSettingsScroll,'Health Numbers','ESP_PROPS_HP_NUMBERS')
	onehack.Spliter(MainSettingsScroll)
	onehack.CheckBox(MainSettingsScroll,'Distance','ESP_PROPS_DISTANCE')
	onehack.CheckBox(MainSettingsScroll,'Entity URL','ESP_PROPS_URL')

	onehack.Header(Visuals, {
		{name='ESP',onclick=function()

			if IsValid(Visuals.ActiveTab) then Visuals.ActiveTab:Remove() end
			local Player = onehack.OptionsPanel(Visuals)
			Player:SetPos(0,50)
			Player:SetSize(Visuals:GetWide(),Visuals:GetTall()-50)
			Visuals.ActiveTab = Player
			function Player:Paint(w,h) 
				--draw.RoundedBox(0, 0, 0, w, h, Color(255,255,0))
			end

			local MainSettings = onehack.Panel(Player)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetWide(260)
            onehack.Header(MainSettings, {{name='Player',onclick=function()end}})
            local MainSettingsScroll = onehack.ScrollPanel(MainSettings,0)
        
            onehack.CheckBox(MainSettingsScroll,'Player ESP','ESP_PLAYER_ENABLED')
            onehack.CheckBox(MainSettingsScroll,'Only Visible','ESP_PLAYER_ONLY_VISIBLE')
            onehack.Slider(MainSettingsScroll,'Distance','ESP_PLAYER_DISTANCE',100,1)
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Boxes','ESP_PLAYER_BOX')
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Health bar','ESP_PLAYER_HP_BOX')
            onehack.CheckBox(MainSettingsScroll,'Health Numbers','ESP_PLAYER_HP_NUMBERS')
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Armor bar','ESP_PLAYER_ARMOR_BOX')
            onehack.CheckBox(MainSettingsScroll,'Armor Numbers','ESP_PLAYER_ARMOR_NUMBERS')
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Weapon name','ESP_PLAYER_WEAPON_NAME')
            onehack.CheckBox(MainSettingsScroll,'Player Name','ESP_PLAYER_NAME')
            onehack.CheckBox(MainSettingsScroll,'Usergroup','ESP_PLAYER_USERGROUP')
            onehack.CheckBox(MainSettingsScroll,'Team name','ESP_PLAYER_TEAM')
            onehack.CheckBox(MainSettingsScroll,'Distance','ESP_PLAYER_DISTANCE')
            onehack.CheckBox(MainSettingsScroll,'Skeleton','ESP_PLAYER_SKELETON')
            
            local MainSettings = onehack.Panel(Player)
            MainSettings:Dock(LEFT)
            MainSettings:DockMargin(0, 10, 10, 10)
            MainSettings:SetWide(260)
            onehack.Header(MainSettings, {{name='Entity',onclick=function()end}})
            local MainSettingsScroll = onehack.ScrollPanel(MainSettings,80)
            
            onehack.CheckBox(MainSettingsScroll,'Entity ESP','ESP_PROPS_ENABLED')
            onehack.Slider(MainSettingsScroll,'Distance','ESP_PROPS_DISTANCE',100,1)
            --onehack.CheckBox(MainSettingsScroll,'Only Visible','ESP_PROPS_ONLY_VISIBLE')
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Boxes','ESP_PROPS_BOX')
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Health bar','ESP_PROPS_HP_BOX')
            onehack.CheckBox(MainSettingsScroll,'Health Numbers','ESP_PROPS_HP_NUMBERS')
            onehack.Spliter(MainSettingsScroll)
            onehack.CheckBox(MainSettingsScroll,'Distance','ESP_PROPS_DISTANCE')
            onehack.CheckBox(MainSettingsScroll,'Entity URL','ESP_PROPS_URL')
		end},
		{name='World',onclick=function()

			if IsValid(Visuals.ActiveTab) then Visuals.ActiveTab:Remove() end
			local World = onehack.OptionsPanel(Visuals)
			World:SetPos(0,50)
			World:SetSize(Visuals:GetWide(),Visuals:GetTall()-50)
			Visuals.ActiveTab = World
			function World:Paint(w,h) 
				--draw.RoundedBox(0, 0, 0, w, h, Color(255,0,0))
			end

			local MainSettings = onehack.Panel(World)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetWide(260)
			onehack.Header(MainSettings, {{name='Textures',onclick=function()end}})
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,180)

			onehack.CheckBox(MainSettingsScroll,'Enabled','WORLD_ENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Asus walls','WORLD_ASUSWALLS')
			onehack.Slider(MainSettingsScroll,'Asus wall value','WORLD_ASUSWALLS_NUMB',100,1)

			local MainSettings = onehack.Panel(World)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(0, 10, 10, 10)
			MainSettings:SetWide(260)
			onehack.Header(MainSettings, {{name='HUD',onclick=function()end}})
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,-10)

			onehack.CheckBox(MainSettingsScroll,'Enabled','HUD_ENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Crosshair','HUD_CROSSHAIR')
			onehack.Slider(MainSettingsScroll,'Crosshair grap','HUD_CROSSHAIR_GRAP',10,1)
			onehack.Slider(MainSettingsScroll,'Crosshair lenght','HUD_CROSSHAIR_LENGHT',10,1)
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Aim FOV','HUD_VELOCITYFOV')
			onehack.CheckBox(MainSettingsScroll,'Wathermark','HUD_WATHERMARK')
			onehack.CheckBox(MainSettingsScroll,'Hitmarker','HUD_HITMARKER')
			onehack.CheckBox(MainSettingsScroll,'Bullet trace','HUD_BULLETTRACE')
			onehack.CheckBox(MainSettingsScroll,'Snapline','HUD_SNAPLINE')
			onehack.CheckBox(MainSettingsScroll,'No Visual recoil','HUD_NOVISUALRECOIL')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Thirdpreson','HUD_TPC')
			onehack.Slider(MainSettingsScroll,'Distance','HUD_TPCDIST',100,1)
		end},
		{name='Chams',onclick=function()

			if IsValid(Visuals.ActiveTab) then Visuals.ActiveTab:Remove() end
			local Chams = onehack.OptionsPanel(Visuals)
			Chams:SetPos(0,50)
			Chams:SetSize(Visuals:GetWide(),Visuals:GetTall()-50)
			Visuals.ActiveTab = Chams
			function Chams:Paint(w,h) 
				--draw.RoundedBox(0, 0, 0, w, h, Color(0,255,0))
			end

			local MainSettings = onehack.Panel(Chams)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetWide(260)
			onehack.Header(MainSettings, {{name='Player',onclick=function()end}})
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,80)

			onehack.CheckBox(MainSettingsScroll,'Enabled','CPLAYER_ENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Visible chams','CPLAYER_ENABLED_VISIBLE')
			onehack.CheckBox(MainSettingsScroll,'Invisible chams','CPLAYER_ENABLED_INVISIBLE')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Local chams','CPLAYER_SELFENABLED')
			onehack.CheckBox(MainSettingsScroll,'Hands chams','CPLAYER_HANDCHAMS')

			local MainSettings = onehack.Panel(Chams)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(0, 10, 10, 10)
			MainSettings:SetWide(260)
			onehack.Header(MainSettings, {{name='Props',onclick=function()end}})
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,80)

			onehack.CheckBox(MainSettingsScroll,'Enabled','CPROPS_ENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Visible chams','CPROPS_ENABLED_VISIBLE')
			onehack.CheckBox(MainSettingsScroll,'Invisible chams','CPROPS_ENABLED_INVISIBLE')

		end},
		{name='Glow',onclick=function()

			if IsValid(Visuals.ActiveTab) then Visuals.ActiveTab:Remove() end
			local Glow = onehack.OptionsPanel(Visuals)
			Glow:SetPos(0,50)
			Glow:SetSize(Visuals:GetWide(),Visuals:GetTall()-50)
			Visuals.ActiveTab = Glow
			function Glow:Paint(w,h) 
				--draw.RoundedBox(0, 0, 0, w, h, Color(0,0,255))
			end

			local MainSettings = onehack.Panel(Glow)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetWide(260)
			onehack.Header(MainSettings, {{name='Player',onclick=function()end}})
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,80)

			onehack.CheckBox(MainSettingsScroll,'Enabled','GPLAYER_ENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Visible glow','GPLAYER_ENABLED_VISIBLE')
			onehack.CheckBox(MainSettingsScroll,'Invisible glow','GPLAYER_ENABLED_INVISIBLE')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Local glow','GPLAYER_SELFENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Dynamic light','GPLAYER_DYNAMICLIGHT')
			onehack.Slider(MainSettingsScroll,'Dynamic light range','GPLAYER_DYNAMICLIGHT_RANGE',100,1)

			local MainSettings = onehack.Panel(Glow)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(0, 10, 10, 10)
			MainSettings:SetWide(260)
			onehack.Header(MainSettings, {{name='Props',onclick=function()end}})
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,80)

			onehack.CheckBox(MainSettingsScroll,'Enabled','GPROPS_ENABLED')
			onehack.Spliter(MainSettingsScroll)
			onehack.CheckBox(MainSettingsScroll,'Visible glow','GPROPS_ENABLED_VISIBLE')
			onehack.CheckBox(MainSettingsScroll,'Invisible glow','GPROPS_ENABLED_INVISIBLE')

		end},

		{name='Colors',onclick=function()

			if IsValid(Visuals.ActiveTab) then Visuals.ActiveTab:Remove() end
			local Colors = onehack.OptionsPanel(Visuals)
			Colors:SetPos(0,50)
			Colors:SetSize(Visuals:GetWide(),Visuals:GetTall()-50)
			Visuals.ActiveTab = Colors
			function Colors:Paint(w,h) 
				--draw.RoundedBox(0, 0, 0, w, h, Color(0,0,255))
			end

			local MainSettings = onehack.Panel(Colors)
			MainSettings:Dock(LEFT)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetWide(260)
			local MainSettingsScroll = onehack.ScrollPanel(MainSettings,-99)

			onehack.ColorSwitch(MainSettingsScroll,"ESP Player boxes","COLOR_ESP_PLAYER_BOXES")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Player Weapon Name","COLOR_ESP_PLAYER_WEAPON_NAME")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Player Weapon Name","COLOR_ESP_PLAYER_NAME")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Player Usergroup","COLOR_ESP_PLAYER_USERGROUP")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Player Team","COLOR_ESP_PLAYER_TEAM")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Player Distance","COLOR_ESP_PLAYER_DISTANCE")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Player Skeleton","COLOR_ESP_PLAYER_SKELETON")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Props boxes","COLOR_ESP_PROPS_BOXES")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Props URL","COLOR_ESP_PROPS_URL")
			onehack.ColorSwitch(MainSettingsScroll,"ESP Props Distance","COLOR_ESP_PROPS_DISTANCE")
			onehack.ColorSwitch(MainSettingsScroll,"HUD Crosshair","COLOR_WORLD_CROSSHAIR")
			onehack.ColorSwitch(MainSettingsScroll,"HUD Spread FOV","COLOR_WORLD_SPREADFOV")
			onehack.ColorSwitch(MainSettingsScroll,"HUD Wathermark","COLOR_WORLD_WATHERMARK")
			onehack.ColorSwitch(MainSettingsScroll,"HUD Hitmarker","COLOR_WORLD_HITMARKER")
			onehack.ColorSwitch(MainSettingsScroll,"HUD Snapline","COLOR_WORLD_SNAPLINE")
			onehack.ColorSwitch(MainSettingsScroll,"HUD Bullet trace","COLOR_WORLD_BULLETTRACE")

			onehack.ColorSwitch(MainSettingsScroll,"Chams Player Visible","COLOR_CHAMS_PLAYER_VISIBLE")
			onehack.ColorSwitch(MainSettingsScroll,"Anti-Aim Real Chams","COLOR_CHAMS_PLAYER_REALAA")
			onehack.ColorSwitch(MainSettingsScroll,"Anti-Aim Fake Chams","COLOR_CHAMS_PLAYER_AA")
			onehack.ColorSwitch(MainSettingsScroll,"Chams Player InVisible","COLOR_CHAMS_PLAYER_INVISIBLE")
			onehack.ColorSwitch(MainSettingsScroll,"Chams Props Visible","COLOR_CHAMS_PROPS_VISIBLE")
			onehack.ColorSwitch(MainSettingsScroll,"Chams Props InVisible","COLOR_CHAMS_PROPS_INVISIBLE")
			onehack.ColorSwitch(MainSettingsScroll,"Chams Hands","COLOR_CHAMS_HANDS")

			onehack.ColorSwitch(MainSettingsScroll,"Glow Player","COLOR_GLOW_PLAYER")
			onehack.ColorSwitch(MainSettingsScroll,"Glow Props","COLOR_GLOW_PROPS")

			onehack.ColorSwitch(MainSettingsScroll,"Light","COLOR_LIGHT")
			
			local MainSettings = onehack.Panel(Colors)
			MainSettings:Dock(TOP)
			MainSettings:DockMargin(0, 10, 10, 10)
			MainSettings:SetSize(260,270)

			local Mixer = vgui.Create( "DColorMixer", MainSettings )
			Mixer:SetSize(240,210)
			Mixer:Dock(TOP)
			Mixer:DockMargin(10, 10, 10, 0)
			Mixer:SetPalette( false )
			Mixer:SetAlphaBar( true )
			Mixer:SetWangs( false )
			Mixer:SetColor( onehack.vars[onehack.ActiveColorChange] or Color(255,255,255) )
			function Mixer:ValueChanged( col )
				onehack.vars[onehack.ActiveColorChange] = col
			end
			local check = onehack.CheckBox(MainSettings,'Rainbow','ESP_RAINBOW_CURENT')
			function check:DoClick()
				onehack.rainbows[onehack.ActiveColorChange] = !onehack.rainbows[onehack.ActiveColorChange]
				onehack.vars['ESP_RAINBOW_CURENT'] = onehack.rainbows[onehack.ActiveColorChange]
			end
		end},
	})

end

local function AimPanel()

	if IsValid(onehack.curpage) then onehack.curpage:Remove() end

	local Aimbot = onehack.OptionsPanel(onehack.MainFrame)
	Aimbot.ActiveTab = nil
	Aimbot:MoveToBack()
	onehack.curpage = Aimbot

	local Legitbot = onehack.OptionsPanel(Aimbot)
	Legitbot:SetPos(0,50)
	Legitbot:SetSize(Aimbot:GetWide(),Aimbot:GetTall()-50)
	Aimbot.ActiveTab = Legitbot
	function Legitbot:Paint(w,h) end

	local MainSettings = onehack.Panel(Legitbot)
	MainSettings:Dock(TOP)
	MainSettings:DockMargin(10, 10, 10, 10)
	MainSettings:SetTall(50)

	onehack.CheckBox(MainSettings,'Enabled','AIMBOT_LEGIT_ENABLED')

	local Options = onehack.Panel(Legitbot)
	Options:Dock(LEFT)
	Options:DockMargin(10, 0, 10, 10)
	Options:SetWide(260)
	onehack.Header(Options, {{name='Options',onclick=function()end}})
	local OptionsScroll = onehack.ScrollPanel(Options,-30)

	onehack.CheckBox(OptionsScroll,'Auto shot','AIMBOT_LEGIT_AUTOSHOT')
	onehack.Slider(OptionsScroll,'FOV','AIMBOT_LEGIT_FOV',180,1)
	onehack.Slider(OptionsScroll,'Smooth','AIMBOT_LEGIT_SMOOTH',100,1)
	onehack.Spliter(OptionsScroll)
	onehack.CheckBox(OptionsScroll,'Ignore team','AIMBOT_LEGIT_IGNORETEAM')
	onehack.CheckBox(OptionsScroll,'Ignore admins','AIMBOT_LEGIT_IGNOREADMINS')
	onehack.CheckBox(OptionsScroll,'Ignore nocliped','AIMBOT_LEGIT_IGNORENOCLIP')
	onehack.Spliter(OptionsScroll)
	onehack.CheckBox(OptionsScroll,'Slient','AIMBOT_LEGIT_SLIENT')
	onehack.CheckBox(OptionsScroll,'No Recoil','AIMBOT_LEGIT_RECOIL')
	onehack.CheckBox(OptionsScroll,'No Spread','AIMBOT_LEGIT_SPREAD')

    local Settings = onehack.Panel(Legitbot)
    Settings:Dock(LEFT)
    Settings:DockMargin(0, 0, 10, 10)
    Settings:SetWide(260)
    Settings.ActiveTab = nil
    local SettingsScroll = onehack.ScrollPanel(Settings,4)
    onehack.CheckBox(SettingsScroll,'Enabled','AIMBOT_ANTIAIM_ENABLED')
    onehack.CheckBox(SettingsScroll,'Show Real Chams','AIMBOT_ANTIAIM_AACHAMS')
    onehack.CheckBox(SettingsScroll,'Show Fake Chams','AIMBOT_ANTIAIM_FAACHAMS')
    onehack.CheckBox(SettingsScroll,'Show Lagg Chams','AIMBOT_ANTIAIM_FAKELAGG')
    onehack.Spliter(SettingsScroll)
    onehack.Slider(SettingsScroll,'Fake Lagg Factor','AIMBOT_ANTIAIM_FAKE_LAGG',100,1)

    Settings.ActiveTab = SettingsScroll

    onehack.Header(Settings, {
        {name='Main',onclick=function()
            if IsValid(Settings.ActiveTab) then Settings.ActiveTab:Remove() end
            local SettingsScroll = onehack.ScrollPanel(Settings,4)
            onehack.CheckBox(SettingsScroll,'Enabled','AIMBOT_ANTIAIM_ENABLED')
            onehack.CheckBox(SettingsScroll,'Show Real Chams','AIMBOT_ANTIAIM_AACHAMS')
            onehack.CheckBox(SettingsScroll,'Show Fake Chams','AIMBOT_ANTIAIM_FAACHAMS')
            onehack.CheckBox(SettingsScroll,'Show Lagg Chams','AIMBOT_ANTIAIM_FAKELAGG')
            onehack.Spliter(SettingsScroll)
            onehack.Slider(SettingsScroll,'Fake Lagg Factor','AIMBOT_ANTIAIM_FAKE_LAGG',100,1)
            Settings.ActiveTab = SettingsScroll
        end},
        {name='Real',onclick=function()
            if IsValid(Settings.ActiveTab) then Settings.ActiveTab:Remove() end
            local SettingsScroll = onehack.ScrollPanel(Settings,4)
            
            onehack.DropDown(SettingsScroll,"Pich",{"Disabled","Jitter","Down","Up"},"AIMBOT_ANTIAIM_PICH")
            onehack.DropDown(SettingsScroll,"Yaw",{"Disabled","Jitter","Switch","Switch + Backward","Switch + 180","Backward","180"},"AIMBOT_ANTIAIM_YAW")
            onehack.Slider(SettingsScroll,'Yaw Switch Range','AIMBOT_ANTIAIM_SWITCHRANGE',180,1)
            onehack.Slider(SettingsScroll,'Fake Yaw Switch Speed','AIMBOT_ANTIAIM_SWITCHSPEED',100,1)
            Settings.ActiveTab = SettingsScroll
        end},
        {name='Fake',onclick=function()
            if IsValid(Settings.ActiveTab) then Settings.ActiveTab:Remove() end
            local SettingsScroll = onehack.ScrollPanel(Settings,4)
            nehack.CheckBox(SettingsScroll,'Enable Fake','AIMBOT_ANTIAIM_FAKE_ENABLED')
            onehack.DropDown(SettingsScroll,"Fake Pich",{"Disabled","Jitter","Down","Up"},"AIMBOT_ANTIAIM_FAKE_PICH")
            onehack.DropDown(SettingsScroll,"Fake Yaw",{"Disabled","Jitter","Switch","Switch + Backward","Switch + 180","Backward","180"},"AIMBOT_ANTIAIM_FAKE_YAW")
            onehack.Slider(SettingsScroll,'Fake Yaw Switch Range','AIMBOT_ANTIAIM_FAKE_SWITCHRANGE',180,1)
            onehack.Slider(SettingsScroll,'Fake Yaw Switch Speed','AIMBOT_ANTIAIM_FAKE_SWITCHSPEED',100,1)
            Settings.ActiveTab = SettingsScroll
        end},
    })

	onehack.Header(Aimbot, {
		{name='Legitbot',onclick=function()

			if IsValid(Aimbot.ActiveTab) then Aimbot.ActiveTab:Remove() end
			local Legitbot = onehack.OptionsPanel(Aimbot)
			Legitbot:SetPos(0,50)
			Legitbot:SetSize(Aimbot:GetWide(),Aimbot:GetTall()-50)
			Aimbot.ActiveTab = Legitbot
			function Legitbot:Paint(w,h) end

			local MainSettings = onehack.Panel(Legitbot)
			MainSettings:Dock(TOP)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetTall(50)

			onehack.CheckBox(MainSettings,'Enabled','AIMBOT_LEGIT_ENABLED')

			local Options = onehack.Panel(Legitbot)
			Options:Dock(LEFT)
			Options:DockMargin(10, 0, 10, 10)
			Options:SetWide(260)
			onehack.Header(Options, {{name='Options',onclick=function()end}})
			local OptionsScroll = onehack.ScrollPanel(Options,-30)

			onehack.CheckBox(OptionsScroll,'Auto shot','AIMBOT_LEGIT_AUTOSHOT')
			onehack.Slider(OptionsScroll,'FOV','AIMBOT_LEGIT_FOV',180,1)
			onehack.Slider(OptionsScroll,'Smooth','AIMBOT_LEGIT_SMOOTH',100,1)
			onehack.Spliter(OptionsScroll)
			onehack.CheckBox(OptionsScroll,'Ignore team','AIMBOT_LEGIT_IGNORETEAM')
			onehack.CheckBox(OptionsScroll,'Ignore admins','AIMBOT_LEGIT_IGNOREADMINS')
			onehack.CheckBox(OptionsScroll,'Ignore nocliped','AIMBOT_LEGIT_IGNORENOCLIP')
			onehack.Spliter(OptionsScroll)
			onehack.CheckBox(OptionsScroll,'Slient','AIMBOT_LEGIT_SLIENT')
			onehack.CheckBox(OptionsScroll,'No Recoil','AIMBOT_LEGIT_RECOIL')
			onehack.CheckBox(OptionsScroll,'No Spread','AIMBOT_LEGIT_SPREAD')

			local Settings = onehack.Panel(Legitbot)
			Settings:Dock(LEFT)
			Settings:DockMargin(0, 0, 10, 10)
            Settings:SetWide(260)
            Settings.ActiveTab = nil
            local SettingsScroll = onehack.ScrollPanel(Settings,4)
            onehack.CheckBox(SettingsScroll,'Enabled','AIMBOT_ANTIAIM_ENABLED')
            onehack.CheckBox(SettingsScroll,'Show Real Chams','AIMBOT_ANTIAIM_AACHAMS')
            onehack.CheckBox(SettingsScroll,'Show Fake Chams','AIMBOT_ANTIAIM_FAACHAMS')
            onehack.CheckBox(SettingsScroll,'Show Lagg Chams','AIMBOT_ANTIAIM_FAKELAGG')
            onehack.Spliter(SettingsScroll)
            onehack.Slider(SettingsScroll,'Fake Lagg Factor','AIMBOT_ANTIAIM_FAKE_LAGG',100,1)

            Settings.ActiveTab = SettingsScroll

			onehack.Header(Settings, {
                {name='Main',onclick=function()
                    if IsValid(Settings.ActiveTab) then Settings.ActiveTab:Remove() end
                    local SettingsScroll = onehack.ScrollPanel(Settings,4)
                    onehack.CheckBox(SettingsScroll,'Enabled','AIMBOT_ANTIAIM_ENABLED')
                    onehack.CheckBox(SettingsScroll,'Show Real Chams','AIMBOT_ANTIAIM_AACHAMS')
                    onehack.CheckBox(SettingsScroll,'Show Fake Chams','AIMBOT_ANTIAIM_FAACHAMS')
                    onehack.CheckBox(SettingsScroll,'Show Lagg Chams','AIMBOT_ANTIAIM_FAKELAGG')
                    onehack.Spliter(SettingsScroll)
                    onehack.Slider(SettingsScroll,'Fake Lagg Factor','AIMBOT_ANTIAIM_FAKE_LAGG',100,1)
                    Settings.ActiveTab = SettingsScroll
                end},
                {name='Real',onclick=function()
                    if IsValid(Settings.ActiveTab) then Settings.ActiveTab:Remove() end
                    local SettingsScroll = onehack.ScrollPanel(Settings,4)
                    onehack.DropDown(SettingsScroll,"Pich",{"Disabled","Jitter","Down","Up"},"AIMBOT_ANTIAIM_PICH")
                    onehack.DropDown(SettingsScroll,"Yaw",{"Disabled","Jitter","Switch","Switch + Backward","Switch + 180","Backward","180"},"AIMBOT_ANTIAIM_YAW")
                    onehack.Slider(SettingsScroll,'Yaw Switch Range','AIMBOT_ANTIAIM_SWITCHRANGE',180,1)
                    onehack.Slider(SettingsScroll,'Fake Yaw Switch Speed','AIMBOT_ANTIAIM_SWITCHSPEED',100,1)
                    Settings.ActiveTab = SettingsScroll
                end},
                {name='Fake',onclick=function()
                    if IsValid(Settings.ActiveTab) then Settings.ActiveTab:Remove() end
                    local SettingsScroll = onehack.ScrollPanel(Settings,4)
                    onehack.DropDown(SettingsScroll,"Fake Pich",{"Disabled","Jitter","Down","Up"},"AIMBOT_ANTIAIM_FAKE_PICH")
                    onehack.DropDown(SettingsScroll,"Fake Yaw",{"Disabled","Jitter","Switch","Switch + Backward","Switch + 180","Backward","180"},"AIMBOT_ANTIAIM_FAKE_YAW")
                    onehack.Slider(SettingsScroll,'Fake Yaw Switch Range','AIMBOT_ANTIAIM_FAKE_SWITCHRANGE',180,1)
                    onehack.Slider(SettingsScroll,'Fake Yaw Switch Speed','AIMBOT_ANTIAIM_FAKE_SWITCHSPEED',100,1)
                    Settings.ActiveTab = SettingsScroll
                end},
            })

		end},

		{name='Trigger',onclick=function()

			if IsValid(Aimbot.ActiveTab) then Aimbot.ActiveTab:Remove() end
			local Trigger = onehack.OptionsPanel(Aimbot)
			Trigger:SetPos(0,50)
			Trigger:SetSize(Aimbot:GetWide(),Aimbot:GetTall()-50)
			Aimbot.ActiveTab = Trigger
			function Trigger:Paint(w,h) end

			local MainSettings = onehack.Panel(Trigger)
			MainSettings:Dock(TOP)
			MainSettings:DockMargin(10, 10, 10, 10)
			MainSettings:SetTall(50)

			onehack.CheckBox(MainSettings,'Enabled','TRIGGER_ENABLED')

		end},

	})

end

local function Others()

	if IsValid(onehack.curpage) then onehack.curpage:Remove() end

	local Others = onehack.OptionsPanel(onehack.MainFrame)
	Others.ActiveTab = nil
	Others:MoveToBack()
	onehack.curpage = Others

	onehack.Header(Others, {
		{name='Others',onclick=function()

            local Movement = onehack.Panel(Others)
            Movement:Dock(LEFT)
            Movement:DockMargin(10, 10, 10, 10)
            Movement:SetWide(260)
            onehack.Header(Movement, {{name='Movement',onclick=function()end}})
            local MovementScroll = onehack.ScrollPanel(Movement,-30)
        
            onehack.CheckBox(MovementScroll,'Enabled','OTHERS_SELF_ENABLED')
            onehack.Spliter(MovementScroll)
            onehack.CheckBox(MovementScroll,'BunnyHop','OTHERS_SELF_BHOP')
            onehack.CheckBox(MovementScroll,'Auto-Strafe','OTHERS_SELF_STRAFE')
            onehack.CheckBox(MovementScroll,'Auto-Crouch','OTHERS_SELF_CROUCH')
            onehack.Spliter(MovementScroll)
            onehack.CheckBox(MovementScroll,'Anti AFK','OTHERS_SELF_AAFK')
        
            local Around = onehack.Panel(Others)
            Around:Dock(LEFT)
            Around:DockMargin(0, 10, 10, 10)
            Around:SetWide(260)
            onehack.Header(Around, {{name='Around',onclick=function()end}})
            local AroundScroll = onehack.ScrollPanel(Around,4)
        
            onehack.CheckBox(AroundScroll,'Enabled','OTHERS_AROUND_ENABLED')
            onehack.Spliter(AroundScroll)
            onehack.CheckBox(AroundScroll,'Anti-ScreeGrab','OTHERS_AROUND_ASG')
            onehack.CheckBox(AroundScroll,'Hide Files','OTHERS_AROUND_HIDEFILES')
            onehack.CheckBox(AroundScroll,'Self Protection','OTHERS_AROUND_SELFHIDE')
            onehack.CheckBox(AroundScroll,'Disable SendLua','OTHERS_AROUND_DISSELFLUA')
            onehack.CheckBox(AroundScroll,'Disable HTTP','OTHERS_AROUND_DISHTTP')
            onehack.Spliter(AroundScroll)
            onehack.CheckBox(AroundScroll,'Bypass Screen Fade','OTHERS_AROUND_SCREENFADE')
            onehack.CheckBox(AroundScroll,'Safe Mode','OTHERS_AROUND_SAFEMODE')
		end},

    })
    
    local Movement = onehack.Panel(Others)
    Movement:Dock(LEFT)
    Movement:DockMargin(10, 10, 10, 10)
    Movement:SetWide(260)
    onehack.Header(Movement, {{name='Movement',onclick=function()end}})
    local MovementScroll = onehack.ScrollPanel(Movement,-30)

    onehack.CheckBox(MovementScroll,'Enabled','OTHERS_SELF_ENABLED')
    onehack.Spliter(MovementScroll)
    onehack.CheckBox(MovementScroll,'BunnyHop','OTHERS_SELF_BHOP')
    onehack.CheckBox(MovementScroll,'Auto-Strafe','OTHERS_SELF_STRAFE')
    onehack.CheckBox(MovementScroll,'Auto-Crouch','OTHERS_SELF_CROUCH')
    onehack.Spliter(MovementScroll)
    onehack.CheckBox(MovementScroll,'Anti AFK','OTHERS_SELF_AAFK')

    local Around = onehack.Panel(Others)
    Around:Dock(LEFT)
    Around:DockMargin(0, 10, 10, 10)
    Around:SetWide(260)
    onehack.Header(Around, {{name='Around',onclick=function()end}})
    local AroundScroll = onehack.ScrollPanel(Around,4)

    onehack.CheckBox(AroundScroll,'Enabled','OTHERS_AROUND_ENABLED')
    onehack.Spliter(AroundScroll)
    onehack.CheckBox(AroundScroll,'Anti-ScreeGrab','OTHERS_AROUND_ASG')
    onehack.CheckBox(AroundScroll,'Hide Files','OTHERS_AROUND_HIDEFILES')
    onehack.CheckBox(AroundScroll,'Self Protection','OTHERS_AROUND_SELFHIDE')
    onehack.CheckBox(AroundScroll,'Disable SendLua','OTHERS_AROUND_DISSELFLUA')
    onehack.CheckBox(AroundScroll,'Disable HTTP','OTHERS_AROUND_DISHTTP')
    onehack.Spliter(AroundScroll)
    onehack.CheckBox(AroundScroll,'Bypass Screen Fade','OTHERS_AROUND_SCREENFADE')
    onehack.CheckBox(AroundScroll,'Safe Mode','OTHERS_AROUND_SAFEMODE')

end

local function Configs()

	if IsValid(onehack.curpage) then onehack.curpage:Remove() end

	local Others = onehack.OptionsPanel(onehack.MainFrame)
	Others.ActiveTab = nil
	Others:MoveToBack()
	onehack.curpage = Others

	onehack.Header(Others, {
		{name='Config',onclick=function()

            local Movement = onehack.Panel(Others)
            Movement:Dock(LEFT)
            Movement:DockMargin(10, 10, 10, 10)
            Movement:SetWide(260)
            onehack.Header(Movement, {{name='Movement',onclick=function()end}})
            local MovementScroll = onehack.ScrollPanel(Movement,-30)
        
            onehack.CheckBox(MovementScroll,'Enabled','OTHERS_SELF_ENABLED')
            onehack.Spliter(MovementScroll)
            onehack.CheckBox(MovementScroll,'BunnyHop','OTHERS_SELF_BHOP')
            onehack.CheckBox(MovementScroll,'Auto-Strafe','OTHERS_SELF_STRAFE')
            onehack.CheckBox(MovementScroll,'Auto-Crouch','OTHERS_SELF_CROUCH')
            onehack.Spliter(MovementScroll)
            onehack.CheckBox(MovementScroll,'Anti AFK','OTHERS_SELF_AAFK')
        
            local Around = onehack.Panel(Others)
            Around:Dock(LEFT)
            Around:DockMargin(0, 10, 10, 10)
            Around:SetWide(260)
            onehack.Header(Around, {{name='Around',onclick=function()end}})
            local AroundScroll = onehack.ScrollPanel(Around,4)
        
            onehack.CheckBox(AroundScroll,'Enabled','OTHERS_AROUND_ENABLED')
            onehack.Spliter(AroundScroll)
            onehack.CheckBox(AroundScroll,'Anti-ScreeGrab','OTHERS_AROUND_ASG')
            onehack.CheckBox(AroundScroll,'Hide Files','OTHERS_AROUND_HIDEFILES')
            onehack.CheckBox(AroundScroll,'Self Protection','OTHERS_AROUND_SELFHIDE')
            onehack.CheckBox(AroundScroll,'Disable SendLua','OTHERS_AROUND_DISSELFLUA')
            onehack.CheckBox(AroundScroll,'Disable HTTP','OTHERS_AROUND_DISHTTP')
            onehack.Spliter(AroundScroll)
            onehack.CheckBox(AroundScroll,'Bypass Screen Fade','OTHERS_AROUND_SCREENFADE')
            onehack.CheckBox(AroundScroll,'Safe Mode','OTHERS_AROUND_SAFEMODE')
		end},

    })
    
    local Movement = onehack.Panel(Others)
    Movement:Dock(LEFT)
    Movement:DockMargin(10, 10, 10, 10)
    Movement:SetWide(260)
    onehack.Header(Movement, {{name='Movement',onclick=function()end}})
    local MovementScroll = onehack.ScrollPanel(Movement,-30)

    onehack.CheckBox(MovementScroll,'**TO DO MAKE LIST**','OTHERS_SELF_ENABLED')

    local Around = onehack.Panel(Others)
    Around:Dock(LEFT)
    Around:DockMargin(0, 10, 10, 10)
    Around:SetWide(260)
    onehack.Header(Around, {{name='Around',onclick=function()end}})
    local AroundScroll = onehack.ScrollPanel(Around,4)

    onehack.CheckBox(MovementScroll,'**TO DO MAKE BUTTONS**','OTHERS_SELF_ENABLED')

end

function onehack.ToggleMenu()
onehack.MainFrame = onehack.DrawFrame(600,550)

onehack.SideFrame = onehack.SideMenu(onehack.MainFrame)

onehack.SideHeader(onehack.SideFrame)

ChamsPanel()

onehack.SideButton(onehack.SideFrame,'chams',"Visuals","Player, World, Chams, Glow",function()

	ChamsPanel()

end)

onehack.SideButton(onehack.SideFrame,'aimbot',"Aimbot","Legitbot, Trigger, Ragebot",function()

	AimPanel()

end)

onehack.SideButton(onehack.SideFrame,'other',"Misc","Other functions",function()

	Others()

end)

onehack.SideButton(onehack.SideFrame,'config',"Config","Your config's",function()

	Configs()

end)

onehack.SideFooter(onehack.SideFrame)
end

local input = input
local timer = timer
hook.Add("Think",'onehack.hooks',function()
	if input.IsKeyDown( KEY_F11 ) then
		if not timer.Exists('onehack.MenuIsPressed') then
			if IsValid(onehack.MainFrame) then
				onehack.MainFrame:AlphaTo(0, 0.2)
				timer.Simple(0.2,function()
					onehack.MainFrame:Remove()
				end)
			else
				onehack.ToggleMenu()
			end
			timer.Create('onehack.MenuIsPressed',0.3,1,function() end)
		end
	end
end)