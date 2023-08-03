function goodNoteHit(id, dir, nt, sus)
	if (curStep >= 736 and curStep < 863) or (curStep >= 961 and curStep < 1168) then
		createShadow('bf', curStep >= 736 and curStep < 863, {'31B0D1', '31B0D1', '31B0D1', '2FCECB', '2AA1CC'})
	end
end

function opponentNoteHit(id, dir, nt, sus)
	if (curStep >= 960 and curStep < 1153) then
		createShadow('dad', curStep >= 960 and curStep < 1088, {'C3279C', 'C3279C', 'C3279C', 'C3279C', 'C3279C'})
	end
end


local shadowTag = 'shadow'
local shadowCount = 0
local shadowAlpha = 1
function createShadow(char, strong, wackyCtable)
	char = getCharacter(char)
	
	if (shadowCount > 999) then shadowCount = 0 end
	local tag = shadowTag .. char .. shadowCount
	
	local props = getProperties(char, {
		image = 'imageFile',
		frame = 'animation.frameName',
		x = 'x',
		y = 'y',
		scaleX = 'scale.x',
		scaleY = 'scale.y',
		offsetX = 'offset.x',
		offsetY = 'offset.y',
		flipX = 'flipX'
	})
	
	makeAnimatedLuaSprite(tag, props.image, props.x, props.y)
	addAnimationByPrefix(tag, 'stuff', props.frame, 0, false)
	scaleObject(tag, props.scaleX, props.scaleY, false)
	setProperty(tag .. '.flipX', props.flipX)
	offsetObject(tag, props.offsetX, props.offsetY)
	setProperty(tag .. '.alpha', shadowAlpha)
	setBlendMode(tag, 'add')
	setProperty(tag .. '.color', getColorFromHex(wackyCtable[math.random(1, 5)]))
	
	addLuaSprite(tag, false)
	setObjectOrder(tag, getObjectOrder(char .. 'Group') - 1)
	
	if strong then
		doTweenY('YAx' .. tag, tag, props.y - 310, 0.9, 'quadIn')
		doTweenAlpha('Ang' .. tag, tag, 0, 0.9, 'quadOut')
	else
		doTweenY('YAx' .. tag, tag, props.y - 300, 0.85, 'quadIn')
		doTweenAlpha('Ang' .. tag, tag, 0, 0.8, 'quadOut')
	end
	
	shadowCount = shadowCount + 1
end

function offsetObject(obj, x, y)
	setProperty(obj .. '.offset.x', x)
	setProperty(obj .. '.offset.y', y)
end

function getProperties(par, props)
	local t = {}
	for i, v in pairs(props) do
		local ind = type(i) == 'string' and i or v
		t[ind] = getProperty(par .. '.' .. v)
	end
	return t
end

function getCharacter(char)
	if (type(char) ~= 'string') then return 'dad' end; char = char:lower()
	if (char:sub(1, 2) == 'bf' or char:sub(1, 3) == 'boy') then return 'boyfriend'
	elseif (char:sub(1, 2) == 'gf' or char:sub(1, 4) == 'girl') then return 'gf' end
	return 'dad'
end


function onTweenCompleted(t)
	if (t:sub(4, 3 + #shadowTag) == shadowTag) then
		local spr = t:sub(4, #t)
		removeLuaSprite(spr, true)
	end
end

function onEvent(name, value1, value2, val3)
    if name == "transition" and value1 == "Eggnog" then

        makeLuaSprite('blackScreen')
        makeGraphic('blackScreen',  4000, 4000, '000000')
        addLuaSprite('blackScreen', true)
        setProperty('blackScreen.x', -1000)
        setProperty('blackScreen.y', -1000)
        setObjectOrder('blackScreen', 299)
        setScrollFactor('blackScreen',  0, 0)  
        playSound('Lights_Shut_off', 1)

        setProperty('santa.visible', false)
        setProperty('snowYeah.visible', false)

        makeAnimatedLuaSprite('eyes', 'characters/amtake/week5/dadRedEyesLight', 66, 560);
        luaSpriteAddAnimationByPrefix('eyes', 'idle', 'daddy lights off red eyes', 24, true);
	luaSpritePlayAnimation('eyes', 'idle', true);
	setObjectCamera('eyes', 'game');
	scaleLuaSprite('eyes', 1, 1); 
        setObjectOrder('eyes', 300)
        addLuaSprite('eyes', true); 

        doTweenAlpha('redEyesFade', 'eyes', 0, 2.5, 'linear')
        runTimer('tbctextfadein', 2.5)

    end
end

local poopVal = true

function onEndSong()
        if poopVal then
                cameraSetTarget('dad')
                runTimer('buttonA', 0.8)
		return Function_Stop;
	else
            return Function_Continue;
        end

end

function onCreate()
    precacheSound('Lights_Shut_off')
    precacheSound('dadpressass2')
end

function onUpdate(elapsed)
    	if getProperty('dad.animation.curAnim.curFrame') == 33 and poopVal == true and getProperty('dad.animation.curAnim.name') == 'button' then
            triggerEvent('transition', 'Eggnog', 'chox', 'chox')
            runTimer('fuckinend', 8.5)
            poopVal = false;
	end
end

function onTimerCompleted(tag, l, lf)
    if tag == 'fuckinend' then
        endSong();
    elseif tag == 'tbctextfadein' then
        makeAnimatedLuaSprite('tbc', 'tbc-text', 0, 0);
        luaSpriteAddAnimationByPrefix('tbc', 'idle', 'tbc-text', 24, true);
	luaSpritePlayAnimation('tbc', 'idle', true);
	setObjectCamera('tbc', 'hud');
	scaleLuaSprite('tbc', 1, 1); 
        screenCenter('tbc');
        setProperty('tbc.alpha', 0)
        setObjectOrder('tbc', 301)
        addLuaSprite('tbc', true); 
        doTweenAlpha('tbcunFade', 'tbc', 1, 0.75, 'linear')
        runTimer('tbctextfadeout', 3)
    elseif tag == 'tbctextfadeout' then
        doTweenAlpha('tbcFade', 'tbc', 0, 0.75, 'linear')
    elseif tag == 'buttonA' then
        runHaxeCode([[
            game.healthBarGroup.forEach(function(element:Dynamic) {
                FlxTween.tween(element, {alpha: 0}, 0.45, {ease: FlxEase.linear});
	    });
            game.iconGroup.forEach(function(element:Dynamic) {
                 FlxTween.tween(element, {alpha: 0}, 0.45, {ease: FlxEase.linear});
	    });
        ]])
        doTweenAlpha('scoreFade', 'scoreTxt', 0, 0.4, 'linear')
        noteTweenAlpha('0', 0, 0, 0.3, 'linear')
        noteTweenAlpha('1', 1, 0, 0.42, 'linear')
        noteTweenAlpha('2', 2, 0, 0.54, 'linear')
        noteTweenAlpha('3', 3, 0, 0.66, 'linear')
        noteTweenAlpha('4', 4, 0, 0.78, 'linear')
        noteTweenAlpha('5', 5, 0, 0.9, 'linear')
        noteTweenAlpha('6', 6, 0, 1.02, 'linear')
        noteTweenAlpha('7', 7, 0, 1.14, 'linear')
        setProperty('defaultCamZoom', 0.57)
        setProperty('camZooming', true)
        triggerEvent('Change Character', 'dad', 'amTakeParents-christmasEggnog', '')
        triggerEvent('Play Animation', 'button', 'dad','j')
        playSound('dadpressass2', 1)
    end
end



