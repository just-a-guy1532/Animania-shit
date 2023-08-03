function onUpdate(elapsed)
	setProperty('healthBar.flipX', true)
	setProperty('healthBarWN.flipX', true)
	setProperty('healthStrips.flipX', true)
end

function onUpdatePost()

end

function onCreatePost()
	setProperty('iconsZoomingFreq', 2)
	setProperty('iconsZoomingDecay', 0.65)
	setProperty('camZoomingFreq', 8)
	setProperty('showRating', false)
	setProperty('scoreTxt.visible', false)
	--setProperty('camHUD.visible', false)
end


function onBeatHit()

	setProperty('iconP1.flipX', true)
	setProperty('iconP2.flipX', true)
setProperty('iconP1.alligment', 'left')
setProperty('iconP2.alligment', 'left')

end