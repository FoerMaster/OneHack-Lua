
for i = 1, 50 do
    surface.CreateFont( "onehack.font."..i, {
        font = "Roboto", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
        size = i,
        weight = 500,
        antialias = true,
    } )
    
end

for i = 1, 50 do
    surface.CreateFont( "onehack.font.mini."..i, {
        font = "Roboto", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
        size = i,
        weight = 1,
        antialias = true,
    } )
    
end
function onehack.FilledCircle(x, y, radius, seg, color, fraction)
	surface.SetDrawColor(color)
	surface.DrawPoly(onehack.GenerateCircle(x, y, radius, seg, fraction))
end

function onehack.GenerateCircle(x, y, radius, seg, fraction)
	fraction = fraction or 1
	local circlePolygon = {}

	surface.SetTexture(0)
	table.insert(circlePolygon, { x = x, y = y, u = 0.5, v = 0.5 })

	for i = 0, seg do
		local a = math.rad((i / seg) * -360 * fraction)
		table.insert(circlePolygon, { x = x + math.sin(a) * radius, y = y + math.cos(a) * radius, u = math.sin(a) / 2 + 0.5, v = math.cos(a) / 2 + 0.5 } )
	end

	local a = math.rad(0)
	table.insert(circlePolygon, { x = x, y = y, u = math.sin(a) / 2 + 0.5, v = math.cos(a) / 2 + 0.5 })
	return circlePolygon
end

function onehack.Drawline(x,y,x2,y2,color)
    surface.SetDrawColor(color)
    surface.DrawLine(x,y,x2,y2)
    surface.SetDrawColor( Color(255,255,255,255) )
end

function onehack.InfoBoxes( mag,value,left,top,right,bottom,r,g,b,a )
    local poly = {
    {x=left,y=top},
    {x=right,y=top},
    {x=right,y=bottom},
    {x=left,y=bottom}
	}
	surface.SetDrawColor( r,g,b,a )
	draw.NoTexture()
	surface.DrawPoly(poly)
	draw.SimpleTextOutlined(value,"default",left + (right - left) / 2,top,Color(r,g,b,a),mag,1,1,Color(0,0,0))
end

function onehack.DrawRect(x,y,w,h,color)
    surface.SetDrawColor( color )
    surface.DrawRect( x, y, w, h )
    surface.SetDrawColor( Color(255,255,255,255) )
end

function onehack.DrawOutLinedRect(x,y,w,h,color)
    surface.SetDrawColor( color )
    surface.DrawOutlinedRect( x, y, w, h )
    surface.SetDrawColor( Color(255,255,255,255) )
end


function onehack.DrawFrame(sizeX,sizeY)
    local GUI = vgui.Create("DFrame")
    GUI:SetSize(sizeX,sizeY)
    GUI:SetPos(100,100)
    GUI:MakePopup()
    GUI:SetTitle(" ")
    GUI:ShowCloseButton(false)
    GUI:SetDraggable(false)
    GUI:SetBackgroundBlur( true )
    GUI:SetPaintShadow( true )
    GUI:SetAlpha(0)
    GUI:AlphaTo(255, 0.2)
    function GUI:Paint(w,h)

        draw.RoundedBox(0, 0, 0, w, h, Color(40,40,40))

    end
    return GUI
end

function onehack.SideMenu(mPanel)
    local GUI = vgui.Create("DPanel",mPanel)
    GUI:SetSize(50,mPanel:GetTall())
    GUI:SetPos(0,0)

    function GUI:Paint(w,h)

        draw.RoundedBox(0, 0, 0, w, h, Color(35,35,35))
        if GUI:IsChildHovered() then
            GUI.ChildActive = true
        else
            GUI.ChildActive = false
        end
        if GUI:IsChildHovered() and !GUI:IsHovered() and !GUI.isActive1 then
            GUI:SizeTo(onehack.style.sidesize, mPanel:GetTall(), 0.2, 0, -1)
            GUI.isActive1 = true
            GUI.isActive2 = false
        elseif GUI:IsHovered() and !GUI:IsChildHovered() and !GUI.isActive1 then
            GUI:SizeTo(onehack.style.sidesize, mPanel:GetTall(), 0.2, 0, -1)
            GUI.isActive1 = true
            GUI.isActive2 = false
        elseif (!GUI:IsChildHovered() and !GUI:IsHovered()) and !GUI.isActive2 and !GUI.ChildActive then
            GUI:SizeTo(50, mPanel:GetTall(), 0.2, 0, -1)
            GUI.isActive2 = true
            GUI.isActive1 = false
        end

    end

    return GUI

end

