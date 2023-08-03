

local kys = false

function onCreate()

	----------------------------------------------------------------
	precacheImage('Stages/Komi/Street/BG2/trees')
	precacheImage('Stages/Komi/Street/BG2/house')
	precacheImage('Stages/Komi/Street/BG2/wall')

	addCharacterToList('chadano', 'boyfriend')
	addCharacterToList('tadano', 'boyfriend')
	addCharacterToList('komiICON', 'gf')
	addCharacterToList('komiside', 'dad')
	addCharacterToList('komiphone', 'dad')



	----------------------------------------------------------------

	setProperty('skipCountdown',true)
	setProperty('canShitButtons',false)

	----------------------------------------------------------------
	--far bg shit 

	makeLuaSprite('sky','Stages/Komi/Street/BG1/sky',200, -200)
	addLuaSprite('sky',false)
	scaleObject('sky', 1, 1)
	setLuaSpriteScrollFactor('sky',0.5, 1)

	makeLuaSprite('farhouses','Stages/Komi/Street/BG1/farhouses',1300, 250)
	addLuaSprite('farhouses',false)
	scaleObject('farhouses', 1, 1)
	setLuaSpriteScrollFactor('farhouses',0.6, 1)
	
	makeLuaSprite('house','Stages/Komi/Street/BG1/house',-850, -200)
	addLuaSprite('house',false)
	scaleObject('house', 1, 1)
	setLuaSpriteScrollFactor('house',0.6, 0.9)

	makeLuaSprite('house2','Stages/Komi/Street/BG2/house',-50, -450)
	addLuaSprite('house2',false)
	scaleObject('house2', 1.3, 1.5)
	setLuaSpriteScrollFactor('house2',0.6, 0.9)

	makeAnimatedLuaSprite('bushFAR', 'Stages/Komi/Street/BG1/bushFAR', 1100, 0); 
	addLuaSprite('bushFAR',false)
	addAnimationByPrefix('bushFAR', 'bushFAR', 'bushFAR', 24, true)
	objectPlayAnimation('bushFAR','bushFAR',true)
	setLuaSpriteScrollFactor('bushFAR',0.7, 1)




	----------------------------------------------------------------
	--trees

	makeLuaSprite('tree','Stages/Komi/Street/BG1/tree',200, -350)
	addLuaSprite('tree',false)
	scaleObject('tree', 1, 1)
	setLuaSpriteScrollFactor('tree',0.8, 0.9)

	makeLuaSprite('trees','Stages/Komi/Street/BG2/trees',-200, -330)
	addLuaSprite('trees',false)
	scaleObject('trees', 1, 1)
	setLuaSpriteScrollFactor('trees',0.8, 0.9)
	setProperty('trees.visible', false)


	----------------------------------------------------------------
	--bushes

	makeAnimatedLuaSprite('bushNEAR', 'Stages/Komi/Street/BG1/bushNEAR', 510, -160); 
	addLuaSprite('bushNEAR',false)
	addAnimationByPrefix('bushNEAR', 'bushNEAR', 'bushNEAR', 24, true)
	objectPlayAnimation('bushNEAR','bushNEAR',true)
	setLuaSpriteScrollFactor('bushNEAR',0.8, 1)

	makeAnimatedLuaSprite('bushNEAR2', 'Stages/Komi/Street/BG1/bushNEAR', -700, -160); 
	addLuaSprite('bushNEAR2',false)
	addAnimationByPrefix('bushNEAR2', 'bushNEAR', 'bushNEAR', 24, true)
	scaleObject('bushNEAR2', -1, 1)
	objectPlayAnimation('bushNEAR2','bushNEAR',true)
	setLuaSpriteScrollFactor('bushNEAR2',0.8, 1)



	----------------------------------------------------------------
	--bg

	makeLuaSprite('bg1','Stages/Komi/Street/BG1/ground',-1000, 60)
	addLuaSprite('bg1',false)
	scaleObject('bg1', 1, 1)
	setLuaSpriteScrollFactor('bg1',1, 1)

	makeLuaSprite('bg2','Stages/Komi/Street/BG2/wall',-550, -100)
	addLuaSprite('bg2',false)
	scaleObject('bg2', 1, 1)
	setLuaSpriteScrollFactor('bg2',1 , 1)
	setProperty('bg2.visible', false)

	----------------------------------------------------------------
	--shit

	makeLuaSprite('beam','Stages/Komi/Street/BG1/beam',5, -80)
	addLuaSprite('beam',false)
	scaleObject('beam', 1, 1)
	setLuaSpriteScrollFactor('beam',1, 1)

	makeLuaSprite('sign','Stages/Komi/Street/BG1/sign',1370, -70)
	addLuaSprite('sign',true)
	scaleObject('sign', 1, 1)
	setLuaSpriteScrollFactor('sign',1, 1)

	----------------------------------------------------------------
	--screen shit

	makeLuaSprite('lights','Stages/Komi/Street/BG1/COOL_LIGHTS_POG_WOW', -500, -250)
	addLuaSprite('lights',true)
	scaleObject('lights', 1.5, 1.3)
	setLuaSpriteScrollFactor('lights',0 , 0)
	setProperty('lights.alpha', 0.3)
	setBlendMode('lights','add')

	makeLuaSprite('bar1', 'bar',-30, -240);
	setScrollFactor('bar1', 0, 0);
	scaleObject('bar1', 2300, 3);
	addLuaSprite('bar1', true);

	makeLuaSprite('bar2', 'bar',-30, 580);
	setScrollFactor('bar2', 0, 0);
	scaleObject('bar2', 2300, 3);
	addLuaSprite('bar2', true);

	makeLuaSprite('blackshit', 'bar',-500, -300);
	setScrollFactor('blackshit', 0, 0);
	scaleObject('blackshit', 2300, 500);
	addLuaSprite('blackshit', true);

	makeAnimatedLuaSprite('ico', 'characters/Komi/komiICON', 0, 0); 
	addLuaSprite('ico',false)
	addAnimationByPrefix('ico', 'normal', 'komiidlenormal', 24, true)
	addAnimationByPrefix('ico', 'lose', 'komiidlelose', 24, true)
	scaleObject('ico', 1, 1)
	setProperty('ico.alpha', 0)
	setProperty('ico.flipX', true)

	setObjectCamera('bar1', 'hud')
	setObjectCamera('bar2', 'hud')
	setObjectCamera('ico', 'hud')



	----------------------------------------------------------------
	--intro shit

	makeAnimatedLuaSprite('phonecall', 'Stages/Komi/Street/BG1/text', -100, -70); 
	addLuaSprite('phonecall',true)
	addAnimationByPrefix('phonecall', 'idlep', 'phone call text', 24, true)
	setLuaSpriteScrollFactor('phonecall', 0, 0)
	objectPlayAnimation('phonecall','idlep',true)
	setProperty('phonecall.alpha', 0);	
