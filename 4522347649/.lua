local function command(text)
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack({[1]=text}))
end

fa=window:CreateTab('[FREE ADMIN]', tab_image)
fa:CreateButton({
	Name='Explode all',
	Callback=function()
		for i,v in pairs(game.Players:GetPlayers()) do
			command(':explode '..v.name)
		end
		checkmark('Successfully exploded all!')
	end,
})
fa:CreateButton({
	Name='Crash all',
	Callback=function()
		old=player.Character.HumanoidRootPart.CFrame
		player.Character.HumanoidRootPart.Position=Vector3.new(0,9e9,0)
		for i,v in pairs(game.Players:GetPlayers()) do
			command(':bring '..v.name)
		end
		wait(3)
		command(':re')
		player.Character.HumanoidRootPart.CFrame=old
		checkmark('Successfully crashed all!')
	end,
})
fa:CreateButton({
	Name='Spam',
	Callback=function()
		for i,v in pairs(game.Players:GetPlayers()) do
			local num=math.random(1, 3)
			if num==1 then
				emoji='⚡'
			elseif num==2 then
				emoji='⭐'
			elseif num==3 then
				emoji='✨'
			end
			command(':talk '..v.name..' '..emoji..' type "SaturioXclusive" in chat to get free rubax! '..emoji)
		end
	end,
})
fa:CreateButton({
	Name='Spam 2.0',
	Callback=function()
		for i=1,5 do
			local num=math.random(1, 3)
			if num==1 then
				emoji='⚡'
			elseif num==2 then
				emoji='⭐'
			elseif num==3 then
				emoji='✨'
			end
			command(':sm '..emoji..' type "SaturioXclusive" in chat to get free rubax! '..emoji)
			wait(3)
		end
	end,
})
fa:CreateButton({
	Name='Jail all',
	Callback=function()
		for i,v in pairs(game.Players:GetPlayers()) do
			command(':jail '..v.name)
		end
		checkmark('Successfully jailed all!')
	end,
})
fa:CreateButton({
	Name='Control all',
	Callback=function()
		for i,v in pairs(game.Players:GetPlayers()) do
			command(':control '..v.name)
		end
		checkmark('Successfully controled all!')
	end,
})
fa:CreateSection('Music')
fa:CreateButton({
	Name='Scary Sounds',
	Callback=function()
		command(':music 4737106301')
		command(':volume 9999999')
		command(':pitch 0.3')
	end,
})
fa:CreateButton({
	Name='Phonk',
	Callback=function()
		command(':music 6911766512')
		command(':volume 9999999')
	end,
})
fa:CreateButton({
	Name='Scream',
	Callback=function()
		command(':music 8819324666')
		command(':volume 9999999')
		command(':pitch 2')
	end,
})
