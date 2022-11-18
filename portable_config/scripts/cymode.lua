mp.commandv('script-message-to', 'uosc', 'set', 'icon', 'close')
mp.register_script_message('set', function(prop, value)
    if value == "file" then
        mp.set_property("loop-file", "inf")
        mp.set_property("loop-playlist", "no")
        mp.commandv('script-message-to', 'uosc', 'set', 'icon', 'file')
    elseif value == "playlist" and mp.get_property_number('playlist-count') ~= 1 then
        mp.set_property("loop-file", "no")
        mp.set_property("loop-playlist", "inf")
        mp.commandv('script-message-to', 'uosc', 'set', 'icon', 'playlist')
    else
        mp.set_property("loop-file", "no")
        mp.set_property("loop-playlist", "no")
        mp.commandv('script-message-to', 'uosc', 'set', 'icon', 'close')
    end
end)
