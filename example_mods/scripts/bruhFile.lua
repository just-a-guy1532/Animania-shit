function onCreatePost()
    setTextString('botplayTxt', "");
    setProperty('botplayTxt.visible', false)

if getProperty('cpuControlled') == true then
runHaxeCode([[
game.grpNoteSplashes.visible = false;
game.strumLineNotes.visible = false;
for(i in game.unspawnNotes){
	i.visible = false;
}
]])

end
end