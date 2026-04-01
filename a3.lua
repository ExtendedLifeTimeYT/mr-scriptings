local actor
game.ReplicatedFirst.ChildAdded:Connect(function(ch)
		if ch.Name:find("cl_") then
			actor = ch
		end
end)
repeat task.wait() until actor

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
