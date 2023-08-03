function onEvent(name, val1, val2, val3) {
    if(name == 'CountDownImages') {
                var countDownImage:FlxSprite = new FlxSprite().loadGraphic(Paths.image(val1));
                countDownImage.cameras = [this.camHUD];
                countDownImage.scrollFactor.set();
                countDownImage.updateHitbox();

                if (PlayState.isPixelStage)
                    countDownImage.setGraphicSize(Std.int(countDownImage.width * game.daPixelZoom));

                countDownImage.screenCenter();
                countDownImage.antialiasing = ClientPrefs.globalAntialiasing;
                add(countDownImage);
                FlxTween.tween(countDownImage, {alpha: 0}, Conductor.crochet / 1000, {
                     ease: FlxEase.cubeInOut,
                     onComplete: function(twn:FlxTween)
                    {
                        this.remove(countDownImage, true);
                        countDownImage.destroy();
                     }
                });
    }
}