-- This is a Part of the Multiple Character Script 
-- Put this in custom_notetypes


function onCreate()

		for i = 0, getProperty('unspawnNotes.length')-1 do

			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') and getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'DuetNote' then
				--setPropertyFromGroup('unspawnNotes', i, 'texture', 'luacharacters/notes/your note asset name'); --Change texture Use this to change note texture but not necessary
				
				--setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); --Make it so Dad doesn't do animation
				
				
			end
		end
	
end
