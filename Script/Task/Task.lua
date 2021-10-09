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

ALittle.RegStruct(2082241964, "DeployServer.C2SStartTask", {
name = "DeployServer.C2SStartTask", ns_name = "DeployServer", rl_name = "C2SStartTask", hash_code = 2082241964,
name_list = {"task_id"},
type_list = {"int"},
option_map = {}
})
ALittle.RegStruct(-2031251578, "DeployServer.C2SCopyJob", {
name = "DeployServer.C2SCopyJob", ns_name = "DeployServer", rl_name = "C2SCopyJob", hash_code = -2031251578,
name_list = {"task_id","job_index"},
type_list = {"int","int"},
option_map = {}
})
ALittle.RegStruct(-2015558870, "DeployServer.NMoveJob", {
name = "DeployServer.NMoveJob", ns_name = "DeployServer", rl_name = "NMoveJob", hash_code = -2015558870,
name_list = {"task_id","job_index","target_index"},
type_list = {"int","int","int"},
option_map = {}
})
ALittle.RegStruct(1984174335, "DeployServer.S2CDeleteBuild", {
name = "DeployServer.S2CDeleteBuild", ns_name = "DeployServer", rl_name = "S2CDeleteBuild", hash_code = 1984174335,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(1809409109, "DeployServer.S2CDeleteJob", {
name = "DeployServer.S2CDeleteJob", ns_name = "DeployServer", rl_name = "S2CDeleteJob", hash_code = 1809409109,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-1662612614, "DeployServer.NUpdateTaskInfo", {
name = "DeployServer.NUpdateTaskInfo", ns_name = "DeployServer", rl_name = "NUpdateTaskInfo", hash_code = -1662612614,
name_list = {"task_id","task_name","task_desc","web_hook","timer"},
type_list = {"int","string","string","List<string>","DeployServer.TaskTimer"},
option_map = {}
})
ALittle.RegStruct(1624339767, "DeployServer.S2CMoveJob", {
name = "DeployServer.S2CMoveJob", ns_name = "DeployServer", rl_name = "S2CMoveJob", hash_code = 1624339767,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(1566214727, "DeployServer.S2CUpdateTaskInfo", {
name = "DeployServer.S2CUpdateTaskInfo", ns_name = "DeployServer", rl_name = "S2CUpdateTaskInfo", hash_code = 1566214727,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-1492768812, "DeployServer.C2SModifyJob", {
name = "DeployServer.C2SModifyJob", ns_name = "DeployServer", rl_name = "C2SModifyJob", hash_code = -1492768812,
name_list = {"task_id","job_index","job_name","detail"},
type_list = {"int","int","string","DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(1487624699, "DeployServer.NCreateBuild", {
name = "DeployServer.NCreateBuild", ns_name = "DeployServer", rl_name = "NCreateBuild", hash_code = 1487624699,
name_list = {"task_id","build_info"},
type_list = {"int","DeployServer.D_BuildInfo"},
option_map = {}
})
ALittle.RegStruct(-1402593517, "DeployServer.S2CCreateJob", {
name = "DeployServer.S2CCreateJob", ns_name = "DeployServer", rl_name = "S2CCreateJob", hash_code = -1402593517,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-1320965296, "DeployServer.C2SDeleteJob", {
name = "DeployServer.C2SDeleteJob", ns_name = "DeployServer", rl_name = "C2SDeleteJob", hash_code = -1320965296,
name_list = {"task_id","job_index"},
type_list = {"int","int"},
option_map = {}
})
ALittle.RegStruct(1254025721, "DeployServer.C2SDeleteBuild", {
name = "DeployServer.C2SDeleteBuild", ns_name = "DeployServer", rl_name = "C2SDeleteBuild", hash_code = 1254025721,
name_list = {"task_id","create_time","create_index"},
type_list = {"int","int","int"},
option_map = {}
})
ALittle.RegStruct(1149037254, "DeployServer.C2SUpdateTaskInfo", {
name = "DeployServer.C2SUpdateTaskInfo", ns_name = "DeployServer", rl_name = "C2SUpdateTaskInfo", hash_code = 1149037254,
name_list = {"task_id","task_name","task_desc","web_hook","timer"},
type_list = {"int","string","string","List<string>","DeployServer.TaskTimer"},
option_map = {}
})
ALittle.RegStruct(-1050312971, "DeployServer.NDeleteJob", {
name = "DeployServer.NDeleteJob", ns_name = "DeployServer", rl_name = "NDeleteJob", hash_code = -1050312971,
name_list = {"task_id","job_index"},
type_list = {"int","int"},
option_map = {}
})
ALittle.RegStruct(-1004838094, "DeployServer.TaskTimer", {
name = "DeployServer.TaskTimer", ns_name = "DeployServer", rl_name = "TaskTimer", hash_code = -1004838094,
name_list = {"type","interval","year_point","month_point","day_point","hour_point","minute_point","second_point"},
type_list = {"int","int","int","int","int","int","int","int"},
option_map = {}
})
ALittle.RegStruct(917908039, "DeployServer.NCreateJob", {
name = "DeployServer.NCreateJob", ns_name = "DeployServer", rl_name = "NCreateJob", hash_code = 917908039,
name_list = {"task_id","job_index","job_info"},
type_list = {"int","int","DeployServer.D_JobInfo"},
option_map = {}
})
ALittle.RegStruct(874244823, "DeployServer.S2CCopyJob", {
name = "DeployServer.S2CCopyJob", ns_name = "DeployServer", rl_name = "S2CCopyJob", hash_code = 874244823,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(816033453, "DeployServer.NTaskStatus", {
name = "DeployServer.NTaskStatus", ns_name = "DeployServer", rl_name = "NTaskStatus", hash_code = 816033453,
name_list = {"task_id","status","progress"},
type_list = {"int","int","double"},
option_map = {}
})
ALittle.RegStruct(812356121, "DeployServer.S2CModifyJob", {
name = "DeployServer.S2CModifyJob", ns_name = "DeployServer", rl_name = "S2CModifyJob", hash_code = 812356121,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(625732643, "DeployServer.S2CStartTask", {
name = "DeployServer.S2CStartTask", ns_name = "DeployServer", rl_name = "S2CStartTask", hash_code = 625732643,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-616678126, "DeployServer.C2SMoveJob", {
name = "DeployServer.C2SMoveJob", ns_name = "DeployServer", rl_name = "C2SMoveJob", hash_code = -616678126,
name_list = {"task_id","job_index","target_index"},
type_list = {"int","int","int"},
option_map = {}
})
ALittle.RegStruct(390627548, "DeployServer.D_TaskInfo", {
name = "DeployServer.D_TaskInfo", ns_name = "DeployServer", rl_name = "D_TaskInfo", hash_code = 390627548,
name_list = {"task_id","task_name","task_desc","web_hook","create_time","timer","status","progress","job_list","build_list"},
type_list = {"int","string","string","List<string>","int","DeployServer.TaskTimer","int","double","List<DeployServer.D_JobInfo>","List<DeployServer.D_BuildInfo>"},
option_map = {}
})
ALittle.RegStruct(361832837, "DeployServer.BuildInfo", {
name = "DeployServer.BuildInfo", ns_name = "DeployServer", rl_name = "BuildInfo", hash_code = 361832837,
name_list = {"task_id","log_list","create_time","create_index"},
type_list = {"int","List<string>","int","int"},
option_map = {}
})
ALittle.RegStruct(276033112, "DeployServer.TaskInfo", {
name = "DeployServer.TaskInfo", ns_name = "DeployServer", rl_name = "TaskInfo", hash_code = 276033112,
name_list = {"task_id","task_name","task_desc","web_hook","job_list","create_time","timer"},
type_list = {"int","string","string","Map<string,bool>","List<DeployServer.JobInfo>","int","DeployServer.TaskTimer"},
option_map = {primary="task_id"}
})
ALittle.RegStruct(-206375730, "DeployServer.NDeleteBuild", {
name = "DeployServer.NDeleteBuild", ns_name = "DeployServer", rl_name = "NDeleteBuild", hash_code = -206375730,
name_list = {"task_id","create_time","create_index"},
type_list = {"int","int","int"},
option_map = {}
})
ALittle.RegStruct(-173628832, "DeployServer.NModifyJob", {
name = "DeployServer.NModifyJob", ns_name = "DeployServer", rl_name = "NModifyJob", hash_code = -173628832,
name_list = {"task_id","job_index","job_info"},
type_list = {"int","int","DeployServer.D_JobInfo"},
option_map = {}
})
ALittle.RegStruct(-105312390, "DeployServer.C2SCreateJob", {
name = "DeployServer.C2SCreateJob", ns_name = "DeployServer", rl_name = "C2SCreateJob", hash_code = -105312390,
name_list = {"task_id","job_type","job_index","job_name","detail"},
type_list = {"int","int","int","string","DeployServer.JobInfoDetail"},
option_map = {}
})

DeployServer.TaskTimerType = {
	NONE = 0,
	INTERVAL = 1,
	POINT = 2,
}

DeployServer.TaskStatus = {
	IDLE = 0,
	DOING = 1,
}

DeployServer.Task = Lua.Class(nil, "DeployServer.Task")

function DeployServer.Task:Ctor(info, build_list)
	___rawset(self, "_job_list", {})
	___rawset(self, "_build_list", {})
	___rawset(self, "_status", 0)
	___rawset(self, "_progress", 0)
	___rawset(self, "_info", info)
	___rawset(self, "_build_list", build_list)
	if info.job_list ~= nil then
		for index, job_info in ___ipairs(info.job_list) do
			local job = DeployServer.CreateJob(self, job_info)
			self._job_list[index] = job
		end
	end
	self:UpdateTimer()
end

function DeployServer.Task:UpdateTimer()
	if self._timer_id ~= nil then
		A_LoopSystem:RemoveTimer(self._timer_id)
		self._timer_id = nil
	end
	if self._info.timer.type == 1 then
		if self._info.timer.interval == nil or self._info.timer.interval <= 0 then
			return
		end
		local interval_ms = self._info.timer.interval * 1000
		self._timer_id = A_LoopSystem:AddTimer(interval_ms, Lua.Bind(self.HandleTimerLoop, self), 0, interval_ms)
		return
	end
	if self._info.timer.type == 2 then
		local timer = self._info.timer
		if timer.hour_point == nil or timer.hour_point < 0 or timer.hour_point > 23 then
			return
		end
		if timer.minute_point == nil or timer.minute_point < 0 or timer.minute_point > 59 then
			return
		end
		if timer.second_point == nil or timer.second_point < 0 or timer.second_point > 59 then
			return
		end
		if timer.year_point ~= nil and timer.year_point > 0 then
			if timer.month_point == nil or timer.month_point < 1 or timer.month_point > 12 then
				return
			end
			local day_count = ALittle.Time_GetMonthDayCount(timer.year_point, timer.month_point)
			if timer.day_point == nil or timer.day_point < 1 or timer.day_point > day_count then
				return
			end
			local target_time = ALittle.Time_MakeTime(timer.year_point, timer.month_point, timer.day_point, timer.hour_point, timer.minute_point, timer.second_point)
			local delay_ms = (target_time - ALittle.Time_GetCurTime()) * 1000
			if delay_ms > 0 then
				self._timer_id = A_LoopSystem:AddTimer(delay_ms, Lua.Bind(self.HandleTimerOnce, self), 1, 0)
			end
			return
		end
		local cur_time = ALittle.Time_GetCurTime()
		local cur_year = ALittle.Time_GetYear(cur_time)
		local cur_month = ALittle.Time_GetMonth(cur_time)
		local cur_day = ALittle.Time_GetDay(cur_time)
		if timer.month_point ~= nil and timer.month_point > 0 then
			local year = cur_year
			while true do
				if not(year <= cur_year + 800) then break end
				local day_count = ALittle.Time_GetMonthDayCount(cur_year, timer.month_point)
				if timer.day_point ~= nil and timer.day_point >= 1 and timer.day_point <= day_count then
					local target_time = ALittle.Time_MakeTime(year, timer.month_point, timer.day_point, timer.hour_point, timer.minute_point, timer.second_point)
					local delay_ms = (target_time - ALittle.Time_GetCurTime()) * 1000
					if delay_ms > 0 then
						self._timer_id = A_LoopSystem:AddTimer(delay_ms, Lua.Bind(self.HandleTimerPoint, self), 1, 0)
						return
					end
				end
				year = year+(1)
			end
			return
		end
		if timer.day_point ~= nil and timer.day_point > 0 then
			local year = cur_year
			while true do
				if not(year <= cur_year + 800) then break end
				local month = 1
				while true do
					if not(month <= 12) then break end
					local day_count = ALittle.Time_GetMonthDayCount(year, month)
					if timer.day_point <= day_count then
						local target_time = ALittle.Time_MakeTime(year, month, timer.day_point, timer.hour_point, timer.minute_point, timer.second_point)
						local delay_ms = (target_time - ALittle.Time_GetCurTime()) * 1000
						if delay_ms > 0 then
							self._timer_id = A_LoopSystem:AddTimer(delay_ms, Lua.Bind(self.HandleTimerPoint, self), 1, 0)
							return
						end
					end
					month = month+(1)
				end
				year = year+(1)
			end
			return
		end
		local target_time = ALittle.Time_MakeTime(cur_year, cur_month, cur_day, timer.hour_point, timer.minute_point, timer.second_point)
		if target_time <= ALittle.Time_GetCurTime() then
			target_time = target_time + (3600 * 24)
		end
		local delay_ms = (target_time - ALittle.Time_GetCurTime()) * 1000
		self._timer_id = A_LoopSystem:AddTimer(delay_ms, Lua.Bind(self.HandleTimerLoop, self), 0, 3600 * 24 * 1000)
	end
end

function DeployServer.Task:HandleTimerOnce()
	self._timer_id = nil
	self._info.timer.type = 0
	local ntf = {}
	ntf.task_id = self._info.task_id
	ntf.task_name = self._info.task_name
	ntf.task_desc = self._info.task_desc
	ntf.web_hook = {}
	for value, _ in ___pairs(self._info.web_hook) do
		ALittle.List_Push(ntf.web_hook, value)
	end
	ntf.timer = self._info.timer
	A_WebAccountManager:SendMsgToAll(___all_struct[-1662612614], ntf)
	self:Save()
	self:Start()
end

function DeployServer.Task:HandleTimerLoop()
	self:Start()
end

function DeployServer.Task:HandleTimerPoint()
	self._timer_id = nil
	self:Start()
	self:UpdateTimer()
end

function DeployServer.Task:GetJobIndex(job)
	return ALittle.List_IndexOf(self._job_list, job)
end

function DeployServer.Task:Save()
	local error = A_MysqlSystem:UpdateOne(___all_struct[276033112], self._info, "task_id", self._info.task_id)
	if error ~= nil then
		ALittle.Error(error)
	end
end
DeployServer.Task.Save = Lua.CoWrap(DeployServer.Task.Save)

function DeployServer.Task:Start()
	if self._status ~= 0 then
		return "当前任务不是空闲状态"
	end
	self:StartImpl()
	return nil
end

function DeployServer.Task:StartImpl()
	self._status = 1
	self._progress = 0
	self:SendStatus()
	local build_info = {}
	build_info.create_time, build_info.create_index = ALittle.NewTimeAndIndex()
	build_info.log_list = {}
	ALittle.List_Push(self._build_list, build_info)
	for index, job in ___ipairs(self._job_list) do
		job:Waiting()
	end
	for index, job in ___ipairs(self._job_list) do
		local error = job:Doing(build_info)
		if error ~= nil then
			ALittle.List_Push(build_info.log_list, "task" .. self._info.task_id .. ":" .. self._info.task_name .. " doing failed:" .. error)
			break
		end
		self._progress = (index - 1) / ALittle.List_Len(self._job_list)
		self:SendStatus()
	end
	local file_path = self:GetBuildPath(build_info.create_time, build_info.create_index)
	ALittle.File_MakeDeepDir(ALittle.File_GetFilePathByPath(file_path))
	local log_file = io.open(file_path, "wb")
	if log_file ~= nil then
		for index, log in ___ipairs(build_info.log_list) do
			log_file:write(log)
			log_file:write("\r\n")
		end
		log_file:close()
	end
	local len = ALittle.List_Len(build_info.log_list)
	if len > 100 then
		local new_list = {}
		local new_count = 0
		local i = len - 100 + 1
		while true do
			if not(i <= len) then break end
			new_count = new_count + 1
			new_list[new_count] = build_info.log_list[i]
			i = i+(1)
		end
		build_info.log_list = new_list
	end
	A_MysqlSystem:InsertInto(___all_struct[361832837], build_info)
	self._status = 0
	self._progress = 1
	self:SendStatus()
	local task_name = ALittle.String_ToString(self._info.task_id)
	if self._info.task_name ~= nil then
		task_name = self._info.task_name
	end
	ALittle.Log("任务(" .. task_name .. ")执行结束")
	do
		local msg = {}
		msg.task_id = self._info.task_id
		msg.build_info = {}
		msg.build_info.create_time = build_info.create_time
		msg.build_info.create_index = build_info.create_index
		A_WebAccountManager:SendMsgToAll(___all_struct[1487624699], msg)
	end
	self:Save()
end
DeployServer.Task.StartImpl = Lua.CoWrap(DeployServer.Task.StartImpl)

function DeployServer.Task:SendStatus()
	local msg = {}
	msg.task_id = self._info.task_id
	msg.status = self._status
	msg.progress = self._progress
	A_WebAccountManager:SendMsgToAll(___all_struct[816033453], msg)
end

function DeployServer.Task.__getter:status()
	return self._status
end

function DeployServer.Task:StartByWebHook(url)
	if self._info.web_hook == nil then
		return
	end
	for key, open in ___pairs(self._info.web_hook) do
		if key == url and open then
			self:Start()
			break
		end
	end
end

function DeployServer.Task.__getter:info()
	return self._info
end

function DeployServer.Task:GetBuild(create_time, create_index)
	for index, build_info in ___ipairs(self._build_list) do
		if build_info.create_time == create_time and build_info.create_index == create_index then
			return build_info
		end
	end
	return nil
end

function DeployServer.Task:HandleDelete()
	ALittle.File_DeleteDeepDir("DeployBuildLog/" .. self._info.task_id)
end

function DeployServer.Task:UpdateInfo(msg)
	self._info.task_name = msg.task_name
	self._info.task_desc = msg.task_desc
	self._info.timer = msg.timer
	self._info.web_hook = {}
	for index, value in ___ipairs(msg.web_hook) do
		self._info.web_hook[value] = true
	end
	self:UpdateTimer()
	local ntf = {}
	ntf.task_id = msg.task_id
	ntf.task_name = msg.task_name
	ntf.task_desc = msg.task_desc
	ntf.web_hook = msg.web_hook
	ntf.timer = msg.timer
	A_WebAccountManager:SendMsgToAll(___all_struct[-1662612614], ntf)
	self:Save()
end

function DeployServer.Task:CreateJob(msg)
	Lua.Assert(self._status == 0, "当前任务不是空闲状态")
	local job_info = {}
	job_info.job_type = msg.job_type
	job_info.job_name = msg.job_name
	job_info.detail = msg.detail
	local job = DeployServer.CreateJob(self, job_info)
	Lua.Assert(job ~= nil, "任务创建失败")
	if msg.job_index == nil or msg.job_index <= 0 or msg.job_index > ALittle.List_Len(self._info.job_list) then
		ALittle.List_Push(self._info.job_list, job_info)
		ALittle.List_Push(self._job_list, job)
	else
		ALittle.List_Insert(self._info.job_list, msg.job_index, job_info)
		ALittle.List_Insert(self._job_list, msg.job_index, job)
	end
	local ntf = {}
	ntf.task_id = self._info.task_id
	ntf.job_index = msg.job_index
	ntf.job_info = job.data_info
	A_WebAccountManager:SendMsgToAll(___all_struct[917908039], ntf)
	self:Save()
end

function DeployServer.Task:CopyJob(msg)
	Lua.Assert(self._status == 0, "当前任务不是空闲状态")
	local cur_job = self._info.job_list[msg.job_index]
	Lua.Assert(cur_job ~= nil, "要复制的任务不存在")
	local job_info = ALittle.String_CopyTable(cur_job)
	local job = DeployServer.CreateJob(self, job_info)
	Lua.Assert(job ~= nil, "任务创建失败")
	local job_index = 0
	if msg.job_index == ALittle.List_Len(self._info.job_list) then
		ALittle.List_Push(self._info.job_list, job_info)
		ALittle.List_Push(self._job_list, job)
	else
		job_index = msg.job_index + 1
		ALittle.List_Insert(self._info.job_list, msg.job_index + 1, job_info)
		ALittle.List_Insert(self._job_list, msg.job_index + 1, job)
	end
	local ntf = {}
	ntf.task_id = self._info.task_id
	ntf.job_index = job_index
	ntf.job_info = job.data_info
	A_WebAccountManager:SendMsgToAll(___all_struct[917908039], ntf)
	self:Save()
end

function DeployServer.Task:ModifyJob(msg)
	local job = self._job_list[msg.job_index]
	Lua.Assert(job ~= nil, "任务不存在")
	job:Modify(msg)
	local ntf = {}
	ntf.task_id = self._info.task_id
	ntf.job_index = msg.job_index
	ntf.job_info = job.data_info
	A_WebAccountManager:SendMsgToAll(___all_struct[-173628832], ntf)
	self:Save()
end

function DeployServer.Task:DeleteJob(msg)
	Lua.Assert(self._status == 0, "当前任务不是空闲状态")
	local job = self._job_list[msg.job_index]
	Lua.Assert(job ~= nil, "任务不存在")
	ALittle.List_Remove(self._job_list, msg.job_index)
	ALittle.List_Remove(self._info.job_list, msg.job_index)
	local ntf = {}
	ntf.task_id = self._info.task_id
	ntf.job_index = msg.job_index
	A_WebAccountManager:SendMsgToAll(___all_struct[-1050312971], ntf)
	self:Save()
end

function DeployServer.Task:MoveJob(msg)
	Lua.Assert(self._status == 0, "当前任务不是空闲状态")
	local job = self._job_list[msg.job_index]
	Lua.Assert(job ~= nil, "任务不存在")
	local job_info = self._info.job_list[msg.job_index]
	ALittle.List_Remove(self._job_list, msg.job_index)
	ALittle.List_Remove(self._info.job_list, msg.job_index)
	local job_len = ALittle.List_Len(self._job_list)
	if msg.target_index <= 0 or msg.target_index > job_len then
		ALittle.List_Push(self._job_list, job)
		ALittle.List_Push(self._info.job_list, job_info)
	else
		ALittle.List_Insert(self._job_list, msg.target_index, job)
		ALittle.List_Insert(self._info.job_list, msg.target_index, job_info)
	end
	local ntf = {}
	ntf.task_id = self._info.task_id
	ntf.job_index = msg.job_index
	ntf.target_index = msg.target_index
	A_WebAccountManager:SendMsgToAll(___all_struct[-2015558870], ntf)
	self:Save()
end

function DeployServer.Task:DeleteBuild(msg)
	Lua.Assert(self._status == 0, "当前任务不是空闲状态")
	for index, build_info in ___ipairs(self._build_list) do
		if build_info.create_time == msg.create_time and build_info.create_index == msg.create_index then
			ALittle.List_Remove(self._build_list, index)
			local file_path = self:GetBuildPath(build_info.create_time, build_info.create_index)
			ALittle.File_DeleteFile(file_path)
			local ntf = {}
			ntf.task_id = self._info.task_id
			ntf.create_time = msg.create_time
			ntf.create_index = msg.create_index
			A_WebAccountManager:SendMsgToAll(___all_struct[-206375730], ntf)
			return
		end
	end
	Lua.Assert(false, "构建信息不存在")
end

function DeployServer.Task:GetBuildPath(create_time, create_index)
	return "DeployBuildLog/" .. self._info.task_id .. "/" .. ALittle.Time_GetCurDate(create_time) .. "_" .. create_index .. ".log"
end

function DeployServer.Task.__getter:data_info()
	local data = {}
	data.task_id = self._info.task_id
	data.task_name = self._info.task_name
	data.task_desc = self._info.task_desc
	data.create_time = self._info.create_time
	data.timer = self._info.timer
	data.status = self._status
	data.progress = self._progress
	data.web_hook = {}
	if self._info.web_hook ~= nil then
		for web_hook, _ in ___pairs(self._info.web_hook) do
			ALittle.List_Push(data.web_hook, web_hook)
		end
	end
	data.job_list = {}
	for index, job in ___ipairs(self._job_list) do
		ALittle.List_Push(data.job_list, job.data_info)
	end
	data.build_list = {}
	for index, build in ___ipairs(self._build_list) do
		local info = {}
		info.create_time = build.create_time
		info.create_index = build.create_index
		ALittle.List_Push(data.build_list, info)
	end
	return data
end

function DeployServer.HandleC2SStartTask(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	local error = task:Start()
	Lua.Assert(error == nil, error)
	return {}
end

ALittle.RegMsgRpcCallback(2082241964, DeployServer.HandleC2SStartTask, 625732643)
function DeployServer.HandleC2SUpdateTaskInfo(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:UpdateInfo(msg)
	return {}
end

ALittle.RegMsgRpcCallback(1149037254, DeployServer.HandleC2SUpdateTaskInfo, 1566214727)
function DeployServer.HandleC2SCreateJob(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:CreateJob(msg)
	return {}
end

ALittle.RegMsgRpcCallback(-105312390, DeployServer.HandleC2SCreateJob, -1402593517)
function DeployServer.HandleC2SCopyJob(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:CopyJob(msg)
	return {}
end

ALittle.RegMsgRpcCallback(-2031251578, DeployServer.HandleC2SCopyJob, 874244823)
function DeployServer.HandleC2SModifyJob(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:ModifyJob(msg)
	return {}
end

ALittle.RegMsgRpcCallback(-1492768812, DeployServer.HandleC2SModifyJob, 812356121)
function DeployServer.HandleC2SDeleteJob(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:DeleteJob(msg)
	return {}
end

ALittle.RegMsgRpcCallback(-1320965296, DeployServer.HandleC2SDeleteJob, 1809409109)
function DeployServer.HandleC2SMoveJob(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:MoveJob(msg)
	return {}
end

ALittle.RegMsgRpcCallback(-616678126, DeployServer.HandleC2SMoveJob, 1624339767)
function DeployServer.HandleC2SDeleteBuild(sender, msg)
	local ___COROUTINE = coroutine.running()
	A_WebAccountManager:CheckLoginByClient(sender)
	local task = g_TaskManager:GetTask(msg.task_id)
	Lua.Assert(task ~= nil, "任务不存在")
	task:DeleteBuild(msg)
	return {}
end

ALittle.RegMsgRpcCallback(1254025721, DeployServer.HandleC2SDeleteBuild, 1984174335)
end