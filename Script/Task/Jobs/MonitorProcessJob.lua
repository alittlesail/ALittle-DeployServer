-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___rawset = rawset
local ___pairs = pairs
local ___ipairs = ipairs

ALittle.RegStruct(1145710027, "DeployServer.ProcessCpuInfo", {
name = "DeployServer.ProcessCpuInfo", ns_name = "DeployServer", rl_name = "ProcessCpuInfo", hash_code = 1145710027,
name_list = {"last_time","last_system_time"},
type_list = {"int","int"},
option_map = {}
})

assert(DeployServer.Job, " extends class:DeployServer.Job is nil")
DeployServer.MonitorProcessJob = Lua.Class(DeployServer.Job, "DeployServer.MonitorProcessJob")

function DeployServer.MonitorProcessJob:Ctor()
	___rawset(self, "_process_cpu_map", {})
end

function DeployServer.MonitorProcessJob.__getter:data_info()
	local data = DeployServer.Job.__getter.data_info(self)
	data.process_list = self._process_list
	return data
end

function DeployServer.MonitorProcessJob.__getter:status_info()
	local status_msg = DeployServer.Job.__getter.status_info(self)
	status_msg.process_list = self._process_list
	return status_msg
end

function DeployServer.MonitorProcessJob:Execute(build_info)
	local ___COROUTINE = coroutine.running()
	return nil, nil
end

function DeployServer.MonitorProcessJob:OnDetailUpdate()
	if self._check_timer ~= nil then
		A_LoopSystem:RemoveTimer(self._check_timer)
		self._check_timer = nil
	end
	if self._info.detail.monitorprocess_exe_path == nil then
		return
	end
	if ALittle.File_GetFileAttr(self._info.detail.monitorprocess_exe_path) == nil then
		return
	end
	self._check_timer = A_LoopSystem:AddTimer(10000, Lua.Bind(self.HandleProcessInfo, self), -1, 10000)
end

function DeployServer.MonitorProcessJob:HandleProcessInfo()
	self._process_list = {}
	local process_id_list = carp.GetProcessIDByPath(self._info.detail.monitorprocess_exe_path)
	for index, process_id in ___ipairs(process_id_list) do
		local cpu_info = self._process_cpu_map[process_id]
		if cpu_info == nil then
			cpu_info = {}
			cpu_info.last_time = 0
			cpu_info.last_system_time = 0
			self._process_cpu_map[process_id] = cpu_info
		end
		local cpu = -1
		cpu, cpu_info.last_time, cpu_info.last_system_time = carp.GetCPUUsage(process_id, cpu_info.last_time, cpu_info.last_system_time)
		local mem_result, mem, vmem = carp.GetMemoryUsage(process_id)
		local io_result, io_read, io_write = carp.GetIOUsage(process_id)
		local process_info = {}
		process_info.process_id = process_id
		process_info.cpu = cpu
		if mem_result then
			process_info.mem = mem
			process_info.vmem = vmem
		else
			process_info.mem = -1
			process_info.vmem = -1
		end
		if io_result then
			process_info.io_read = io_read
			process_info.io_write = io_write
		else
			process_info.io_read = -1
			process_info.io_write = -1
		end
		ALittle.List_Push(self._process_list, process_info)
	end
	self:SendStatus()
end

end