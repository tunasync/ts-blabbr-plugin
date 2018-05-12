--
-- Testmodule callback functions
--
-- To avoid function name collisions, you should use local functions and export them with a unique package name.
--

local function onTalkStatusChangeEvent(serverConnectionHandlerID, status, isReceivedWhisper, clientID)
--	print("Blabbr: onTalkStatusChangeEvent: " .. serverConnectionHandlerID .. " " .. status .. " " .. isReceivedWhisper .. " " .. clientID)
	if status == ts3defs.TalkStatus.STATUS_TALKING then
		local displayName, error = ts3.getClientDisplayName(serverConnectionHandlerID, clientID)
		local uniqueIdentifier, error = ts3.getClientVariableAsString(serverConnectionHandlerID, clientID, ts3defs.ClientProperties.CLIENT_UNIQUE_IDENTIFIER)
		ts3.printMessage(serverConnectionHandlerID, ":: [URL=client://" .. clientID .. "/" .. uniqueIdentifier .. "][color=green]" .. displayName .. "[/color][/URL]", 1)
	end    
end

blabbr_events = {
	onTalkStatusChangeEvent = onTalkStatusChangeEvent
}
