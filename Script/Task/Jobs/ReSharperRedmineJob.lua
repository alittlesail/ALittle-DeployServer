-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs

ALittle.RegStruct(-1102617310, "DeployServer.ReSharperReportIssue", {
name = "DeployServer.ReSharperReportIssue", ns_name = "DeployServer", rl_name = "ReSharperReportIssue", hash_code = -1102617310,
name_list = {"type_id","file","offset_start","offset_end","line","message","account","project","level","severity"},
type_list = {"string","string","int","int","int","string","string","string","int","string"},
option_map = {}
})

assert(DeployServer.Job, " extends class:DeployServer.Job is nil")
DeployServer.ReSharperRedmineJob = Lua.Class(DeployServer.Job, "DeployServer.ReSharperRedmineJob")

function DeployServer.ReSharperRedmineJob:Execute(build_info)
	local ___COROUTINE = coroutine.running()
	do
		local msg = {}
		msg.detail = self._info.detail
		local error, rsp = ALittle.IWorkerCommon.InvokeRPC(475800478, DeployServer.g_HJobWorker, msg)
		if error ~= nil then
			return error, nil
		end
	end
	local analysis_error, issue_map = self:AnalysisReport()
	if analysis_error ~= nil then
		return analysis_error, nil
	end
	do
		local msg = {}
		msg.curl_exe_path = self._info.detail.r2r_curl_exe_path
		msg.url = self._info.detail.r2r_redmine_url
		msg.account = self._info.detail.r2r_redmine_account
		msg.password = self._info.detail.r2r_redmine_password
		msg.project_id = self._info.detail.r2r_redmine_project_id
		local error, rsp = ALittle.IWorkerCommon.InvokeRPC(1771504595, DeployServer.g_HJobWorker, msg)
		if error ~= nil then
			return error, nil
		end
	end
	local code_tool = self._info.detail.r2r_code_tool
	for project_name, issue_list in ___pairs(issue_map) do
		for index, issue in ___ipairs(issue_list) do
			if code_tool == "svn" then
				local msg = {}
				msg.file_path = issue.file
				local error, rsp = ALittle.IWorkerCommon.InvokeRPC(441047614, DeployServer.g_LJobWorker, msg)
				if error ~= nil then
					issue.account = error
				else
					issue.account = rsp.account
				end
			elseif code_tool == "git" then
				local msg = {}
				msg.file_path = issue.file
				local error, rsp = ALittle.IWorkerCommon.InvokeRPC(-937108191, DeployServer.g_LJobWorker, msg)
				if error ~= nil then
					issue.account = error
				else
					issue.account = rsp.account
				end
			else
				issue.account = ""
			end
		end
	end
	local account_map = {}
	for project_name, issue_list in ___pairs(issue_map) do
		for index, issue in ___ipairs(issue_list) do
			local project_map = account_map[issue.account]
			if project_map == nil then
				project_map = {}
				account_map[issue.account] = project_map
			end
			local list = project_map[issue.project]
			if list == nil then
				list = {}
				project_map[issue.project] = list
			end
			ALittle.List_Push(list, issue)
		end
	end
	for account_name, project_map in ___pairs(account_map) do
		local description = {}
		local count = 0
		local account = ""
		for project_name, issue_list in ___pairs(project_map) do
			count = count + 1
			description[count] = "Project:" .. project_name
			for index, issue in ___ipairs(issue_list) do
				account = issue.account
				count = count + 1
				description[count] = issue.severity .. " File:" .. issue.file .. " Line:" .. issue.line .. " Offset:" .. issue.offset_start .. "-" .. issue.offset_end .. " Message:" .. issue.message
				if count >= 50 then
					break
				end
			end
			if count >= 50 then
				count = count + 1
				description[count] = "=====too manay info, please handle above first.====="
				break
			end
		end
		local msg = {}
		msg.curl_exe_path = self._info.detail.r2r_curl_exe_path
		msg.url = self._info.detail.r2r_redmine_url
		msg.account = self._info.detail.r2r_redmine_account
		msg.password = self._info.detail.r2r_redmine_password
		local info = {}
		local detail = {}
		info.issue = detail
		local watcher_id = self._info.detail.r2r_redmine_account_map[account]
		if watcher_id ~= nil then
			detail.watcher_user_ids = {}
			detail.watcher_user_ids[1] = watcher_id
		end
		detail.project_id = ALittle.Math_ToInt(self._info.detail.r2r_redmine_project_id)
		detail.subject = "DeployServer:CodeCheck"
		detail.assigned_to_id = ALittle.Math_ToInt(self._info.detail.r2r_redmine_account_id)
		detail.priority_id = 2
		detail.description = ALittle.String_Join(description, "\r\n")
		msg.json_path = ALittle.File_PathEndWithSplit(self._info.detail.r2r_resharper_output_path) .. self._task.data_info.task_id .. ".json"
		local save_result = ALittle.File_WriteTextToStdFile(ALittle.String_JsonEncode(info), msg.json_path)
		Lua.Assert(save_result, "Json信息保存失败:" .. msg.json_path)
		local error, rsp = ALittle.IWorkerCommon.InvokeRPC(1709573174, DeployServer.g_HJobWorker, msg)
		ALittle.File_DeleteFile(msg.json_path)
		if error ~= nil then
			return error, nil
		end
	end
	return nil, nil