end




function onCreatePost() --no more rating POG

	
	noteTweenX('0', 0, 732, 0.000001, 'linear');
	noteTweenX('1', 1, 844, 0.000001, 'linear');
	noteTweenX('2', 2, 956, 0.000001, 'linear');
	noteTweenX('3', 3, 1068, 0.000001, 'linear');

	noteTweenX('4', 4, 92, 0.000001, 'linear');
	noteTweenX('5', 5, 204, 0.000001, 'linear');
	noteTweenX('6', 6, 316, 0.000001, 'linear');
	noteTweenX('7', 7, 428, 0.000001, 'linear');

    setProperty('iconP1.alpha', 0)
    setProperty('iconP2.alpha', 0)
    setProperty('healthBar.alpha', 0)
    setProperty('healthBarBG.alpha', 0)
    setProperty('healthBarWN.alpha', 0)
    setProperty('healthStrips.alpha', 0)
    setProperty('scoreTxt.alpha', 0)

    --------------<{[YES BITCH GF IS SINGING ICON]}>--------------
    setProperty('gf.alpha', 0)
    setObjectCamera('gf', 'hud')
    setObjectOrder('gf', 64)
    setObjectOrder('ico', 65)
   	--------------<{[YES BITCH GF IS SINGING ICON]}>--------------


    setProperty('camZoomingFreq', -1);
    setProperty('camHUD.alpha', 0)
   	--layerCheck(true)

    runHaxeCode([[
        var shaderName = "bloom";
        var shaderName2 = "chromaticAbberation";
 
        game.initLuaShader(shaderName);
        game.initLuaShader(shaderName2);

        shader0 = game.createRuntimeShader(shaderName);
        shader1 = game.createRuntimeShader(shaderName2);
        shader0.setFloat('intensity', 0.12);
        shader0.setFloat('blurSize', 1/1024);
        shader1.setInt('amount', 1);

        game.camGame.setFilters([new ShaderFilter(shader0), new ShaderFilter(shader1)]);
    ]])

