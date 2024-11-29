package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import openfl.Lib;

import backend.AppData;


class PirateState extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		var guh:String = "\n
		This is pirate version\nYou are banned from entering the game\nplease use the legitimate version\n\n啊哦\n当你看到这个界面的的时候\n请确认你没有对本游戏安装包动过手脚\n否则大喵不会让你进入游戏\n明明不用改包名就能玩的，你为何还要干这个???\n
        ";
		if (AppData.getAppName() != Application.current.meta.get('file')) guh += "还有，我让你改软件名了吗？";
		guh += "\n（这串中文是大喵写给你的）";
		warnText = new FlxText(0, 0, FlxG.width, guh, 32);
		warnText.setFormat(Paths.font("cnfont.ttf"), 32, FlxColor.RED, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
	}

	override function update(elapsed:Float)
	{		
		if (controls.ACCEPT) CoolUtil.browserLoad('https://github.com/beihu235/FNF-NovaFlare-Engine/releases');
		
		super.update(elapsed);
	}
}
