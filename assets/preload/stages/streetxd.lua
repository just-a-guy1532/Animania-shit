

local kys = false
local balls = 1

function onCreate()

	----------------------------------------------------------------
	--precacheImage('Stages/Komi/Street/BG2/trees')
	--precacheImage('Stages/Komi/Street/BG2/house')
	--precacheImage('Stages/Komi/Street/BG2/wall')

	addCharacterToList('chadano', 'boyfriend')
	--addCharacterToList('tadano', 'boyfriend')
	--addCharacterToList('komiICON', 'gf')
	addCharacterToList('komiside', 'dad')
	--addCharacterToList('komiphone', 'dad')



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
	makeLuaSprite('bg11','Stages/Komi/Street/BG1/ground',-2500, 60)
	addLuaSprite('bg11',false)
	scaleObject('bg11', -1, 1)
	setLuaSpriteScrollFactor('bg11',1, 1)

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


    setProperty('camZoomingFreq', -1);
    setProperty('camHUD.alpha', 0)
   
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


		elseif  amongus == 3 then 


			setObjectOrder('gfGroup', getObjectOrder('boyfriendGroup')+1)
   			setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup')+2)

			doTweenX('charles','dad', getProperty('dad.x')-1200, 1.5 / getProperty('playbackRate'),  'backInOut')


			

		elseif  amongus == 4 then 

			doTweenX('henry','gf', getProperty('gf.x')+1110, 1.5 / getProperty('playbackRate'),  'backInOut')


		elseif  amongus == 5 then
			balls = 0

		elseif  amongus == 6 then 
			balls = 1
			doTweenX('tadanowalk', 'boyfriend', -2300, 10 / getProperty('playbackRate'), 'smoothstepinout')
			doTweenY('tadanowalksup', 'boyfriend', 130, 0.3 / getProperty('playbackRate'), 'cubeIn')


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

	if balls == 1 then
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


