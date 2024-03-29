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

ALittle.RegStruct(-2035971543, "DeployServer.D_JobInfo", {
name = "DeployServer.D_JobInfo", ns_name = "DeployServer", rl_name = "D_JobInfo", hash_code = -2035971543,
name_list = {"job_type","job_name","status","progress","detail","process_list"},
type_list = {"int","string","int","double","DeployServer.JobInfoDetail","List<DeployServer.D_ProcessInfo>"},
option_map = {}
})
ALittle.RegStruct(1811432266, "DeployServer.D_BuildInfo", {
name = "DeployServer.D_BuildInfo", ns_name = "DeployServer", rl_name = "D_BuildInfo", hash_code = 1811432266,
name_list = {"create_time","create_index"},
type_list = {"int","int"},
option_map = {}
})
ALittle.RegStruct(1544249038, "DeployServer.JobInfo", {
name = "DeployServer.JobInfo", ns_name = "DeployServer", rl_name = "JobInfo", hash_code = 1544249038,
name_list = {"job_type","job_name","detail"},
type_list = {"int","string","DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(1462309182, "DeployServer.NJobStatus", {
name = "DeployServer.NJobStatus", ns_name = "DeployServer", rl_name = "NJobStatus", hash_code = 1462309182,
name_list = {"task_id","index","status","progress","process_list"},
type_list = {"int","int","int","double","List<DeployServer.D_ProcessInfo>"},
option_map = {}
})
ALittle.RegStruct(1232578034, "DeployServer.JobInfoDetail", {
name = "DeployServer.JobInfoDetail", ns_name = "DeployServer", rl_name = "JobInfoDetail", hash_code = 1232578034,
name_list = {"batch_dir","batch_cmd","batch_param","batch_wait","deepcopy_src","deepcopy_dst","deepcopy_ext","copyfile_src","copyfile_file","copyfile_dst","virtualkey_exepath","virtualkey_cmd","wait_p_exit_exe_path","wait_p_exit_max_time","createprocess_exe_path","killprocess_delay_time","killprocess_exe_path","r2r_resharper_exe_path","r2r_resharper_cache_path","r2r_resharper_output_path","r2r_resharper_sln_path","r2r_resharper_dotsettings_path","r2r_redmine_url","r2r_redmine_account","r2r_redmine_password","r2r_redmine_project_id","r2r_redmine_account_id","r2r_redmine_account_map","r2r_curl_exe_path","r2r_code_tool","igg_chat_room_id","igg_chat_title","igg_chat_content","igg_chat_token","monitorprocess_exe_path","monitorprocess_auto_start"},
type_list = {"string","string","string","bool","string","string","string","string","List<string>","string","List<string>","List<string>","List<string>","int","List<string>","int","List<string>","string","string","string","string","string","string","string","string","string","string","Map<string,int>","string","string","string","string","string","string","string","bool"},
option_map = {}
})
ALittle.RegStruct(15214192, "DeployServer.D_ProcessInfo", {
name = "DeployServer.D_ProcessInfo", ns_name = "DeployServer", rl_name = "D_ProcessInfo", hash_code = 15214192,
name_list = {"process_id","cpu","mem","vmem","io_read","io_write"},
type_list = {"int","int","int","int","int","int"},
option_map = {}
})

DeployServer.JobType = {
	NONE = 0,
	BATCH = 1,
	DEEPCOPY = 2,
	COPYFILE = 3,
	SENDVIRTUALKEY = 4,
	WAITPROCSSEXIT = 5,
	CREATEPROCESS = 6,
	KILLPROCESS = 7,
	RESHARPERREDMINE = 8,
	IGG_CHAT = 9,
	MONITORPROCESS = 10,
}

DeployServer.JobStatus = {
	WAITING = 0,
	DOING = 1,
	COMPLETED = 2,
	FAILED = 3,
}

DeployServer.Job = Lua.Class(nil, "DeployServer.Job")

function DeployServer.Job:Ctor(task, info)
	___rawset(self, "_status", 0)
	___rawset(self, "_progress", 0)
	___rawset(self, "_task", task)
	___rawset(self, "_info", info)
	self:OnDetailUpdate()
end

function DeployServer.Job.__getter:info()
	return self._info
end

function DeployServer.Job.__getter:data_info()
	local data = {}
	data.job_type = self._info.job_type
	data.job_name = self._info.job_name
	data.status = self._status
	data.progress = self._progress
	data.detail = self._info.detail
	return data
end

function DeployServer.Job.__getter:status_info()
	local status_msg = {}
	status_msg.task_id = self._task.info.task_id
	status_msg.index = self._task:GetJobIndex(self)
	status_msg.status = self._status
	status_msg.progress = self._progress
	return status_msg
end

function DeployServer.Job:Modify(msg)
	self._info.job_name = msg.job_name
	self._info.detail = msg.detail
	self:OnDetailUpdate()
end

function DeployServer.Job:Waiting()
	self._status = 0
	self._progress = 0
	self:SendStatus()
end

function DeployServer.Job:Doing(build_info)
	local ___COROUTINE = coroutine.running()
	self._status = 1
	self._progress = 0
	self:SendStatus()
	ALittle.List_Push(build_info.log_list, "===>[" .. ALittle.Time_GetCurDate() .. "]Job:" .. self._info.job_name)
	local error, log = self:Execute(build_info)
	if log ~= nil then
		local log_list = ALittle.String_SplitSepList(log, {"\r", "\n"})
		for index, log_content in ___ipairs(log_list) do
			ALittle.List_Push(build_info.log_list, log_content)
		end
	end
	if error ~= nil then
		self._status = 3
	else
		self._status = 2
		self._progress = 1
	end
	self:SendStatus()
	return error
end

function DeployServer.Job:Execute(build_info)
	local ___COROUTINE = coroutine.running()
	return nil, nil
end

function DeployServer.Job:SendStatus()
	local status_msg = self.status_info
	A_WebAccountManager:SendMsgToAll(___all_struct[1462309182], status_msg)
end

function DeployServer.Job:OnDetailUpdate()
end

function DeployServer.CreateJob(task, info)
	if info.job_type == 1 then
		return DeployServer.BatchJob(task, info)
	elseif info.job_type == 2 then
		return DeployServer.DeepCopyJob(task, info)
	elseif info.job_type == 3 then
		return DeployServer.CopyFileJob(task, info)
	elseif info.job_type == 4 then
		return DeployServer.SendVirtualKeyJob(task, info)
	elseif info.job_type == 5 then
		return DeployServer.WaitProcessExitJob(task, info)
	elseif info.job_type == 6 then
		return DeployServer.CreateProcessJob(task, info)
	elseif info.job_type == 7 then
		return DeployServer.KillProcessJob(task, info)
	elseif info.job_type == 8 then
		return DeployServer.ReSharperRedmineJob(task, info)
	elseif info.job_type == 9 then
		return DeployServer.IGGChatJob(task, info)
	elseif info.job_type == 10 then
		return DeployServer.MonitorProcessJob(task, info)
	end
	return nil
end

end