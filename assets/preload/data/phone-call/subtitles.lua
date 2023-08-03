function onCreate()

    makeLuaText('subtitle', '', 1000, 145, 540)
    setTextSize('subtitle', 30)
    setTextString('subtitle', "Komi san?")
    setTextColor('subtitle', 'fffffF')
    addLuaText('subtitle')
    setProperty('subtitle.alpha', 0)

end



function onStepHit()
	if curStep == 86 then
        doTweenAlpha('textvis1', 'subtitle', 1, 0.1, 'SineIn')
    end
    if curStep == 96 then
    	doTweenAlpha('textinvis2', 'subtitle', 0, 0.4, 'SineIn')
    end
    if curStep == 106 then
    	setTextString('subtitle', "Hi")
    	doTweenAlpha('textvisible2', 'subtitle', 1, 0.1, 'SineIn')
    end
    if curStep == 113 then
    	setTextString('subtitle', "I'm listening")
    end
    if curStep == 120 then
    	doTweenAlpha('textinvis3', 'subtitle', 0, 0.4, 'SineIn')
    end
    if curStep == 657 then
    	setTextColor('subtitle', 'D57CFF')
    	setTextString('subtitle', "Tadano kun...")
    	doTweenAlpha('textvisible3', 'subtitle', 1, 0.1, 'SineIn')
    end
    if curStep == 666 then
    	doTweenAlpha('textinvis4', 'subtitle', 0, 0.4, 'SineIn')
    end
    if curStep == 1340 then
    	setTextString('subtitle', "Ta-")
    	doTweenAlpha('textvisible4', 'subtitle', 1, 0.1, 'SineIn')
    end
    if curStep == 1347 then
    	setTextString('subtitle', "Ta-Tadano kun.")
    end
    if curStep == 1355 then
    	doTweenAlpha('textinvis5', 'subtitle', 0, 0.4, 'SineIn')
    end
    if curStep == 1363 then
    	setTextString('subtitle', "Thank you.")
    	doTweenAlpha('textvisible5', 'subtitle', 1, 0.1, 'SineIn')
	end
	if curStep == 1372 then
		doTweenAlpha('textinvis6', 'subtitle', 0, 0.4, 'SineIn')
	end
end