function onehack.SideHeader(mPanel)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(TOP)
    GUI:SetText("")
    GUI:SetSize(onehack.style.sidesize,50)
    local alpha = 0
    local textAlpha = 0
    function GUI:Paint(w,h)

        if mPanel.isActive1 then

            if textAlpha < 250 then
                textAlpha = textAlpha + 20
            end

        else

            if textAlpha > 0 then
                textAlpha = textAlpha - 20
            end

        end

        draw.RoundedBox(0, 0, 0, w, h, Color(10,10,10,100))

        surface.SetMaterial(Material('onehack/side/menu.png'))
        surface.SetDrawColor(255, 255, 255, 250 - textAlpha)
        surface.DrawTexturedRectRotated(h/2, h/2, 25, 25, 0)

        surface.SetMaterial(Material('onehack/side/oneh.png'))
        surface.SetDrawColor(255, 255, 255, textAlpha)
        surface.DrawTexturedRectRotated(onehack.style.sidesize/2, h/2, 58-12, 38-10, 0)

    end

    return GUI

end

function onehack.SideButton(mPanel, icon, name,desc,onclick)
    local GUI = vgui.Create("DButton",mPanel)
    GUI:Dock(TOP)
    GUI:SetText("")
    GUI:SetSize(onehack.style.sidesize,50)
    local alpha = 0
    local textAlpha = 0
    function GUI:Paint(w,h)

        if GUI:IsHovered() then

            if alpha < 150 then
                alpha = alpha + 20
            end

        else

            if alpha > 0 then
                alpha = alpha - 20
            end

        end

        if mPanel.isActive1 then

            if textAlpha < 250 then
                textAlpha = textAlpha + 20
            end

        else

            if textAlpha > 0 then
                textAlpha = textAlpha - 20
            end

        end

        draw.RoundedBox(0, 0, 0, w, h, Color(50,50,50,alpha))

        surface.SetMaterial(Material('onehack/side/'..icon..'.png'))
        surface.SetDrawColor(255, 255, 255, 255)
        surface.DrawTexturedRectRotated(h/2, h/2, 25, 25, 0)

        draw.SimpleText( name, "onehack.font.17", 55, 10, Color(255,255,255,textAlpha) )

        draw.SimpleText( desc, "onehack.font.mini.13", 54, 28, Color(100,100,100,textAlpha) )

        if mPanel:GetChildren()[2] == GUI then
            surface.SetMaterial(Material('gui/gradient_down'))
            surface.SetDrawColor(0, 0, 0, 200)
            surface.DrawTexturedRect(0, 0, w, 10)
        end

    end

    function GUI:DoClick(clr, btn)
        onclick()
    end

    return GUI

end

function onehack.SideFooter(mPanel)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(BOTTOM)
    GUI:DockMargin(0, 0, 0, 0)
    GUI:SetText("")
    GUI:SetSize(onehack.style.sidesize,50)
    local alpha = 0
    local textAlpha = 0
    function GUI:Paint(w,h)

        if mPanel.isActive1 then

            if textAlpha < 100 then
                textAlpha = textAlpha + 10
            end

        else

            if textAlpha > 0 then
                textAlpha = textAlpha - 10
            end

        end

        draw.RoundedBox(0, 0, 0, w, h, Color(50,50,50,alpha))

        draw.RoundedBox(0, 0, 0, w, 1, Color(50,50,50,100))

        surface.SetMaterial(Material('onehack/side/gmod.png'))
        surface.SetDrawColor(60, 60, 60, 255)
        surface.DrawTexturedRectRotated(h/2, h/2, 25, 25, 0)

        draw.SimpleText( "OneHack v 1.0", "onehack.font.17", 55, 10, Color(255,255,255,textAlpha) )

        draw.SimpleText( "Best lua cheat in all GMOD!", "onehack.font.mini.13", 54, 28, Color(100,100,100,textAlpha) )

    end

    return GUI

end

function onehack.OptionsPanel(mPanel)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:SetPos(50,0)
    GUI:SetSize(mPanel:GetWide()-50,mPanel:GetTall())
    function GUI:Paint(w,h)
        --nope
    end

    return GUI

end

function onehack.Panel(mPanel)

    local GUI = vgui.Create("DPanel",mPanel)
    function GUI:Paint(w,h)
        draw.RoundedBox(3, 0, 0, w, h, Color(50,50,50))
        draw.RoundedBox(3, 1, 1, w-2, h-2, Color(40,40,40))
    end

    return GUI

end

