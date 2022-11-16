local mode = "2buttons"
local function modep(name, value)
    if(value > 1) then mode = "3buttons" else mode = "2buttons" end end
mp.observe_property("playlist-count", "number", modep)

mp.commandv('script-message-to', 'uosc', 'set', 'icon', "close")
mp.register_script_message('set', function(prop, value)
    if value == "file" then
        mp.set_property_native("loop-file", "inf")
        mp.set_property_native("loop-playlist", "no")
        mp.commandv('script-message-to', 'uosc', 'set', 'icon', "file")
    elseif value == "playlist" and mode == "3buttons" then
        mp.set_property_native("loop-file", "no")
        mp.set_property_native("loop-playlist", "inf")
        mp.commandv('script-message-to', 'uosc', 'set', 'icon', "playlist")
    elseif value == "close" or value == "playlist" and mode == "2buttons" then
        mp.set_property_native("loop-file", "no")
        mp.set_property_native("loop-playlist", "no")
        mp.commandv('script-message-to', 'uosc', 'set', 'icon', "close")
    end
end)