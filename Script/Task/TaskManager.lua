-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___rawset = rawset
local ___pairs = pairs
local ___ipairs = ipairs
local ___all_struct = ALittle.GetAllStruct()

ALittle.RegStruct(1715346212, "ALittle.Event", {
name = "ALittle.Event", ns_name = "ALittle", rl_name = "Event", hash_code = 1715346212,
name_list = {"target"},
type_list = {"ALittle.EventDispatcher"},
option_map = {}
})
ALittle.RegStruct(-1533563228, "DeployServer.S2CCreateTask", {
name = "DeployServer.S2CCreateTask", ns_name = "DeployServer", rl_name = "S2CCreateTask", hash_code = -1533563228,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-1353883986, "ALittle.WebAccountLoginEvent", {
name = "ALittle.WebAccountLoginEvent", ns_name = "ALittle", rl_name = "WebAccountLoginEvent", hash_code = -1353883986,
name_list = {"target","account"},
type_list = {"ALittle.EventDispatcher","ALittle.WebAccount"},
option_map = {}
})
ALittle.RegStruct(-1294478047, "DeployServer.S2CDeleteTask", {
name = "DeployServer.S2CDeleteTask", ns_name = "DeployServer", rl_name = "S2CDeleteTask", hash_code = -1294478047,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(1287526271, "DeployServer.C2SCreateTask", {
name = "DeployServer.C2SCreateTask", ns_name = "DeployServer", rl_name = "C2SCreateTask", hash_code = 1287526271,
name_list = {"task_name"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(-1243553967, "DeployServer.NCreateTask", {
name = "DeployServer.NCreateTask", ns_name = "DeployServer", rl_name = "NCreateTask", hash_code = -1243553967,
name_list = {"task_info"},
type_list = {"DeployServer.D_TaskInfo"},
option_map = {}
})
ALittle.RegStruct(-1164681133, "DeployServer.NDeleteTask", {
name = "DeployServer.NDeleteTask", ns_name = "DeployServer", rl_name = "NDeleteTask", hash_code = -1164681133,
name_list = {"task_id"},
type_list = {"int"},
option_map = {}
})
ALittle.RegStruct(808269380, "DeployServer.C2SDeleteTask", {
name = "DeployServer.C2SDeleteTask", ns_name = "DeployServer", rl_name = "C2SDeleteTask", hash_code = 808269380,
name_list = {"task_id"},
type_list = {"int"},
option_map = {}
})
ALittle.RegStruct(-601303991, "DeployServer.S2CCopyTask", {
name = "DeployServer.S2CCopyTask", ns_name = "DeployServer", rl_name = "S2CCopyTask", hash_code = -601303991,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-542744414, "DeployServer.S2CTaskList", {
name = "DeployServer.S2CTaskList", ns_name = "DeployServer", rl_name = "S2CTaskList", hash_code = -542744414,
name_list = {"task_list"},
type_list = {"List<DeployServer.D_TaskInfo>"},
option_map = {}
})
ALittle.RegStruct(-478034953, "DeployServer.C2SCopyTask", {
name = "DeployServer.C2SCopyTask", ns_name = "DeployServer", rl_name = "C2SCopyTask", hash_code = -478034953,
name_list = {"task_id"},
type_list = {"int"},
option_map = {}
})

DeployServer.g_LJobWorker = nil
DeployServer.g_HJobWorker = nil
DeployServer.TaskManager = Lua.Class(nil, "DeployServer.TaskManager")

function DeployServer.TaskManager:Ctor()
	___rawset(self, "_max_task_id", 0)
	___rawset(self, "_task_map", {})
end

function DeployServer.TaskManager:Setup()
	local ___COROUTINE = coroutine.running()
	local error = A_MysqlSystem:CreateIfNotExit(___all_struct[276033112])
	Lua.Assert(error == nil, error)
	error = A_MysqlSystem:CreateIfNotExit(___all_struct[361832837])
	Lua.Assert(error == nil, error)
	local task_error, task_list = A_MysqlSystem:SelectListFromByMap(___all_struct[276033112], {})
	Lua.Assert(task_error == nil, task_error)
	for index, task_info in ___ipairs(task_list) do
		local build_info = {}
		build_info.task_id = task_info.task_id
		local build_error, build_list = A_MysqlSystem:SelectListFromByMap(___all_struct[361832837], build_info)
		if build_list == nil then
			build_list = {}
		end
		self._task_map[task_info.task_id] = DeployServer.Task(task_info, build_list)
		if self._max_task_id < task_info.task_id then
			self._max_task_id = task_info.task_id
		end
	end
	A_WebAccountManager:AddEventListener(___all_struct[-1353883986], self, self.HandleAccountLogin)
	DeployServer.g_LJobWorker = ALittle.Worker(DeployServer.g_ModuleScriptPath .. "Task/Workers/JobWorker")
	DeployServer.g_HJobWorker = ALittle.Worker(DeployServer.g_ModuleScriptPath .. "Task/Workers/JobWorker")
end

function DeployServer.TaskManager:HandleAccountLogin(event)
	local info = {}
	info.task_list = {}
	for id, task in ___pairs(self._task_map) do
		ALittle.List_Push(info.task_list, task.data_info)
	end
	event.account:SendMsg(___all_struct[-542744414], info)
end

function DeployServer.TaskManager:HandleCreateTask(task_name)
	local ___COROUTINE = coroutine.running()
	self._max_task_id = self._max_task_id + 1
	local task_info = {}
	task_info.task_id = self._max_task_id
	task_info.task_name = task_name
	task_info.create_time = ALittle.Time_GetCurTime()
	task_info.job_list = {}
	task_info.timer = {}
	local error = A_MysqlSystem:InsertInto(___all_struct[276033112], task_info)
	Lua.Assert(error == nil, error)
	local build_info = {}
	build_info.task_id = task_info.task_id
	local build_error, build_list = A_MysqlSystem:SelectListFromByMap(___all_struct[361832837], build_info)
	if build_list == nil then
		build_list = {}
	end
	local task = DeployServer.Task(task_info, build_list)
	self._task_map[task_info.task_id] = task
	local msg = {}
	msg.task_info = task.data_info
	A_WebAccountManager:SendMsgToAll(___all_struct[-1243553967], msg)
end

function DeployServer.TaskManager:HandleCopyTask(task_id)
	local ___COROUTINE = coroutine.running()
	local target = self._task_map[task_id]
	Lua.Assert(target ~= nil, "要复制的任务不存在")
	self._max_task_id = self._max_task_id + 1
	local task_info = ALittle.String_CopyTable(target.info)
	task_info.task_id = self._max_task_id
	task_info.create_time = ALittle.Time_GetCurTime()
	local error = A_MysqlSystem:InsertInto(___all_struct[276033112], task_info)
	Lua.Assert(error == nil, error)
	local build_info = {}
	build_info.task_id = task_info.task_id
	local build_error, build_list = A_MysqlSystem:SelectListFromByMap(___all_struct[361832837], build_info)
	if build_list == nil then
		build_list = {}
	end
	local task = DeployServer.Task(task_info, build_list)
	self._task_map[task_info.task_id] = task
	local msg = {}
	msg.task_info = task.data_info
	A_WebAccountManager:SendMsgToAll(___all_struct[-1243553967], msg)
end

function DeployServer.TaskManager:HandleDeleteTask(task_id)
	local ___COROUTINE = coroutine.running()
	local task = self._task_map[task_id]
	Lua.Assert(task ~= nil, "任务不存在")
	Lua.Assert(task.status == 0, "任务不在空闲状态")
	local error = A_MysqlSystem:DeleteFromByKey(___all_struct[276033112], "task_id", task_id)
	Lua.Assert(error == nil, error)
	task:HandleDelete()
	self._task_map[task_id] = nil
	local msg = {}
	msg.task_id = task_id
	A_WebAccountManager:SendMsgToAll(___all_struct[-1164681133], msg)
end

function DeployServer.TaskManager:GetTask(task_id)
	return self._task_map[task_id]
end

function DeployServer.TaskManager:StartTaskByWebHook(url)
	for index, task in ___pairs(self._task_map) do
		task:StartByWebHook(url)
	end
end

function DeployServer.TaskManager:Shutdown()
	if DeployServer.g_LJobWorker ~= nil then
		DeployServer.g_LJobWorker:Stop()
		DeployServer.g_LJobWorker = nil
	end
	if DeployServer.g_HJobWorker ~= nil then
		DeployServer.g_HJobWorker:Stop()
		DeployServer.g_HJobWorker = nil
	end
end

_G.g_TaskManager = DeployServer.TaskManager()
function DeployServer.HandleC2SCreateTask(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	g_TaskManager:HandleCreateTask(msg.task_name)
	return {}
end

ALittle.RegMsgRpcCallback(1287526271, DeployServer.HandleC2SCreateTask, -1533563228)
function DeployServer.HandleC2SCopyTask(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	g_TaskManager:HandleCopyTask(msg.task_id)
	return {}
end

ALittle.RegMsgRpcCallback(-478034953, DeployServer.HandleC2SCopyTask, -601303991)
function DeployServer.HandleC2SDeleteTask(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	g_TaskManager:HandleDeleteTask(msg.task_id)
	return {}
end

ALittle.RegMsgRpcCallback(808269380, DeployServer.HandleC2SDeleteTask, -1294478047)
end