-- ALittle Generate Lua And Do Not Edit This Line!
do
if _G.DeployServer == nil then _G.DeployServer = {} end
local DeployServer = DeployServer
local Lua = Lua
local ALittle = ALittle
local ___pairs = pairs
local ___ipairs = ipairs


assert(DeployServer.Job, " extends class:DeployServer.Job is nil")
DeployServer.ReSharperRedmineJob = Lua.Class(DeployServer.Job, "DeployServer.ReSharperRedmineJob")

function DeployServer.ReSharperRedmineJob:Execute(build_info)
	local ___COROUTINE = coroutine.running()
	do
		local msg = {}
		msg.detail = self._info.detail
		local error, rsp = ALittle.IWorkerCommon.InvokeRPC(475800478, DeployServer.g_JobWorker, msg)
		if error ~= nil then
			return error, nil
		end
		return error, rsp.content .. "\nexit_code:" .. rsp.exit_code
	end
end

end