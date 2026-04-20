-- Sound function
sound.PlayFile("sound/music/hl1_song20.mp3", "", function(channel)
	if (IsValid(channel)) then
		channel:Play()
		channel:SetVolume(3)
	end
end)