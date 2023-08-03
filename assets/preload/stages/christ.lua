--JesusLight

stagePath = 'Stages/AmTake/christ/'

function onCreate()

    makeLuaSprite('bgMall', 'Stages/AmTake/christ/mall_back', -1100, -700)
    setScrollFactor('bgMall', 0.1, 0.1)
    addLuaSprite('bgMall', true)

end

function onCreatePost()

    makeLuaSprite('jesus', 'JesusLight', 0, 0)
    setObjectCamera('jesus', 'hud')
    setObjectOrder('jesus', '1')
    setProperty('jesus.y', -200)
    scaleObject('jesus', 0.39, 0.39)
    screenCenter('jesus', 'x')
    setBlendMode('jesus', 'multiply')
    addLuaSprite('jesus')


end

function onCreate()
    makeLuaSprite('cinemadeez1')
    makeLuaSprite('cinemadeez2')
    makeGraphic('cinemadeez1',  1500, 40, '000000')
    makeGraphic('cinemadeez2', 1500, 40, '000000')
    addLuaSprite('cinemadeez1', true)
    addLuaSprite('cinemadeez2', true)
    setObjectCamera('cinemadeez1', 'hud')
    setObjectCamera('cinemadeez2', 'hud')
    setProperty('cinemadeez1.y', 720)
    setProperty('cinemadeez2.y', -40)
    setObjectOrder('cinemadeez1', 1)
    setObjectOrder('cinemadeez2', 0)

end
function onSongStart()
    doTweenY('cinemadeez1Y', 'cinemadeez1', 690, 2.5, 'circOut')
    doTweenY('cinemadeez2Y', 'cinemadeez2', -10, 2.5, 'circOut')
end

function onBeatHit()

    if songName == 'Eggnog' and curBeat == 184 then
        doTweenY('cinemadeez1Y', 'cinemadeez1', 720, 1.5, 'circOut')
        doTweenY('cinemadeez2Y', 'cinemadeez2', -40, 1.5, 'circOut')
    elseif songName == 'Eggnog' and curBeat == 216 then
        doTweenY('cinemadeez1Y', 'cinemadeez1', 690, 2.5, 'circOut')
        doTweenY('cinemadeez2Y', 'cinemadeez2', -10, 2.5, 'circOut')
    end

    if songName == 'Cocoa' and curBeat == 128 then
        doTweenY('cinemadeez1Y', 'cinemadeez1', 720, 1.5, 'circOut')
        doTweenY('cinemadeez2Y', 'cinemadeez2', -40, 1.5, 'circOut')
    elseif songName == 'Cocoa' and curBeat == 160 then
        doTweenY('cinemadeez1Y', 'cinemadeez1', 690, 2.5, 'circOut')
        doTweenY('cinemadeez2Y', 'cinemadeez2', -10, 2.5, 'circOut')
    end
end