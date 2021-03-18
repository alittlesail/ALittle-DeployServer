-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs


assert(DeployServer.Job, " extends class:DeployServer.Job is nil")
DeployServer.IGGChatJob = Lua.Class(DeployServer.Job, "DeployServer.IGGChatJob")

function DeployServer.IGGChatJob:Execute(build_info)
	local ___COROUTINE = coroutine.running()
	local url = "http://im-api.skyunion.net/msg"
	local data = {}
	data["token"] = self._info.detail.igg_chat_token
	data["target"] = "group"
	data["room"] = self._info.detail.igg_chat_room_id
	data["title"] = self._info.detail.igg_chat_title
	data["content_type"] = 1
	data["content"] = self._info.detail.igg_chat_content
	local error, result = A_HttpSystem:PostJson(url, data)
	return error, result
end

end