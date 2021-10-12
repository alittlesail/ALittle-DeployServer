-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs

ALittle.RegStruct(2052715406, "DeployServer.QWaitProcessExitExecute", {
name = "DeployServer.QWaitProcessExitExecute", ns_name = "DeployServer", rl_name = "QWaitProcessExitExecute", hash_code = 2052715406,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(-1941486856, "DeployServer.AWaitProcessExitExecute", {
name = "DeployServer.AWaitProcessExitExecute", ns_name = "DeployServer", rl_name = "AWaitProcessExitExecute", hash_code = -1941486856,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(1870092216, "DeployServer.ABatchExecute", {
name = "DeployServer.ABatchExecute", ns_name = "DeployServer", rl_name = "ABatchExecute", hash_code = 1870092216,
name_list = {"exit_code","content"},
type_list = {"int","string"},
option_map = {}
})
ALittle.RegStruct(1775571742, "DeployServer.ARedmineCreateIssue", {
name = "DeployServer.ARedmineCreateIssue", ns_name = "DeployServer", rl_name = "ARedmineCreateIssue", hash_code = 1775571742,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(1771504595, "DeployServer.QRedmineDeleteIssuesAssignedToSelf", {
name = "DeployServer.QRedmineDeleteIssuesAssignedToSelf", ns_name = "DeployServer", rl_name = "QRedmineDeleteIssuesAssignedToSelf", hash_code = 1771504595,
name_list = {"curl_exe_path","url","account","password","project_id"},
type_list = {"string","string","string","string","string"},
option_map = {}
})
ALittle.RegStruct(1709573174, "DeployServer.QRedmineCreateIssue", {
name = "DeployServer.QRedmineCreateIssue", ns_name = "DeployServer", rl_name = "QRedmineCreateIssue", hash_code = 1709573174,
name_list = {"curl_exe_path","url","account","password","json_path"},
type_list = {"string","string","string","string","string"},
option_map = {}
})
ALittle.RegStruct(1447368920, "DeployServer.ACopyFileExecute", {
name = "DeployServer.ACopyFileExecute", ns_name = "DeployServer", rl_name = "ACopyFileExecute", hash_code = 1447368920,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-1431809884, "DeployServer.QBatchExecute", {
name = "DeployServer.QBatchExecute", ns_name = "DeployServer", rl_name = "QBatchExecute", hash_code = -1431809884,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(1368739506, "DeployServer.AKillProcessExecute", {
name = "DeployServer.AKillProcessExecute", ns_name = "DeployServer", rl_name = "AKillProcessExecute", hash_code = 1368739506,
name_list = {"content"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(-1351236611, "DeployServer.QDeepCopyExecute", {
name = "DeployServer.QDeepCopyExecute", ns_name = "DeployServer", rl_name = "QDeepCopyExecute", hash_code = -1351236611,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(1336354794, "DeployServer.RedmineListIssuesField", {
name = "DeployServer.RedmineListIssuesField", ns_name = "DeployServer", rl_name = "RedmineListIssuesField", hash_code = 1336354794,
name_list = {"id","name"},
type_list = {"int","string"},
option_map = {}
})
ALittle.RegStruct(1248316265, "DeployServer.QCreateProgressExecute", {
name = "DeployServer.QCreateProgressExecute", ns_name = "DeployServer", rl_name = "QCreateProgressExecute", hash_code = 1248316265,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(1248316217, "DeployServer.ACreateProgressExecute", {
name = "DeployServer.ACreateProgressExecute", ns_name = "DeployServer", rl_name = "ACreateProgressExecute", hash_code = 1248316217,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-1246220476, "DeployServer.RedmineCreateIssueInfoDetail", {
name = "DeployServer.RedmineCreateIssueInfoDetail", ns_name = "DeployServer", rl_name = "RedmineCreateIssueInfoDetail", hash_code = -1246220476,
name_list = {"project_id","subject","description","priority_id","assigned_to_id","watcher_user_ids"},
type_list = {"int","string","string","int","int","List<int>"},
option_map = {}
})
ALittle.RegStruct(1234595620, "DeployServer.RedmineListIssuesInfo", {
name = "DeployServer.RedmineListIssuesInfo", ns_name = "DeployServer", rl_name = "RedmineListIssuesInfo", hash_code = 1234595620,
name_list = {"id","subject","description","project","tracker","status","priority","author","assigned_to","fixed_version"},
type_list = {"int","string","string","DeployServer.RedmineListIssuesField","DeployServer.RedmineListIssuesField","DeployServer.RedmineListIssuesField","DeployServer.RedmineListIssuesField","DeployServer.RedmineListIssuesField","DeployServer.RedmineListIssuesField","DeployServer.RedmineListIssuesField"},
option_map = {}
})
ALittle.RegStruct(1166148652, "DeployServer.QKillProcessExecute", {
name = "DeployServer.QKillProcessExecute", ns_name = "DeployServer", rl_name = "QKillProcessExecute", hash_code = 1166148652,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(-1150238026, "DeployServer.RedmineListIssuesResponse", {
name = "DeployServer.RedmineListIssuesResponse", ns_name = "DeployServer", rl_name = "RedmineListIssuesResponse", hash_code = -1150238026,
name_list = {"issues","total_count","offset","limit"},
type_list = {"List<DeployServer.RedmineListIssuesInfo>","int","int","int"},
option_map = {}
})
ALittle.RegStruct(-937108191, "DeployServer.QGitFileAuthor", {
name = "DeployServer.QGitFileAuthor", ns_name = "DeployServer", rl_name = "QGitFileAuthor", hash_code = -937108191,
name_list = {"file_path"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(-876622592, "DeployServer.ADeepCopyExecute", {
name = "DeployServer.ADeepCopyExecute", ns_name = "DeployServer", rl_name = "ADeepCopyExecute", hash_code = -876622592,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-764967408, "DeployServer.AGitFileAuthor", {
name = "DeployServer.AGitFileAuthor", ns_name = "DeployServer", rl_name = "AGitFileAuthor", hash_code = -764967408,
name_list = {"account"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(578143414, "DeployServer.ASendVirtualKeyExecute", {
name = "DeployServer.ASendVirtualKeyExecute", ns_name = "DeployServer", rl_name = "ASendVirtualKeyExecute", hash_code = 578143414,
name_list = {"content"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(578143398, "DeployServer.QSendVirtualKeyExecute", {
name = "DeployServer.QSendVirtualKeyExecute", ns_name = "DeployServer", rl_name = "QSendVirtualKeyExecute", hash_code = 578143398,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(511985580, "DeployServer.AReSharperCodeCheck", {
name = "DeployServer.AReSharperCodeCheck", ns_name = "DeployServer", rl_name = "AReSharperCodeCheck", hash_code = 511985580,
name_list = {"content","exit_code"},
type_list = {"string","int"},
option_map = {}
})
ALittle.RegStruct(475800478, "DeployServer.QReSharperCodeCheck", {
name = "DeployServer.QReSharperCodeCheck", ns_name = "DeployServer", rl_name = "QReSharperCodeCheck", hash_code = 475800478,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(-469603049, "DeployServer.ARedmineDeleteIssuesAssignedToMe", {
name = "DeployServer.ARedmineDeleteIssuesAssignedToMe", ns_name = "DeployServer", rl_name = "ARedmineDeleteIssuesAssignedToMe", hash_code = -469603049,
name_list = {},
type_list = {},
option_map = {}
})
ALittle.RegStruct(-467409153, "DeployServer.QCopyFileExecute", {
name = "DeployServer.QCopyFileExecute", ns_name = "DeployServer", rl_name = "QCopyFileExecute", hash_code = -467409153,
name_list = {"detail"},
type_list = {"DeployServer.JobInfoDetail"},
option_map = {}
})
ALittle.RegStruct(441047614, "DeployServer.QSvnFileAuthor", {
name = "DeployServer.QSvnFileAuthor", ns_name = "DeployServer", rl_name = "QSvnFileAuthor", hash_code = 441047614,
name_list = {"file_path"},
type_list = {"string"},
option_map = {}
})
ALittle.RegStruct(147809501, "DeployServer.RedmineCreateIssueInfo", {
name = "DeployServer.RedmineCreateIssueInfo", ns_name = "DeployServer", rl_name = "RedmineCreateIssueInfo", hash_code = 147809501,
name_list = {"issue"},
type_list = {"DeployServer.RedmineCreateIssueInfoDetail"},
option_map = {}
})
ALittle.RegStruct(-84518889, "DeployServer.ASvnFileAuthor", {
name = "DeployServer.ASvnFileAuthor", ns_name = "DeployServer", rl_name = "ASvnFileAuthor", hash_code = -84518889,
name_list = {"account"},
type_list = {"string"},
option_map = {}
})

function DeployServer.HandleBatchWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	local rsp = {}
	if detail.batch_wait then
		local cmd = ""
		if detail.batch_dir ~= nil and detail.batch_dir ~= "" then
			local index = ALittle.String_Find(detail.batch_dir, ":")
			if index ~= nil then
				cmd = cmd .. ALittle.String_Sub(detail.batch_dir, 1, index) .. " && "
			end
			if index ~= ALittle.String_Len(detail.batch_dir) then
				cmd = cmd .. "cd \"" .. detail.batch_dir .. "\" && "
			end
		end
		cmd = cmd .. detail.batch_cmd .. " " .. detail.batch_param
		ALittle.Log(cmd)
		local file = io.popen(cmd, "rb")
		Lua.Assert(file ~= nil, "命令执行失败:" .. cmd)
		rsp.content = file:read("*a")
		local result, error, status = file:close()
		rsp.exit_code = status
	else
		ALittle.Log(detail.batch_cmd .. " " .. detail.batch_param)
		local result = carp.CreateProcess(detail.batch_cmd, detail.batch_param, detail.batch_dir)
		rsp.content = ""
		if result then
			rsp.exit_code = 0
		else
			rsp.exit_code = -1
		end
	end
	return rsp
end

ALittle.RegWorkerRpcCallback(-1431809884, DeployServer.HandleBatchWorker, 1870092216)
function DeployServer.HandleDeepCopyWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	local rsp = {}
	if detail.deepcopy_ext == "" then
		detail.deepcopy_ext = nil
	end
	local attr = ALittle.File_GetFileAttr(detail.deepcopy_src)
	Lua.Assert(attr ~= nil and attr.directory, "源目录不存在:" .. detail.deepcopy_src)
	ALittle.File_MakeDeepDir(detail.deepcopy_dst)
	attr = ALittle.File_GetFileAttr(detail.deepcopy_dst)
	Lua.Assert(attr ~= nil and attr.directory, "目标目录创建失败:" .. detail.deepcopy_dst)
	ALittle.File_CopyDeepDir(detail.deepcopy_src, detail.deepcopy_dst, detail.deepcopy_ext)
	return rsp
end

ALittle.RegWorkerRpcCallback(-1351236611, DeployServer.HandleDeepCopyWorker, -876622592)
function DeployServer.HandleCopyFileWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	local rsp = {}
	local attr = ALittle.File_GetFileAttr(detail.copyfile_src)
	Lua.Assert(attr ~= nil and attr.directory, "源目录不存在:" .. detail.copyfile_src)
	ALittle.File_MakeDeepDir(detail.copyfile_dst)
	attr = ALittle.File_GetFileAttr(detail.copyfile_dst)
	Lua.Assert(attr ~= nil and attr.directory, "目标目录创建失败:" .. detail.copyfile_dst)
	local src = ALittle.File_PathEndWithSplit(detail.copyfile_src)
	local dst = ALittle.File_PathEndWithSplit(detail.copyfile_dst)
	for index, file_name in ___ipairs(detail.copyfile_file) do
		local result = ALittle.File_CopyFile(src .. file_name, dst .. file_name)
		Lua.Assert(result, "文件复制失败:" .. src .. file_name)
	end
	return rsp
end

ALittle.RegWorkerRpcCallback(-467409153, DeployServer.HandleCopyFileWorker, 1447368920)
function DeployServer.HandleSendVirtualKeyWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	local cmd_list = msg.detail.virtualkey_cmd
	local rsp = {}
	for _, exepath in ___ipairs(detail.virtualkey_exepath) do
		local pids = carp.GetProcessIDByPath(exepath)
		rsp.content = "发送的进程个数为:" .. ALittle.List_Len(pids) .. "\n"
		for index, pid in ___ipairs(pids) do
			for __, cmd in ___ipairs(cmd_list) do
				if ALittle.String_Sub(cmd, ALittle.String_Len(cmd)) ~= "\n" then
					cmd = cmd .. "\n"
				end
				rsp.content = rsp.content .. "向进程ID:" .. pid .. " 发送命令:" .. cmd
				if carp.SendVirtualKey(pid, cmd) then
					rsp.content = rsp.content .. " 成功"
				else
					rsp.content = rsp.content .. " 失败"
				end
			end
		end
	end
	return rsp
end

ALittle.RegWorkerRpcCallback(578143398, DeployServer.HandleSendVirtualKeyWorker, 578143414)
function DeployServer.HandleWaitProcessExitWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	local wait_map = {}
	for index, exe_path in ___ipairs(detail.wait_p_exit_exe_path) do
		wait_map[exe_path] = true
	end
	local remain_time = detail.wait_p_exit_max_time
	while true do
		local wait_remove
		for exe_path, _ in ___pairs(wait_map) do
			local pids = carp.GetProcessIDByPath(exe_path)
			if ALittle.List_Len(pids) == 0 then
				if wait_remove == nil then
					wait_remove = {}
				end
				wait_remove[exe_path] = true
			end
		end
		if wait_remove ~= nil then
			for exe_path, _ in ___pairs(wait_remove) do
				wait_map[exe_path] = nil
			end
		end
		if ALittle.IsEmpty(wait_map) then
			break
		end
		A_LoopSystem:Sleep(1000)
		Lua.Assert(remain_time ~= 1, "等待超时")
		if remain_time > 1 then
			remain_time = remain_time - 1
		end
	end
	return {}
end

ALittle.RegWorkerRpcCallback(2052715406, DeployServer.HandleWaitProcessExitWorker, -1941486856)
function DeployServer.HandleCreateProgressWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	for index, exe_path in ___ipairs(detail.createprocess_exe_path) do
		local work_path = ALittle.File_GetFilePathByPath(exe_path)
		local result = carp.CreateProcess(exe_path, "", work_path)
		Lua.Assert(result, "进程创建失败:" .. exe_path)
	end
	return {}
end

ALittle.RegWorkerRpcCallback(1248316265, DeployServer.HandleCreateProgressWorker, 1248316217)
function DeployServer.HandleKillProcessWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	local rsp = {}
	rsp.content = ""
	if msg.detail.killprocess_delay_time > 0 then
		A_LoopSystem:Sleep(msg.detail.killprocess_delay_time * 1000)
	end
	for index, exe_path in ___ipairs(detail.killprocess_exe_path) do
		local pids = carp.GetProcessIDByPath(exe_path)
		for _, pid in ___ipairs(pids) do
			local result = carp.KillProcessByID(pid)
			if result then
				rsp.content = rsp.content .. "进程关闭成功:" .. exe_path
			else
				rsp.content = rsp.content .. "进程关闭失败:" .. exe_path
			end
		end
	end
	return rsp
end

ALittle.RegWorkerRpcCallback(1166148652, DeployServer.HandleKillProcessWorker, 1368739506)
function DeployServer.HandleReSharperCodeCheckWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local detail = msg.detail
	do
		local attr = ALittle.File_GetFileAttr(detail.r2r_resharper_exe_path)
		Lua.Assert(attr ~= nil and not attr.directory, "检查工具不存在:" .. detail.r2r_resharper_exe_path)
	end
	do
		local attr = ALittle.File_GetFileAttr(detail.r2r_resharper_sln_path)
		Lua.Assert(attr ~= nil and not attr.directory, "要检查的工程文件不存在:" .. detail.r2r_resharper_sln_path)
	end
	do
		Lua.Assert(detail.r2r_resharper_cache_path ~= "", "缓存路径不能为空")
		ALittle.File_MakeDeepDir(detail.r2r_resharper_cache_path)
		Lua.Assert(detail.r2r_resharper_output_path ~= "", "输出路径不能为空")
		ALittle.File_MakeDeepDir(detail.r2r_resharper_output_path)
	end
	local cmd = detail.r2r_resharper_exe_path
	cmd = cmd .. " --caches-home=" .. detail.r2r_resharper_cache_path
	local output_path = ALittle.File_PathEndWithSplit(detail.r2r_resharper_output_path)
	cmd = cmd .. " -o=" .. output_path .. "report.xml"
	cmd = cmd .. " -f=Xml -a=True"
	if detail.r2r_resharper_dotsettings_path ~= "" then
		cmd = cmd .. " -p=" .. detail.r2r_resharper_dotsettings_path
	end
	cmd = cmd .. " " .. detail.r2r_resharper_sln_path
	local file = io.popen(cmd, "rb")
	Lua.Assert(file ~= nil, "命令执行失败:" .. cmd)
	local rsp = {}
	rsp.content = file:read("*a")
	local result, error, status = file:close()
	Lua.Assert(result, error)
	rsp.exit_code = status
	return rsp
end

ALittle.RegWorkerRpcCallback(475800478, DeployServer.HandleReSharperCodeCheckWorker, 511985580)
function DeployServer.HandleRedmineDeleteIssuesAssignedToSelfWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	do
		local attr = ALittle.File_GetFileAttr(msg.curl_exe_path)
		Lua.Assert(attr ~= nil and not attr.directory, "curl工具不存在:" .. msg.curl_exe_path)
	end
	local issues_map = {}
	local list_issues
	while true do
		local cmd = msg.curl_exe_path
		cmd = cmd .. " \"" .. msg.url .. "/issues.json?assigned_to_id=me&project_id=" .. msg.project_id .. "\""
		cmd = cmd .. " -u " .. msg.account .. ":" .. msg.password
		local file = io.popen(cmd, "rb")
		Lua.Assert(file ~= nil, "命令执行失败:" .. cmd)
		local content = file:read("*a")
		local result, error, status = file:close()
		Lua.Assert(result, error)
		Lua.Assert(content, "curl返回值内容为空")
		error, list_issues = Lua.TCall(ALittle.String_JsonDecode, content)
		Lua.Assert(result, "curl返回值json解析失败")
		if list_issues.issues == nil or ALittle.List_Len(list_issues.issues) == 0 then
			break
		end
		for index, issue in ___ipairs(list_issues.issues) do
			Lua.Assert(issues_map[issue.id] == nil, "任务单删除失败:" .. issue.id)
			issues_map[issue.id] = true
			local delete_cmd = msg.curl_exe_path
			delete_cmd = delete_cmd .. " " .. msg.url .. "/issues/" .. issue.id .. ".json"
			delete_cmd = delete_cmd .. " -u " .. msg.account .. ":" .. msg.password
			delete_cmd = delete_cmd .. " -X DELETE"
			file = io.popen(delete_cmd, "rb")
			Lua.Assert(file ~= nil, "命令执行失败:" .. delete_cmd)
			content = file:read("*a")
			result, error, status = file:close()
			Lua.Assert(result, error)
		end
	end
	return {}
end

ALittle.RegWorkerRpcCallback(1771504595, DeployServer.HandleRedmineDeleteIssuesAssignedToSelfWorker, -469603049)
function DeployServer.HandleRedmineCreateIssueWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	do
		local attr = ALittle.File_GetFileAttr(msg.curl_exe_path)
		Lua.Assert(attr ~= nil and not attr.directory, "curl工具不存在:" .. msg.curl_exe_path)
	end
	do
		local cmd = msg.curl_exe_path
		cmd = cmd .. " " .. msg.url .. "/issues.json"
		cmd = cmd .. " -u " .. msg.account .. ":" .. msg.password
		cmd = cmd .. " -X POST"
		cmd = cmd .. " -H \"Content-Type: application/json\""
		cmd = cmd .. " --data-binary \"@" .. msg.json_path .. "\""
		local file = io.popen(cmd, "rb")
		Lua.Assert(file ~= nil, "命令执行失败:" .. cmd)
		local content = file:read("*a")
		local result, error, status = file:close()
		Lua.Assert(result, error)
	end
	return {}
end

ALittle.RegWorkerRpcCallback(1709573174, DeployServer.HandleRedmineCreateIssueWorker, 1775571742)
function DeployServer.HandleGitFileAuthorWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local cmd = ""
	local dir = ALittle.File_GetFilePathByPath(msg.file_path)
	local index = ALittle.String_Find(dir, ":")
	if index ~= nil then
		cmd = cmd .. ALittle.String_Sub(dir, 1, index) .. " && "
	end
	if index ~= ALittle.String_Len(dir) then
		cmd = cmd .. "cd \"" .. dir .. "\" && "
	end
	cmd = cmd .. "git log -1 --pretty=format:\"%an\" " .. msg.file_path
	local file = io.popen(cmd, "rb")
	Lua.Assert(file ~= nil, "命令执行失败:" .. cmd)
	local rsp = {}
	rsp.account = file:read("*a")
	local result, error, status = file:close()
	Lua.Assert(result, error)
	return rsp
end

ALittle.RegWorkerRpcCallback(-937108191, DeployServer.HandleGitFileAuthorWorker, -764967408)
function DeployServer.HandleSvnFileAuthorWorker(sender, msg)
	local ___COROUTINE = coroutine.running()
	local cmd = ""
	local dir = ALittle.File_GetFilePathByPath(msg.file_path)
	local index = ALittle.String_Find(dir, ":")
	if index ~= nil then
		cmd = cmd .. ALittle.String_Sub(dir, 1, index) .. " && "
	end
	if index ~= ALittle.String_Len(dir) then
		cmd = cmd .. "cd \"" .. dir .. "\" && "
	end
	cmd = cmd .. "svn info " .. msg.file_path
	local file = io.popen(cmd, "rb")
	Lua.Assert(file ~= nil, "命令执行失败:" .. cmd)
	local content = file:read("*a")
	local result, error, status = file:close()
	Lua.Assert(result, error)
	local rsp = {}
	local list = ALittle.String_SplitSepList(content, {"\r", "\n"})
	local pre = "Last Changed Author: "
	for _, info in ___ipairs(list) do
		if ALittle.String_Find(info, pre) ~= nil then
			rsp.account = ALittle.String_Sub(info, ALittle.String_Len(pre) + 1)
			ALittle.Log("svn test:" .. rsp.account)
			break
		end
	end
	return rsp
end

ALittle.RegWorkerRpcCallback(441047614, DeployServer.HandleSvnFileAuthorWorker, -84518889)
end