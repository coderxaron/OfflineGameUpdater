-- // written by coderxaron
local RunService = game:GetService("RunService")

local isStudio = RunService:IsStudio()
local isServer = RunService:IsServer()

local argsDefinition = {
    SSS = "ServerScriptService", 
    RS = "ReplicatedStorage",
    SS = "ServerStorage",
    SG = "StarterGui"
} -- iam a lazy guy so ..

local GameUpdater = {}

-- sub modules
local timeConv = require(script:FindFirstChild("timeConv"))

local function getServiceforArgs(ServiceName)
    local Service = argsDefinition[ServiceName]

    if not Service then
        warn("Service: " .. Service .. " Not Found.")
        return
    end

    return game:GetService(Service) -- hell yeah.
end

local function init(...) -- multiple args like: RS; SG; SS;
    if not isServer then
        error("This Module only runs on Server")
        return
    end

    local args = {...} 

    for _, i in ipairs(args) do
        print(i)
        local r = getServiceforArgs(i)
        print(tostring(r))
    end

    -- nor done yet will implement rest soon. 
end

GameUpdater.Init = init

return GameUpdater