function onehack.ScrollPanel(mPanel,additional)

    local GUI = vgui.Create("DScrollPanel",mPanel)
    GUI:Dock( FILL )
    GUI.VBar:SetWidth(0)
    function GUI:Paint(w,h)
        --draw.RoundedBox(3, 0, 0, w, h, Color(50,50,50))
        --draw.RoundedBox(3, 1, 1, w-2, h-2, Color(40,40,40))
    end

    local sbar = GUI:GetVBar() -- replace DScrollPanel with your DScrollPanel name
    sbar.LerpTarget = 0

    function sbar:AddScroll(dlta)
        local OldScroll = self.LerpTarget or self:GetScroll()
        dlta = dlta * 75 -- initial scroll when wheeled
        self.LerpTarget = math.Clamp(self.LerpTarget + dlta, -self.btnGrip:GetTall(), self.CanvasSize + self.btnGrip:GetTall())

        return OldScroll ~= self:GetScroll()
    end

    sbar.Think = function(s)
        local frac = FrameTime() * 5 -- speed with initial scroll

        if (math.abs(s.LerpTarget - s:GetScroll()) <= (s.CanvasSize / 10)) then
            frac = FrameTime() * 2 -- speed when close to scroll point
        end

        local newpos = Lerp(frac, s:GetScroll(), s.LerpTarget)
        s:SetScroll(math.Clamp(newpos, 0, s.CanvasSize))

        -- make sure the scroll doesn't go off the canvas
        if (s.LerpTarget < 0 and s:GetScroll() <= 0) then
            s.LerpTarget = 0
        elseif (s.LerpTarget > s.CanvasSize and s:GetScroll() >= s.CanvasSize) then
            s.LerpTarget = s.CanvasSize
        end
    end

    return GUI

end

