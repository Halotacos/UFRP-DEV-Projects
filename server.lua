AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/tweet" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Twitter ", { 29, 161, 242 }, "| ", { 128, 128, 128 }, .. name, { 255, 255, 255 }, string.sub(msg,5))
	end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
