-- Event notes hooks
function onEvent(name, value1, value2)

	if name == 'play-sound' then

		sound = tonumber(value1)

		if sound == 1 then

			playSound('fart-with-reverb', 1, tag)
		end

		if sound == 2 then

			playSound('vine-boom', 1, tag)
		end

		if sound == 3 then

			playSound('gawr-gura-a', 1, tag)
		end
		
	end

end