local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeLuaSprite('bg','dmbg',-343.15, -295.45)
	addLuaSprite('bg',false)
	
	makeAnimatedLuaSprite( 'stage3', 'bendy-dem/Fyre', -40.3, -400)
	addAnimationByPrefix('stage3', 'idle', 'Penis instance 1', 24, true);
	setLuaSpriteScrollFactor('stage3', 1.0, 1.0)
        setProperty("stage3.scale.x", 2.0);
        setProperty("stage3.scale.y", 2.0);
	
end