end

function DeployServer.ReSharperRedmineJob.IssueItemSort(a, b)
	return a.level > b.level
end

function DeployServer.ReSharperRedmineJob:AnalysisReport()
	local detail = self._info.detail
	local output_path = ALittle.File_PathEndWithSplit(detail.r2r_resharper_output_path) .. "report.xml"
	local xml = tinyxml2.XMLDocument()
	if not xml:LoadFile(output_path) then
		return "xml报告文件加载失败:" .. output_path, nil
	end
	local root = xml:RootElement()
	if root == nil then
		return "xml报告文件没有跟节点", nil
	end
	local issue_types_map = {}
	local issue_level_map = {}
	local issue_types = root:FindElement("IssueTypes")
	if issue_types ~= nil then
		local issue_child = issue_types:FirstChild()
		while issue_child ~= nil do
			local issue_element = issue_child:ToElement()
			if issue_element ~= nil then
				local id_attr = issue_element:Attribute("Id")
				local severity_attr = issue_element:Attribute("Severity")
				if id_attr ~= nil and severity_attr ~= nil then
					issue_types_map[id_attr] = severity_attr
					if severity_attr == "INFO" then
						issue_level_map[id_attr] = 0
					elseif severity_attr == "HINT" then
						issue_level_map[id_attr] = 1
					elseif severity_attr == "SUGGESTION" then
						issue_level_map[id_attr] = 2
					elseif severity_attr == "WARNING" then
						issue_level_map[id_attr] = 3
					elseif severity_attr == "ERROR" then
						issue_level_map[id_attr] = 4
					end
				end
			end
			issue_child = issue_child:NextSibling()
		end
	end
	local project_issue = {}
	local issue = root:FindElement("Issues")
	if issue ~= nil then
		local issue_child = issue:FirstChild()
		while issue_child ~= nil do
			local project_element = issue_child:ToElement()
			if project_element ~= nil then
				local project_name = project_element:Attribute("Name")
				if project_name ~= nil then
					local list = {}
					project_issue[project_name] = list
					local p_issue_child = project_element:FirstChild()
					while p_issue_child ~= nil do
						local p_issue_element = p_issue_child:ToElement()
						if p_issue_element ~= nil then
							local info = {}
							info.type_id = p_issue_element:Attribute("TypeId")
							info.level = issue_level_map[info.type_id]
							info.severity = issue_types_map[info.type_id]
							info.file = p_issue_element:Attribute("File")
							local offset = p_issue_element:Attribute("Offset")
							local offset_list = ALittle.String_Split(offset, "-")
							if offset_list[1] ~= nil then
								info.offset_start = ALittle.Math_ToInt(offset_list[1])
							end
							if offset_list[2] ~= nil then
								info.offset_end = ALittle.Math_ToInt(offset_list[2])
							end
							info.line = ALittle.Math_ToInt(p_issue_element:Attribute("Line"))
							info.message = p_issue_element:Attribute("Message")
							info.project = project_name
							ALittle.List_Push(list, info)
						end
						p_issue_child = p_issue_child:NextSibling()
					end
					ALittle.List_Sort(list, DeployServer.ReSharperRedmineJob.IssueItemSort)
				end
			end
			issue_child = issue_child:NextSibling()
		end
	end
	return nil, project_issue
end

end