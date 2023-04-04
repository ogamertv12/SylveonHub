-- Service
local PathfindingService = game:GetService("PathfindingService")
local RunService = game:GetService("RunService")

-- Line
local VisualFolder = Instance.new("Folder", workspace)
VisualFolder.Name = "PathVisuals"
-- Function
local function output(func, msg)
	func(((func == error and "SimplePath Error: ") or "SimplePath: ")..msg)
end
local Path = {}
Path.__index = function(table, index)
	if index == "Stopped" and not table._humanoid then
		output(error, "Attempt to use Path.Stopped on a non-humanoid.")
	end
	return Path[index]
end

local function newLine(info)
    local PointA = info.PointA
    local PointB = info.PointB

    local Line = Instance.new("Part")
    Line.TopSurface = Enum.SurfaceType.Smooth
    Line.Color = info.Color or Color3.fromRGB(0, 255, 0)
    Line.Anchored = true
    Line.CanCollide = false
    Line.Transparency = 0.4
    Line.Material = Enum.Material.Neon
    Line.Name = "Path"
    Line.Parent = VisualFolder

    local magnitude = (PointA - PointB).magnitude
	Line.Size = Vector3.new(info.Thickness, info.Thickness, magnitude)
	Line.CFrame = CFrame.new(PointA:Lerp(PointB, 0.5), PointB)
    return Line
end

local function MoveTo(self)
	if self._waypoints[self._currentWaypoint].Action == Enum.PathWaypointAction.Jump then
		self._humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end

	while (self._agent.HumanoidRootPart.Position - self._waypoints[self._currentWaypoint].Position).magnitude > 5 and self._toggleMove do
		self._humanoid:Move((self._waypoints[self._currentWaypoint].Position - self._agent.HumanoidRootPart.Position).Unit, false)
		RunService.RenderStepped:Wait()
	end
	moveToFinished(self, true)
end

local function comparePosition(self)
	if self._currentWaypoint == #self._waypoints then return end
	self._position._count = ((self._agent.HumanoidRootPart.Position - self._position._last).Magnitude <= 0.07 and (self._position._count + 1)) or 0
	self._position._last = self._agent.HumanoidRootPart.Position
	if self._position._count >= 1 then
		self._humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end

function getNonHumanoidWaypoint(self)
	for i = 2, #self._waypoints do
		if (self._waypoints[i].Position - self._waypoints[i - 1].Position).Magnitude > 0.1 then
			return i
		end
	end
	return 2
end

function moveToFinished(self, reached)
	if not getmetatable(self) then return end
	if reached and self._currentWaypoint + 1 <= #self._waypoints  then
		self._currentWaypoint += 1
		MoveTo(self)
	end
end

function Path.new(agent, agentParameters, toggleMove)
	if not (agent and agent:IsA("Model") and agent.HumanoidRootPart) then
		output(error, "Pathfinding agent must be a valid Model Instance with a set HumanoidRootPart.")
	end
	local self = setmetatable({
		_agent = agent;
		_humanoid = agent:FindFirstChildOfClass("Humanoid");
		_path = PathfindingService:CreatePath(agentParameters);
		_toggleMove = toggleMove;
		_position = {
			_last = Vector3.new();
			_count = 0;
		};
	}, Path)

	self._path.Blocked:Connect(function(...)
		if (self._currentWaypoint <= ... and self._currentWaypoint + 1 >= ...) and self._humanoid then
			self._humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end)
	return self
end

function Path:Run(target)
	if not (target and (typeof(target) == "Vector3" or target:IsA("BasePart"))) then
		output(error, "Pathfinding target must be a valid Vector3 or BasePart.")
	end
	local pathComputed, _ = pcall(function()
		self._path:ComputeAsync(self._agent.HumanoidRootPart.Position, (typeof(target) == "Vector3" and target) or target.Position)
	end)
	if pathComputed and self._path.Status == Enum.PathStatus.Success then
		pcall(function()
			self._agent.HumanoidRootPart:SetNetworkOwner(nil)
		end)

		self._waypoints = self._path:GetWaypoints()
		self._pre = self._waypoints[1]
		self._currentWaypoint = 2

		if self.Visualize then
			for _,v in pairs(self._waypoints) do
				newLine({
					PointA = self._pre.Position;
					PointB = v.Position;
					Thickness = 0.15; 
				})
				self._pre = v
			end
		end

		local stuck
		if self._humanoid then
			stuck = comparePosition(self)
		end

		if self._humanoid then
			MoveTo(self)
		else
			self._currentWaypoint = getNonHumanoidWaypoint(self)
			moveToFinished(self, true)
		end
		return true
	else
		return false
	end
end

return Path
