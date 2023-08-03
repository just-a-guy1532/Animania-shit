import('grafex.sprites.background.BGSprite');
import('flixel.math.FlxMath');

var upperBoppers:FlxSprite;
/*
var bottomBopper1:FlxSprite;
var bottomBopper2:FlxSprite;
var bottomBopper3:FlxSprite;
var bottomBopper4:FlxSprite;
var bottomBopper5:FlxSprite;
var bottomBopper6:FlxSprite;
*/

var santa:FlxSprite;
var car:BGSprite;
var snowYeah:FlxSprite;
function onCreate() {

    this.classicHealthBar = true;

		                  var bg:FlxSprite = new FlxSprite(-1100, -700).loadGraphic(Paths.image('mall_back'));
		                  bg.antialiasing = true;
		                  bg.scrollFactor.set(0.1, 0.1);
		                  bg.active = false;
		                  bg.scale.set(1, 1);
		                  bg.updateHitbox();
		                  add(bg);

		                  var window:FlxSprite = new FlxSprite(-850, -1070).loadGraphic(Paths.image('TheWindow'));
		                  window.antialiasing = true;
		                  window.scrollFactor.set(0.2, 0.2);
		                  window.active = false;
		                  window.scale.set(1, 1);
		                  window.updateHitbox();
		                  add(window);

                                  if(PlayState.SONG.song.toLowerCase() != 'eggnog') {
		                      upperBoppers = new FlxSprite(-675, -290);
		                      upperBoppers.frames = Paths.getSparrowAtlas('cocnew/boppers');
                                  } else {
              		              upperBoppers = new FlxSprite(-815, -290);
		                      upperBoppers.frames = Paths.getSparrowAtlas('eggnog/People_mall');
                                  }
		                  upperBoppers.animation.addByPrefix('bop', "BG DUMBS", 24, false);
		                  upperBoppers.antialiasing = true;
		                  upperBoppers.scrollFactor.set(0.31, 0.31);
		                  upperBoppers.scale.set(1, 1);
		                  upperBoppers.updateHitbox();
		                  add(upperBoppers);

		                  var bgEscalator:FlxSprite = new FlxSprite(-750, -160).loadGraphic(Paths.image('MALL_BG_ESCALATORSSESES'));
		                  bgEscalator.antialiasing = true;
		                  bgEscalator.scrollFactor.set(0.3, 0.3);
		                  bgEscalator.active = false;
		                  bgEscalator.scale.set(1, 1);
		                  bgEscalator.updateHitbox();
		                  add(bgEscalator);
                              if(!ClientPrefs.lowQuality) {
                                  if(PlayState.SONG.song.toLowerCase() != 'eggnog') {
						bottomBopper1=BottomFuckers(-480, 480, 'Tnakgays', 'bop', 'Gays', 0.3, 0.6);
						bottomBopper2=BottomFuckers(1650, 440, 'XD', 'bop', 'juz', 0.4, 0.4);
						bottomBopper3=BottomFuckers(-620, 400, 'Leaked', 'bop', 'leaked guy', 0.5, 0.6);
                                  } else {
						bottomBopper2=BottomFuckers(1550, 440, 'XD', 'bop', 'juz', 0.4, 0.4);
                                                car = new BGSprite('eggnog/sportsmantruck', null, -750, 0, 0.3, 0.3, ['sportsman truck'], true, 48);
                                                car.x -= 500;
                                                add(car);
                                  }
                              }

	                     	var fgSnow:FlxSprite = new FlxSprite(-900, 200).loadGraphic(Paths.image('Snow'));
		                  fgSnow.active = false;
		                  fgSnow.antialiasing = true;
	                          fgSnow.scale.set(1.2, 1.2);
		                  add(fgSnow);

		                  var tree:FlxSprite = new FlxSprite(330, -250).loadGraphic(Paths.image('TREEXDSXD'));
		                  tree.antialiasing = true;
		                  tree.scrollFactor.set(0.95, 0.95);
		                  add(tree);

                              if(!ClientPrefs.lowQuality) {
                                  if(PlayState.SONG.song.toLowerCase() != 'eggnog') {
						bottomBopper4=BottomFuckers(-790, 400, 'Cass', 'bop', 'Cass', 1, 1);
						bottomBopper5=BottomFuckers(1420, 360, 'zone', 'bop', 'zona', 1, 1);
						bottomBopper6=BottomFuckers(120, -190, 'SmoothCC', 'bop', 'castle crashers', 1, 1);
                                  } else {
						bottomBopper4=BottomFuckers(-1130, 400, 'eggnog/bottomBoppersLeft', 'bop', 'bottomBoppersLeft', 1, 1);
						bottomBopper5=BottomFuckers(960, 320, 'eggnog/bottomBopperRight', 'bop', 'bottomBoppersRight', 1, 1);
						bottomBopper6=BottomFuckers(320, 600, 'eggnog/crushersFalls', 'bop', 'crushers falls(eggnog)', 1, 1);
                                  }
                              }
						var snowman:FlxSprite = new FlxSprite(1460, 940).loadGraphic(Paths.image('Snowdick'));
						snowman.antialiasing = true;
						snowman.scrollFactor.set(1.1, 1.1);
						snowman.active = false;
						snowman.scale.set(1, 1);
						snowman.updateHitbox();
						add(snowman);

                              if(!ClientPrefs.lowQuality) {
					snowYeah = new FlxSprite(-950, -470);
					snowYeah.frames = Paths.getSparrowAtlas('snowfallin_bg');
					snowYeah.animation.addByPrefix('y', 'snowfallin', 24, true);
					snowYeah.animation.play('y', false);
					snowYeah.antialiasing = true;
					snowYeah.scrollFactor.set(1.15, 1.15);
					snowYeah.scale.set(2.4, 2.4);
					snowYeah.updateHitbox();
                              }


		                  santa = new FlxSprite(-820, 840);
		                  santa.frames = Paths.getSparrowAtlas('santa');
		                  santa.animation.addByPrefix('bop', 'santa', 22, false);
		                  santa.antialiasing = true;
	                          santa.scrollFactor.set(1.5, 1.4);
	                          santa.scale.set(0.9, 0.9);
		                  santa.updateHitbox();

}

	function BottomFuckers(x:Float, y:Float, atlas:String, prefix:String, frame:Int, scrollX:Float, scrollY:Float):FlxSprite{
		var bottomBoppers:Array<FlxSprite> = [];
		var bottomBopper:FlxSprite=new FlxSprite(x, y);
		bottomBopper.frames=Paths.getSparrowAtlas(atlas);
		bottomBopper.animation.addByPrefix(prefix, frame, 24, false);
		bottomBopper.antialiasing=true;
		bottomBopper.scrollFactor.set(scrollX, scrollY);
		bottomBopper.scale.set(1, 1);
		bottomBopper.updateHitbox();
		add(bottomBopper);
		return bottomBopper;
	}


					
