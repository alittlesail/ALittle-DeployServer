-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs

ALittle.RegStruct(1363542185, "DeployServer.WebHookRepository", {
name = "DeployServer.WebHookRepository", ns_name = "DeployServer", rl_name = "WebHookRepository", hash_code = 1363542185,
name_list = {"html_url"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(970880527, "DeployServer.AWebHookByGithub", {
name = "DeployServer.AWebHookByGithub", ns_name = "DeployServer", rl_name = "AWebHookByGithub", hash_code = 970880527,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(884914724, "DeployServer.QWebHookBySvn", {
name = "DeployServer.QWebHookBySvn", ns_name = "DeployServer", rl_name = "QWebHookBySvn", hash_code = 884914724,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-161157926, "DeployServer.QWebHookByGithub", {
name = "DeployServer.QWebHookByGithub", ns_name = "DeployServer", rl_name = "QWebHookByGithub", hash_code = -161157926,
name_list = {"repository"},
type_list = {"DeployServer.WebHookRepository"},
option_map = {}
})
ALittle.RegStruct(-119002459, "DeployServer.AWebHookBySvn", {
name = "DeployServer.AWebHookBySvn", ns_name = "DeployServer", rl_name = "AWebHookBySvn", hash_code = -119002459,
name_list = {},
type_list = {},
option_map = {}
})

function DeployServer.HandleQWebHookByGithub(sender, msg)
	local ___COROUTINE = coroutine.running()
	g_TaskManager:StartTaskByWebHook(msg.repository.html_url)
	return {}
end

ALittle.RegHttpCallback("DeployServer.QWebHookByGithub", DeployServer.HandleQWebHookByGithub)
function DeployServer.HandleQWebHookBySvn(sender, msg)
	local ___COROUTINE = coroutine.running()
	g_TaskManager:StartTaskByWebHook(sender.url)
	return {}
end

ALittle.RegHttpCallback("DeployServer.QWebHookBySvn", DeployServer.HandleQWebHookBySvn)
end