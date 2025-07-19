-- Module

--[[
Usage:

Put this into a Script in ServerScriptService:
and Put This Module in a Folder Nammed __Modules in ServerStorage
make sure the components exist from line 21 to 23 
working on making this better

local ServerStorage = game:GetService("ServerStorage")
local __Modules = ServerStorage:WaitForChild("__Modules")
local TasksModule = require(__Modules:WaitForChild("TasksModule"))
TasksModule.LoadMap()
]]


local TasksModule = {}

local ServerStorage = game:GetService("ServerStorage")
local Workspace = game:GetService("Workspace")
local UPDATE_HOLDER = ServerStorage:WaitForChild("UPDATE_HOLDER")
local NEW_MAP = UPDATE_HOLDER:WaitForChild("UPDATE_CTX_MAP")
local OLD_MAP = ServerStorage:WaitForChild("UPDATE_CTX")
local RunService = game:GetService("RunService"):IsStudio()
local LOAD_IN_Studio = true

local TIME = os.time()
local Update_Time = 1752792552

local function CreateStorage()
    local Folder = Instance.new("Folder")
    Folder.Name = "__Storage"
    Folder.Parent = Workspace
    return Folder
end

local function Load_New_Map()
    local __Storage_map = Workspace:FindFirstChild("__Storage")

    if not __Storage_map then
        __Storage_map = CreateStorage()
    end

    NEW_MAP.Parent = __Storage_map
end

local function Load_Old_Map()
    local __Storage_map = Workspace:FindFirstChild("__Storage")

    if not __Storage_map then
        __Storage_map = CreateStorage()
    end

    OLD_MAP.Parent = __Storage_map
end

local function LoadMap()
    if RunService then
        print("RUNNING [Studio]")
        if LOAD_IN_Studio then
        Load_New_Map()
        end
    else
        print("RUNNING [Game]")
        
        if TIME >= Update_Time then
            Load_New_Map()
        else
            Load_Old_Map()
        end
    end
end

TasksModule.LoadMap = LoadMap

return TasksModule