function goodNoteHit(id, dir, nt, sus)
	if curStep >= 511 and curStep < 653 then
		createShadow('bf')
	end
end

local shadowTag = 'shadow'
local shadowCount = 0
local shadowAlpha = 0.8
function createShadow(char, strong)
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
	
	local wackyCtable = {'31B0D1', '31B0D1', '31B0D1', '2FCECB', '2AA1CC'}
	
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
		doTweenY('YAx' .. tag, tag, props.y - 500, 1.5, 'quadOut')
		doTweenAlpha('Ang' .. tag, tag, 0, 1, 'quadIn')
		doTweenColor('COL' .. tag, tag, 'FFFFFF', 1.3, 'linear')
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
