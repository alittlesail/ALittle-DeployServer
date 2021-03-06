-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs

ALittle.RegStruct(1185145, "DeployServer.QFileDownload", {
name = "DeployServer.QFileDownload", ns_name = "DeployServer", rl_name = "QFileDownload", hash_code = 1185145,
name_list = {},
type_list = {},
option_map = {}
})

DeployServer.g_ConfigSystem = nil
DeployServer.g_ModuleScriptPath = nil
function DeployServer.__Module_Setup(sengine_path, module_path, config_path)
	Require(sengine_path, "Script/WebAccount/WebPermission")
	Require(sengine_path, "Script/WebAccount/WebAccount")
	Require(sengine_path, "Script/WebAccount/WebAccountManager")
	Require(sengine_path, "Script/WebAccount/WebOPSManager")
	DeployServer.g_ModuleScriptPath = module_path .. "Script/"
	local require = ALittle.Require()
	require:AddPaths(module_path, "Script/Utility/", {{"DirectoryManager"}
		,{"KeyValueManager"}
		,{"SettingManager"}
		,{"WebHookManager"}})
	require:AddPaths(module_path, "Script/Task/", {{"Build"}
		,{"Job"}
		,{"Jobs/BatchJob","Job"}
		,{"Jobs/CopyFileJob","Job"}
		,{"Jobs/CreateProcessJob","Job"}
		,{"Jobs/DeepCopyJob","Job"}
		,{"Jobs/IGGChatJob","Job"}
		,{"Jobs/KillProcessJob","Job"}
		,{"Jobs/MonitorProcessJob","Job"}
		,{"Jobs/ReSharperRedmineJob","Job"}
		,{"Jobs/SendVirtualKeyJob","Job"}
		,{"Jobs/WaitProcessExitJob","Job"}
		,{"Task"}
		,{"TaskManager"}
		,{"Workers/JobWorker"}})
	require:Start()
	math.randomseed(os.time())
	DeployServer.g_ConfigSystem = ALittle.CreateJsonConfig(config_path, true)
	local wan_ip = DeployServer.g_ConfigSystem:GetConfig("wan_ip", "127.0.0.1")
	local yun_ip = DeployServer.g_ConfigSystem:GetConfig("yun_ip", "")
	local port_offset = DeployServer.g_ConfigSystem:GetConfig("port_offset", 0)
	__CPPAPI_ServerSchedule:StartRouteSystem(9, 1)
	__CPPAPI_ServerSchedule:StartMysqlQuery(1, DeployServer.g_ConfigSystem:GetString("main_conn_ip", nil), DeployServer.g_ConfigSystem:GetString("main_conn_username", nil), DeployServer.g_ConfigSystem:GetString("main_conn_password", nil), DeployServer.g_ConfigSystem:GetInt("main_conn_port", nil), DeployServer.g_ConfigSystem:GetString("main_conn_dbname", nil))
	__CPPAPI_ServerSchedule:CreateHttpServer(yun_ip, wan_ip, 1800 + port_offset, false)
	__CPPAPI_ServerSchedule:CreateClientServer(yun_ip, wan_ip, 1801 + port_offset, false)
	ALittle.RegHttpDownloadCallbackFactory(DeployServer.HttpDownloadCallbackFactory)
	A_WebAccountManager:Setup()
	g_KeyValueManager:Setup()
	g_TaskManager:Setup()
end
DeployServer.__Module_Setup = Lua.CoWrap(DeployServer.__Module_Setup)

function DeployServer.__Module_Shutdown()
	g_TaskManager:Shutdown()
	g_KeyValueManager:Shutdown()
end

function DeployServer.HttpDownloadCallbackFactory(method)
	return DeployServer.HandleFileDownload
end

function DeployServer.HandleFileDownload(client, msg)
	local ___COROUTINE = coroutine.running()
	return "DeployClient/" .. client.method, 0
end

ALittle.RegHttpDownloadCallback("DeployServer.QFileDownload", DeployServer.HandleFileDownload)
end