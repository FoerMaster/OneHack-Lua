local load = {
    "prepare.lua",
    "protector.lua",
    "gui.lua",
    "menu.lua",
}
for k,v in pairs(laad) do
    RunString(file.Read("onehack/"..v, "MOD"), "OneLoader")
end