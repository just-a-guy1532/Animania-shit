-- Event notes hooks

function onCreate( ... )

	xx = getProperty('camFollow.x')
	yy = getProperty('camFollow.y')

end

function onEvent(name, value1, value2)

	if name == 'lock-camera' then
		triggerEvent('Camera Follow Pos',xx,yy)
	end
end 