function onehack.Header(mPanel,buttonsTbl)

    local activeTab = 1

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(TOP)
    GUI:SetSize(mPanel:GetWide(),50)
    function GUI:Paint(w,h)
        --draw.RoundedBox(0, 0, 0, w, h, Color(0,0,0,90))
    end

    local Slider = vgui.Create("DPanel",mPanel)
    Slider:SetPos(0,47)
    Slider:SetSize(GUI:GetWide()/#buttonsTbl,2)
    
    function Slider:Paint(w,h)
        draw.RoundedBox(0, 0, 0, w, h, Color(255,255,255))
    end

    for k,v in pairs(buttonsTbl) do

        local Button = vgui.Create("DButton",GUI)
        Button:Dock(LEFT)
        Button:SetText("")
        Button:SetSize(GUI:GetWide()/#buttonsTbl,50)
        local alpha = 0
        function Button:Paint(w,h)
    
            if Button:IsHovered() then
    
                if alpha < 150 then
                    alpha = alpha + 20
                end
    
            else
    
                if alpha > 0 then
                    alpha = alpha - 20
                end
    
            end
    
            draw.RoundedBox(0, 0, 0, w, h, Color(50,50,50,alpha))

            draw.RoundedBox(0, 0, h-3, w, 2, Color(255,255,255,5))

            if activeTab == k then
    
                draw.SimpleText( v.name, "onehack.font.17", w/2, h/2, Color(255,255,255,255),1,1 )

            else

                draw.SimpleText( v.name, "onehack.font.17", w/2, h/2, Color(255,255,255,20),1,1 )

            end
    
        end 

        function Button:DoClick(clr, btn)
            local x,y = Button:GetPos()
            Slider:MoveTo(x,47,0.1)
            activeTab = k
            v.onclick()
        end

    end

    return GUI,activeTab

end

function onehack.Spliter(mPanel)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(TOP)
    GUI:DockMargin(0, 7, 0, 0)
    GUI:SetTall(3)
    function GUI:Paint(w,h)
        draw.RoundedBox(0, 0, 0, w, 1, Color(50,50,50))
    end

end

function onehack.Slider(mPanel,name,value,max,def)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(TOP)
    GUI:DockMargin(0, 7, 0, 0)
    GUI:SetTall(50)
    local Slider = vgui.Create("DSlider",GUI)
    Slider:Dock(FILL)
    Slider:SetNumSlider( onehack.vars[value] )
    Slider:SetNotches( 0 )
    Slider:SetSlideX( onehack.vars[value] )
    Slider:DockMargin(18, 7, 60, 0)
    local xx,yy = onehack.vars[value] or 0,0
    Slider.TranslateValues = function(panel, x, y) 
		onehack.vars[value] = x
		xx,yy = x,y
		return x, y
    end
    local alpha = 0
    Slider:GetChildren()[1].Paint = function( self,w,h )

        if self:IsHovered() or Slider:IsEditing() then
    
            if alpha < 100 then
                alpha = alpha + 10
            end

        else

            if alpha > 0 then
                alpha = alpha - 10
            end

        end
           
        onehack.FilledCircle(h/2, h/2, 7, 20, Color(200,200,200))
        onehack.FilledCircle(h/2, h/2, 15, 20, Color(200,200,200,alpha))

    end

    function GUI:Paint(w,h)
        local value = math.Round(xx*max)
        draw.SimpleText( name, "onehack.font.13", 10, 0, Color(255,255,255,255) )

        draw.SimpleText( value, "onehack.font.17", w-30, h/2+3, Color(255,255,255,255),1,1 )
    end
    
    function Slider:Paint(w,h)

        local value2 = math.Round(xx*w)
        
        draw.RoundedBox(0,0,h/2-1.5,w,3,Color(50,50,50))
        
        draw.RoundedBox(0,0,h/2-1.5,value2,3,Color(200,200,200))
        
	end

end



function onehack.CheckBox(mPanel,text,var)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(TOP)
    GUI:DockMargin(0, 5, 0, 0)
    GUI:SetTall(40)
    function GUI:Paint(w,h)
        draw.SimpleText( text, "onehack.font.17", 10, h/2, Color(255,255,255,255),0,1 )

    end

    local Button = vgui.Create("DButton", GUI)
    Button:Dock(RIGHT)
    Button:DockMargin(0, 0, 5, 0)
    Button:SetText('')
    Button:SetSize(60,40)
    local alpha = 0
    local move = 0
    function Button:Paint(w,h)
        draw.RoundedBox(8, 10, 13, w-20, h-(13*2), Color(50+move*3,50+move*3,50+move*3))

        if Button:IsHovered() then
    
            if alpha < 100 then
                alpha = alpha + 10
            end

        else

            if alpha > 0 then
                alpha = alpha - 10
            end

        end

        if onehack.vars[var] then
    
            if move < 20 then
                move = move + 5
            end

        else

            if move > 0 then
                move = move - 5
            end

        end

        onehack.FilledCircle(h/2+move, h/2, 20, 20, Color(120+move*6,120+move*6,120+move*6,alpha))

        onehack.FilledCircle(h/2+move, h/2, 10, 20, Color(120+move*6,120+move*6,120+move*6))
    end

    function Button:DoClick()
        onehack.vars[var] = !onehack.vars[var]
    end

    return Button

end

function onehack.DropDown(mPanel,text,varss,var)

    local GUI = vgui.Create("DPanel",mPanel)
    GUI:Dock(TOP)
    GUI:DockMargin(2, 8, 0, 0)
    GUI:SetTall(40)
    function GUI:Paint(w,h)
        draw.SimpleText( text, "onehack.font.15", 10, 6, Color(255,255,255,255),0,1 )
    end

    local Down = vgui.Create( "DComboBox", GUI )
    Down:Dock(FILL)
    Down:DockMargin(10, 13, 10, 0)
    Down:SetValue( onehack.vars[var] or varss[1] )
    for k,v in pairs(varss) do
        Down:AddChoice( v )
    end
    Down.OnSelect = function( self, index, value )
        onehack.vars[var] = value
    end
    Down.Paint = function( _, w, h )
        --d-raw.RoundedBox(0,0,0,w,h,onehack.theme.backgroundalt2)
    end
    Down.PaintOver = function( _, w, h )
        --d-raw.RoundedBox(0,0,0,w,h,onehack.theme.backgroundalt2)
        draw.RoundedBox(0,0,h-1,w,1,_:IsHovered() and Color(255,255,255) or Color(100,100,100))
        draw.SimpleText( _:GetValue(), "onehack.font.17", 5, h/2, Color(255,255,255,255),0,1 )
    end

    return Down

end

function onehack.ColorSwitch(mPanel,text,var)

    local GUI = vgui.Create("DButton",mPanel)
    GUI:Dock(TOP)
    GUI:DockMargin(0, 0, 0, 0)
    GUI:SetText('')
    GUI:SetTall(40)
    local alpha = 0
    function GUI:Paint(w,h)
        if GUI:IsHovered() then
    
            if alpha < 5 then
                alpha = alpha + 1
            end

        else

            if alpha > 0 then
                alpha = alpha - 1
            end

        end
        if onehack.ActiveColorChange == var then
            draw.RoundedBox(0, 0, 0, w, h, Color(255,255,255,5))
        end
        draw.SimpleText( text, "onehack.font.17", 10, h/2, Color(255,255,255,255),0,1 )
        if mPanel:GetChildren()[2] == GUI then
            draw.RoundedBoxEx(4, 0, 0, w, h, Color(255,255,255,alpha),true,true,false,false)
        else
            draw.RoundedBox(0, 0, 0, w, h, Color(255,255,255,alpha))
        end
        draw.RoundedBox(4, w-(25+8), 8, 25, 25, Color(onehack.vars[var].r or 255,onehack.vars[var].g or 255,onehack.vars[var].b or 255))
    end

    function GUI:DoClick()

        onehack.ActiveColorChange = var
        onehack.vars['ESP_RAINBOW_CURENT'] = onehack.rainbows[var]
    end

end