end

function onUpdate() 

	if kys == false then

	    if curStep >= 0 then
			setProperty('iconP2.alpha', 0)
			setProperty('animatedicon.visible', true)
		else
			setProperty('iconP2.alpha', 1)
		end

		if getProperty('gf.animation.curAnim.name') == 'idle' then

			if curStep > 130 then
				setProperty('gf.alpha', 0)
				setProperty('ico.alpha', 1)
			end

			if getProperty('health') > 1.6 then

				objectPlayAnimation('ico', 'lose', true)

			else

				objectPlayAnimation('ico', 'normal', true)	

			end

		else

			if  curStep > 130 then
				setProperty('gf.alpha', 1)
				setProperty('ico.alpha', 0)
			end
		end

	end

	--gf	
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('gf.x', getProperty('iconP2.x') + 72 - 10)
	setProperty('gf.angle', getProperty('iconP2.angle'))
	setProperty('gf.y', getProperty('iconP2.y') + 263 + 10)
	setProperty('gf.scale.x', getProperty('iconP2.scale.x'))
	setProperty('gf.scale.y', getProperty('iconP2.scale.y'))

	--ico
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('ico.x', getProperty('iconP2.x') + 34 - 10)
	setProperty('ico.angle', getProperty('iconP2.angle'))
	setProperty('ico.y', getProperty('iconP2.y') + 12 + 10)
	setProperty('ico.scale.x', getProperty('iconP2.scale.x'))
	setProperty('ico.scale.y', getProperty('iconP2.scale.y'))

end



---  EVENTSSSSSS YEAAAHHHHHHHH!!  ---

