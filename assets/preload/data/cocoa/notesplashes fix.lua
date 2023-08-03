function onUpdate()

  for i = 0, getProperty('grpNoteSplashes.length') do
    setPropertyFromGroup('grpNoteSplashes', i, 'scale.x', 0.8)
    setPropertyFromGroup('grpNoteSplashes', i, 'scale.y', 0.8)
    setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', 15)
    setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', 15)
    setPropertyFromGroup('grpNoteSplashes', i, 'alpha', 0.6)
  end
end