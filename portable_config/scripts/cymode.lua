--为uosc实现单个按钮切换循环方式
--依次切换为"不循环(默认)-单曲循环-顺序播放列表"，播放列表里只有一项时，不提供`顺序播放列表`选项
--在uosc.conf的controls:中添加此字段即可
--cycle:repeat:icon@cymode:close=repeat/file=repeat_one!/playlist=repeat!?循环模式

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
