SLASH_QUESTCHECK1 = '/QUESTCHECK'
function SlashCmdList.QUESTCHECK(parameter)
	local _, _, questid = strfind(parameter, '^%s*(.-)%s*$')
	
	if questid == '' then
		print("usage: /questcheck <quest number>")
	else
		for k, v in pairs({ QuestCompleted = tonumber(questid)}) do print(format("%s: %s", k, IsQuestFlaggedCompleted(v) and "\124cff00ff00Yes\124r" or "\124cffff0000No\124r")) end
	end
end