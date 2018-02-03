--
-- Testmodule callback functions
--
-- To avoid function name collisions, you should use local functions and export them with a unique package name.
--

local function onTalkStatusChangeEvent(serverConnectionHandlerID, status, isReceivedWhisper, clientID)
--	print("Blabbr: onTalkStatusChangeEvent: " .. serverConnectionHandlerID .. " " .. status .. " " .. isReceivedWhisper .. " " .. clientID)
	local displayName, error = ts3.getClientDisplayName(serverConnectionHandlerID, clientID)
	if error == ts3errors.ERROR_ok then
		if status == ts3defs.TalkStatus.STATUS_TALKING then
			ts3.printMessage(serverConnectionHandlerID, "> " .. displayName .. " <", 1)
		end    
	end

end

blabbr_events = {
	onTalkStatusChangeEvent = onTalkStatusChangeEvent
}
