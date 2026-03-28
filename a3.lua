local actor = game.ReplicatedFirst:WaitForChild("cl_1774704410")

print("Found Actor")

for _,a in actor:GetChildren() do
	if a:IsA("LocalScript") then
		writefile(a.Name .. ".bin", getscriptbytecode(a))
	end
end

actor.ChildAdded:Connect(function(a)
	if a:IsA("LocalScript") then
		writefile(a.Name .. ".bin", getscriptbytecode(a))
	end
end)