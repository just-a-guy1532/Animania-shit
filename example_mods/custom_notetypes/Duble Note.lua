function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Duble Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'DUBLENOTE_assets'); --Change texture
			setPropertyFromGroup("unspawnNotes", i, "noAnimation", true)
			setPropertyFromGroup("unspawnNotes", i, "hitHealth", 0)
			setPropertyFromGroup("unspawnNotes", i, "missHealth", 0)
			setPropertyFromGroup("unspawnNotes", i, "ignoreNote", true)
			setPropertyFromGroup("unspawnNotes", i, "alpha", 0.5)

			--setPropertyFromGroup("unspawnNotes", i, "noteSplashTexture", 0)
			setPropertyFromGroup("unspawnNotes", i, "noteSplashHue", 0)
			setPropertyFromGroup("unspawnNotes", i, "noteSplashSat", 0)
			setPropertyFromGroup("unspawnNotes", i, "noteSplashBrt", 0)
		end
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

function noteMiss(id, direction, noteType, isSustainNote)
	  if noteType == "Duble Note" then
	        --nothing
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "Duble Note" then
	        addScore(350)
	end
end