function onCreatePost() {

this.add(santa);
   
if(!ClientPrefs.lowQuality) this.add(snowYeah);

this.variables.set('santa', santa);

if(!ClientPrefs.lowQuality) this.variables.set('snowYeah', snowYeah);



Paths.image('freestyletime');

Paths.image('deathAnim/X-masBFdeathList1');
//Paths.image('deathAnim/X-masBFdeathList2');
//Paths.image('deathAnim/X-masBFdeathList3');

//amtakeshit
this.ratingsSubPath = 'amtakeshit/';
this.comboPath = '';




}

function onBeatHit(beat) {

upperBoppers.animation.play('bop', true);
if(beat % 2) santa.animation.play('bop', true);

if(!ClientPrefs.lowQuality) {
    if(PlayState.SONG.song.toLowerCase() != 'eggnog') {
        bottomBopper1.animation.play('bop', true);
        bottomBopper3.animation.play('bop', true);
    }
    bottomBopper2.animation.play('bop', true);
    bottomBopper4.animation.play('bop', true);
    bottomBopper5.animation.play('bop', true);
    bottomBopper6.animation.play('bop', false);

    if(beat == 72 && PlayState.SONG.song.toLowerCase() == 'eggnog') FlxTween.tween(car, {x: -750}, 2, {ease: FlxEase.circOut, startDelay: 0.1});

}

}

function onCountdownStarted() {

this.camZooming = false;
this.camZoomingMult = 1.4;

}

function onCountdownTick(tick) {

        upperBoppers.animation.play('bop', true);
        if(tick % 2) santa.animation.play('bop', true);

if(!ClientPrefs.lowQuality) {
    if(PlayState.SONG.song.toLowerCase() != 'eggnog') {
        bottomBopper1.animation.play('bop', true);
        bottomBopper3.animation.play('bop', true);
    }
    bottomBopper2.animation.play('bop', true);
    bottomBopper4.animation.play('bop', true);
    bottomBopper5.animation.play('bop', true);
    bottomBopper6.animation.play('bop', false);
}

  switch(tick)
  {
    default: addCamZoom(0.01, 0.01);
    case 4: this.camZooming = true;
            addCamZoom(0.2, 0.4);
    }
}

function onIconsBeat() {
  this.iconP1.setGraphicSize(Std.int(this.iconP1.width + 30));
  this.iconP2.setGraphicSize(Std.int(this.iconP1.width + 30));
}


function onUpdate() {
  this.iconP2.setGraphicSize(Std.int(FlxMath.lerp(150, this.iconP2.width, 1)));
  this.iconP1.setGraphicSize(Std.int(FlxMath.lerp(150, this.iconP2.width, 1)));
}


function onUpdatePost() {
  this.iconP2.origin.x = 80;
  this.iconP2.origin.y = 0;
  this.iconP1.origin.x = 50;
  this.iconP1.origin.y = 0;
}

function addCamZoom(game, hud) {
	this.camGame.zoom += game;
	this.camHUD.zoom += hud;
}

