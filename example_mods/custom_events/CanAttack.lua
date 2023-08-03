function onCreate()
    --variables

	Attacking = false;
   canAttack = false;
   hpGain = 0;

	precacheSound('throw');
  
end

function onEvent(name, value1, value2)
   
   if name == "CanAttack" then

   canAttack = true
   
   end

   if canAttack == true then

      debugPrint('you can attack')

end

function onUpdate()

   

   if keyJustPressed('shift') and canAttack == true then
   
   Attacking = true;

   debugPrint('ATTACK ATTACK ATTACK ATTACK ATTACK ATTACK ATTACK ATTACK  ')
   characterPlayAnim('boyfriend', 'pre-attack', true);
   setProperty('boyfriend.specialAnim', true);
   setProperty('dad.specialAnim', true);

   elseif keyPressed('shift') and Attacking and canAttack == true then
    
      characterPlayAnim('dad', 'preDodge', true);
      setProperty('boyfriend.specialAnim', true);
      setProperty('dad.specialAnim', true);

      if hpGain <= 0.6 then
         hpGain = hpGain + 0.01
      end
   
   debugPrint('HP WILL HEAL: ', hpGain);
       

   else 

      if keyReleased('shift') and Attacking and canAttack == true then

      cameraShake('camGame', 0.01, 0.2)
      playSound('throw', 2);
      characterPlayAnim('boyfriend', 'attack', true);
      characterPlayAnim('dad', 'Dodge', true);
      setProperty('boyfriend.specialAnim', true);
      setProperty('dad.specialAnim', true);
      setProperty('health', getProperty('health') + hpGain);
      canAttack = false
      hpGain = 0
      debugPrint('canAttack? - ', canAttack)
      
   end

end
end
end