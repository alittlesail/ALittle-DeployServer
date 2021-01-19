-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs

ALittle.RegStruct(-1449992286, "DeployServer.AShowAllDriver", {
name = "DeployServer.AShowAllDriver", ns_name = "DeployServer", rl_name = "AShowAllDriver", hash_code = -1449992286,
name_list = {"driver_list"},
type_list = {"List<string>"},
option_map = {}
})
ALittle.RegStruct(-1210770538, "DeployServer.AShowCurPath", {
name = "DeployServer.AShowCurPath", ns_name = "DeployServer", rl_name = "AShowCurPath", hash_code = -1210770538,
name_list = {"path"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(1018450360, "DeployServer.QShowCurPath", {
name = "DeployServer.QShowCurPath", ns_name = "DeployServer", rl_name = "QShowCurPath", hash_code = 1018450360,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(839664979, "ALittle.PathAttribute", {
name = "ALittle.PathAttribute", ns_name = "ALittle", rl_name = "PathAttribute", hash_code = 839664979,
name_list = {"directory","size"},
type_list = {"bool","int"},
option_map = {}
})
ALittle.RegStruct(-788489550, "DeployServer.QShowAllDriver", {
name = "DeployServer.QShowAllDriver", ns_name = "DeployServer", rl_name = "QShowAllDriver", hash_code = -788489550,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-617554749, "DeployServer.AShowPathInfo", {
name = "DeployServer.AShowPathInfo", ns_name = "DeployServer", rl_name = "AShowPathInfo", hash_code = -617554749,
name_list = {"info_map"},
type_list = {"Map<string,ALittle.PathAttribute>"},
option_map = {}
})
ALittle.RegStruct(-505877607, "DeployServer.QShowPathInfo", {
name = "DeployServer.QShowPathInfo", ns_name = "DeployServer", rl_name = "QShowPathInfo", hash_code = -505877607,
name_list = {"path"},
type_list = {"string"},
option_map = {}
})

function DeployServer.HandleShowCurPath(sender, msg)
	local ___COROUTINE = coroutine.running()
	local rsp = {}
	rsp.path = ALittle.File_GetCurrentPath()
	return rsp
end

ALittle.RegMsgRpcCallback(1018450360, DeployServer.HandleShowCurPath, -1210770538)
function DeployServer.HandleShowAllDriver(sender, msg)
	local ___COROUTINE = coroutine.running()
	local rsp = {}
	rsp.driver_list = ALittle.File_GetAllDriver()
	return rsp
end

ALittle.RegMsgRpcCallback(-788489550, DeployServer.HandleShowAllDriver, -1449992286)
function DeployServer.HandleShowPathInfo(sender, msg)
	local ___COROUTINE = coroutine.running()
	local attr = ALittle.File_GetFileAttr(msg.path)
	Lua.Assert(attr ~= nil and attr.directory, "路径不存在")
	local rsp = {}
	rsp.info_map = ALittle.File_GetNameListByDir(msg.path)
	return rsp
end

ALittle.RegMsgRpcCallback(-505877607, DeployServer.HandleShowPathInfo, -617554749)
end