function onEvent(name, value1, value2)

    if name == "event" then

		amongus = tonumber(value1)


		if  amongus == 0 then --1 tadwalk
		    getObjectOrder('iconP1')
			getObjectOrder('gf')
			getObjectOrder('ico')

			setProperty('phonecall.alpha', 1);

			setProperty('camHUD.alpha', 0)

			setProperty('timeBar.alpha', 0)
   
			doTweenX('tadanowalk', 'boyfriend', -300, 6.75 / getProperty('playbackRate'), 'linear')
			doTweenY('tadanowalksup', 'boyfriend', -10, 0.3 / getProperty('playbackRate'), 'cubeIn')	


		elseif  amongus == 1 then --10 warning
			runTimer('introfinale', 1.4 / getProperty('playbackRate'), 1)

				

			noteTweenAlpha('lol0', 0, 0, 0.001 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('lol1', 1, 0, 0.001 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('lol2', 2, 0, 0.001 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('lol3', 3, 0, 0.001 / getProperty('playbackRate'),  'linear')

			noteTweenAlpha('lol4', 4, 0, 0.001 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('lol5', 5, 0, 0.001 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('lol6', 6, 0, 0.001 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('lol7', 7, 0, 0.001 / getProperty('playbackRate'),  'linear')


		elseif  amongus == 2 then --125 hudisback
			noteTweenAlpha('poop4', 4, 1, 0.3 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('poop5', 5, 1, 0.3 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('poop6', 6, 1, 0.3 / getProperty('playbackRate'),  'linear')
			noteTweenAlpha('poop7', 7, 1, 0.3 / getProperty('playbackRate'),  'linear')

			doTweenAlpha('komiicon', 'gf', 1, 0.3 / getProperty('playbackRate'), 'linear') --gf icon appear

			doTweenAlpha('hudisbackpog', 'iconP1', 1, 0.3 / getProperty('playbackRate'),  'linear')
			doTweenAlpha('hudisbackpog1', 'iconP2', 1, 0.3 / getProperty('playbackRate'),  'linear')
			doTweenAlpha('hudisbackpog2', 'healthBar', 1, 0.3 / getProperty('playbackRate'),  'linear')
			doTweenAlpha('hudisbackpog3', 'healthBarBG', 1, 0.3 / getProperty('playbackRate'),  'linear')	
			doTweenAlpha('hudisbackpog4', 'healthBarWN', 1, 0.3 / getProperty('playbackRate'),  'linear')
			doTweenAlpha('hudisbackpog5', 'healthStrips', 1, 0.3 / getProperty('playbackRate'),  'linear')
			doTweenAlpha('hudisbackpog6', 'scoreTxt', 1, 0.3 / getProperty('playbackRate'),  'linear')
            setProperty('canShitButtons',true)


		elseif  amongus == 3 then --640 komizoomin
			setProperty('cameraSpeed', 2)
			setProperty('defaultCamZoom', 2);	


		elseif  amongus == 4 then --655 komarrowsalpha05
			noteTweenAlpha('poop0', 0, 0.5, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('poop1', 1, 0.5, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('poop2', 2, 0.5, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('poop3', 3, 0.5, 1 / getProperty('playbackRate'),  'cubeIn')
		

		elseif  amongus == 5 then --663 tadanogetscloser
			doTweenX('tadanogetscloser', 'boyfriend', 600, 0.7 / getProperty('playbackRate'), 'cubeOut')
		

		elseif  amongus == 6 then --672	camspeedchange
			setProperty('cameraSpeed', 1)


		elseif  amongus == 7 then --912 komarrowsalpha1
			noteTweenAlpha('poop0', 0, 1, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('poop1', 1, 1, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('poop2', 2, 1, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('poop3', 3, 1, 1 / getProperty('playbackRate'),  'cubeIn')


		elseif  amongus == 8 then --920 barzoom
			doTweenY('bar11', 'bar1', -370 + 70, 1 / getProperty('playbackRate'), 'cubeOut');
			doTweenY('bar21', 'bar2', 720 - 70, 1 / getProperty('playbackRate'), 'cubeOut');
	

		elseif  amongus == 9 then --927 barbb
			doTweenAlpha('bb', 'bar1', 0, 0.0001 / getProperty('playbackRate'), 'linear')
			doTweenAlpha('bbb', 'bar2', 0, 0.0001 / getProperty('playbackRate'), 'linear')
			


		elseif  amongus == 10 then --928 DAAAAMN ITS TRANSITION!!!!!!!!!

			--layerCheck(true)
			setProperty('cameraSpeed', 0.9)
			runTimer('campoopie', 1 / getProperty('playbackRate'), 1)
			cameraFlash('camHUD', 'FFFFFF', 0.8, false)


			--hello bg2
			setProperty('trees.visible', true)
			setProperty('bg2.visible', true)
			setProperty('house2.visible', true)


			--goodbye bg1

			setProperty('tree.visible', false)
			setProperty('bg1.visible', false)
			setProperty('house.visible', false)
			setProperty('bushNEAR2.visible', false)
			setProperty('farhouses.visible', false)
			--setProperty('tree.visible', false)
			--setProperty('tree.visible', false)
			--removeLuaSprite('tree')
			--removeLuaSprite('bg1')
			--removeLuaSprite('house')
			--removeLuaSprite('bushNEAR2')
			--removeLuaSprite('farhouses')


			--sign scale and position

			scaleObject('sign', 1.3, 1.6);
			setProperty('sign.x', 800)
			setProperty('sign.y', -340)


			--beam scale and position

			scaleObject('beam', 0.85, 1.3);
			setProperty('beam.x', -300)
			setProperty('beam.y', -340)


			--sky scale and position

			scaleObject('sky', 1.5, 1);
			setProperty('sky.x', -500)
			setProperty('sky.y', -300)


			--bushes scale and position

			scaleObject('bushNEAR', 1, 1); 
			setProperty('bushNEAR.x', 100)
			setProperty('bushNEAR.y', -250)
			setProperty('bushNEAR.angle', -10)


			--bushes far

			setProperty('bushFAR.x', 1000)
			setProperty('bushFAR.y', -150)
			--setObjectOrder('bushFAR', 7)
			setProperty('bushFAR.angle', -20)
			setLuaSpriteScrollFactor('bushFAR',0.8, 1)


			--layer shit
			--setObjectOrder('bg2', 8)
			--setObjectOrder('beam', 9)
			--setObjectOrder('dad', 10)


		elseif  amongus == 11 then --1328 --ending lol --goodbyehud
			kys = true
			setProperty('canShitButtons',false)

			setProperty('bar1.alpha', 1);
			setProperty('bar2.alpha', 1);

			setProperty('bar1.y', -370 - 70);
			setProperty('bar2.y', 720 + 70);

			noteTweenAlpha('end0', 0, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end1', 1, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end2', 2, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end3', 3, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end4', 4, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end5', 5, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end6', 6, 0, 1 / getProperty('playbackRate'),  'cubeIn')
			noteTweenAlpha('end7', 7, 0, 1 / getProperty('playbackRate'),  'cubeIn')

			doTweenAlpha('end8', 'iconP1', 0, 1 / getProperty('playbackRate'),  'cubeIn')
			doTweenAlpha('end9', 'iconP2', 0, 1 / getProperty('playbackRate'),  'cubeIn')
			doTweenAlpha('end10', 'healthBar', 0, 1 / getProperty('playbackRate'),  'cubeIn')
			doTweenAlpha('end11', 'healthBarBG', 0, 1 / getProperty('playbackRate'),  'cubeIn')
			doTweenAlpha('end14', 'healthStrips', 0, 1 / getProperty('playbackRate'),  'cubeIn')
			doTweenAlpha('end15', 'healthBarWN', 0, 1 / getProperty('playbackRate'),  'cubeIn')	
			doTweenAlpha('end13', 'gf', 0, 1 / getProperty('playbackRate'),  'cubeIn')
			doTweenAlpha('end1123', 'ico', 0, 1 / getProperty('playbackRate'),  'cubeIn')

			doTweenZoom('end14', 'camGame', 0.65, (stepCrochet / 1000) * 24 / getProperty('playbackRate'), 'smoothstepinout')

			doTweenY('bar11', 'bar1', -370 + 100, 1.5 / getProperty('playbackRate'), 'backInOut');
			doTweenY('bar21', 'bar2', 720 - 100, 1.5 / getProperty('playbackRate'), 'backInOut');
			doTweenY('camFollow1111', 'camFollow', getProperty('camFollow.y') - 100, 7.5 / getProperty('playbackRate'), 'cubeInOut');
			

		elseif  amongus == 12 then --1376 finale
			doTweenAlpha('finale', 'blackshit', 1, 2.7 / getProperty('playbackRate'), 'linear')
		end
	end	
end	

function layerCheck(AhhFuckMeSenpai)
	if AhhFuckMeSenpai == true then
		debugPrint('komi - ', getObjectOrder('dad'))
		debugPrint('chad - ', getObjectOrder('boyfriend'))
		debugPrint('-------------')	
		debugPrint('beam - ', getObjectOrder('beam'))
		debugPrint('sign - ', getObjectOrder('sign'))
		debugPrint('-------------')
		debugPrint('bg1 - ', getObjectOrder('dad'))
		debugPrint('bg2 - ', getObjectOrder('bg2'))
		debugPrint('-------------')
		debugPrint('sky - ', getObjectOrder('sky'))
		debugPrint('farhouses - ', getObjectOrder('farhouses'))
		debugPrint('bushNEAR - ', getObjectOrder('bushNEAR'))
		debugPrint('bushNEAR2 - ', getObjectOrder('bushNEAR2'))
		debugPrint('-------------')
		debugPrint('house - ', getObjectOrder('house'))
		debugPrint('house2 - ', getObjectOrder('house2'))
		debugPrint('bushFAR - ', getObjectOrder('bushFAR'))
	end
end



function onTweenCompleted(tag) 

	--------------------------------------------------------------------    
	--https://i.kym-cdn.com/photos/images/original/001/471/798/86f.gif--
	--------------------------------------------------------------------


	--chad stride

	if curStep < 64 then
		if tag == 'tadanowalksup' then
			doTweenY('tadanowalksdown', 'boyfriend', 150, 0.3 / getProperty('playbackRate'), 'cubeIn')
		end

		if tag == 'tadanowalksdown' then
			doTweenY('tadanowalksup', 'boyfriend', 130, 0.3 / getProperty('playbackRate'), 'cubeOut')
		end
	end


	if tag == 'end14' then
		doTweenZoom('end123', 'camGame', 0.70,(stepCrochet / 1000) * 48 / getProperty('playbackRate'), 'quadOut')
	end

	if tag == 'end123' then
		setProperty('defaultCamZoom', 0.7);	
	end

end

function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'introfinale' then

		doTweenAlpha('ass', 'camHUD', 1, 0.3 / getProperty('playbackRate'), 'linear')
		doTweenAlpha('out', 'phonecall', 0, 0.4 / getProperty('playbackRate'), 'cubeIn')
		doTweenAlpha('123123', 'left', 0, 0.5 / getProperty('playbackRate'), 'cubeIn')
		doTweenAlpha('taglol', 'blackshit', 0, 0.5 / getProperty('playbackRate'), 'cubeIn')
		doTweenY('bar11', 'bar1', -260, 0.7 / getProperty('playbackRate'), 'cubeOut');
		doTweenY('bar21', 'bar2', 600, 0.7 / getProperty('playbackRate'), 'cubeOut');
	end

	if tag == 'campoopie' then
		setProperty('cameraSpeed', 1)
	end

end



--FREDDY FAZBEAR!!!!!!!! AAAAAAAAAAAAAAAAAAAAAAAAAAAA!!!!!!!!!!!!!!
-----------------------------------------------------------------
--       ⠀⠀⠀⠀⠀⠀⠀⠀⣎⠉⠉⠉⠉⠉⠉⠉⠉⣱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--  ⠀⠀   ⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--  ⠀⠀   ⠀⠀⠀⠀⠀⠀⠀⢰⠚⠒⠒⠒⠒⠒⠒⠒⠒⠓⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀
--     ⠀⢀⣀⣀⣀⠀⢠⡤⢄⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⡠⢤⡄⠀⣀⣀⣀⡀⠀
--     ⡰⠕⠀⠐⠂⠍⡆⠙⣭⣛⡀⠤⠤⠤⠤⠤⠤⠤⠄⢐⣛⣭⠋⢰⡩⠐⠂⠐⠫⢆
--     ⢣⢄⠀⠀⢀⢠⢛⠞⠁⠀⠉⠉⠁⠒⠒⠒⠒⠈⠉⠉⠀⠈⠳⡛⡄⡀⠀⠀⡠⡜
--     ⠈⠳⣕⠀⣰⣻⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣝⣆⠀⣪⠞⠀
--⠀      ⠀⠉⢠⠇⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠸⡄⠉⠀⠀⠀
--⠀   ⠀  ⠀⠀⢸⠀⠀⢠⡾⠿⠿⠿⣿⣄⠀⠀⣠⣿⠿⠿⠿⢷⡀⠀⠀⡇⠀⠀⠀⠀
-- ⠀   ⠀  ⠀⢸⠀⠀⠈⢀⣶⠛⠛⢦⠙⠀⠐⠋⡶⠛⠛⣷⡀⠀⠀⠀⡇⠀⠀⠀⠀
-- ⠀   ⠀  ⠀⡸⠃⠀⠀⠸⣷⡈⡃⣸⠇⠀⠀⠸⣇⢹⠁⣾⠇⠀⠀⠘⢇⠀⠀⠀⠀
--     ⠀  ⢸⠁⠀⠀⠀⢀⣩⠿⢿⡭⠤⢶⣶⣤⣭⡿⠿⣉⣀⠀⠀⠀⠈⡆⠀⠀⠀
--       ⠀⠘⢆⡀⢀⡞⠁⠀⠀⠀⠙⠛⠿⠿⠛⠋⠀⠀⠀⠈⢳⡀⠀⡰⠃⠀⠀⠀
--        ⠀⠀⢹⢾⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡗⡏⠀⠀⠀⠀⠀
--         ⠀⠸⡄⢷⣀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⢀⡾⢠⠃⠀⠀⠀⠀⠀
--           ⠀⢣⠈⠫⣹⡒⠚⢉⠉⢉⡉⠉⣉⠓⢒⣏⠝⠁⡞⠀⠀⠀⠀⠀⠀
--            ⠀⠳⡀⠈⠙⠒⠛⠤⠼⠧⠤⠛⠒⠋⠁⣀⠞⠁⠀⠀⠀⠀⠀⠀
--             ⠀⠈⠓⠦⠤⣤⣀⣠⣄⣀⣠⠤⠴⠚⠁⠀
-----------------------------------------------------------------







--AAAAAAAAAAAAAAAAAAAAA!!!! IT'S PURPLE GUY! AAAAAAAAAAAAA!!!!!!!!!!!
-----------------------------------------------------------------
--         ⠀⠀⠀⠀⠀⠀⠀⣠⡾⠛⠉⢹⣋⣀⣠⡀⠀⠈⠙⠒⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡟⠀⠀⢀⡟⢉⣉⢹⣆⣀⣀⣀⠀⠀⠈⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⡀⣀⣴⣟⣻⣦⣧⣿⣋⣉⣙⣛⡿⣶⣾⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣹⣿⣟⠉⣉⣉⣙⣿⣿⣿⣿⣿⠿⠛⠻⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⣿⠟⠛⠛⠻⢿⡿⢿⡟⠉⠀⠀⠀⢠⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⠀⠀⠀⠀⢸⡇⠸⣷⣀⣠⣴⣾⣿⠛⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣦⣄⣀⣴⣿⠁⠀⠙⠉⢉⡽⠛⣅⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡿⣿⡛⠉⠁⣀⣠⠤⢶⠋⠀⢠⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⣄⢻⠋⠉⢹⡀⢀⣀⣧⣴⣿⡿⠋⠀⠀⠀⠀⠀⢀⣠⣤⡤⡀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⡟⠛⠛⠉⠉⣉⣨⡿⣿⣶⣾⡷⠶⠶⠒⠛⠋⣿⣿⠻⣗⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⢿⠟⠛⠛⢻⡟⢯⣁⣠⣿⢻⣿⣇⠀⠀⠀⠀⠀⠁⠀⠀⠹⣦⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠿⡟⠈⠀⠀⠀⠘⣧⠘⣿⣿⣧⣾⠇⠉⠀⠀⠀⠀⣴⣶⠀⠀⠀⠘⣧
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⢠⠀⠀⠀⠀⠀⠀⠀⠈⠳⣽⣿⣿⠏⢀⣤⠤⠶⢚⣋⣿⡇⠀⠀⠀⠀⠸
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠈⠀⠹⣆⠀⠀⠀⠀⠀⠀⠈⣿⠉⠀⠈⣷⠂⠛⠉⠁⢸⣇⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠸⣇⠀⠀⠀⠀⠀⢸⡏⠀⠀⠀⠘⡇⠀⠀⠀⣸⣿⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟⠀⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠻⢦⣀⣰⠏⢻⡄⠀⢀⣠⠾
--⠀⠀⠀⠀   ⠀⠀⠀⠈⢛⣳⣶⣆⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⢿⠀⠀⠀⡛⠻⠶⣽⣁⡀⢸⣷⠺⡏⠀⠀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣍⠉⠻⣟⠀⠀⢹⡇⠀⠀⠀⠀⢸⡇⡀⠾⢥⣤⡤⠄⠈⣿⠀⣿⠀⢻⠀⢀
--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣟⣿⣿⣧⣤⡿⠤⣄⠀⣿⢦⡄⠀⠀⢸⡿⢧⣤⠀⠀⠀⠀⠀⢹⣷⣿⣀⣼⣿⣟
-----------------------------------------------------------------


