RegisterNetEvent('NS100:Detection')
AddEventHandler('NS100:Detection', function(reason)

	local player = source
    local reason = config.kickReason

		print(reason, player)

        DropPlayer(player, '[🛡️]**NS100 Detection** \n\n[🛡️] You were kicked for.. \n [🛡️] Reason: '..reason..'. \n[🛡️] Discord: discord.gg/nsdev \n\n[🛎️] **INFORMATION:** NS100#0001 Detection \n DISCORD.GG/NSDEV')
	end)