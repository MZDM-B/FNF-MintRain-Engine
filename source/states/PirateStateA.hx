package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import openfl.Lib;

import backend.AppData;
import states.TitleState;


class PirateStateA extends MusicBeatState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		var guh:String = "\n嗯...\n看起来这个游戏的名被人给改了\n按回车键可以忽略这条消息\n不过每次打开游戏你都会看到这串文字的哈www\n大喵建议你去下官方（未修改游戏名）的版本哦\n
		";
		//if (AppData.getAppName() != Application.current.meta.get('file')) guh += "还有，我让你改软件名了吗？";
		guh += "（这串中文是 萌之大喵 写给你的）";
		warnText = new FlxText(0, 0, FlxG.width, guh, 32);
		warnText.setFormat(Paths.font("cnfont.ttf"), 32, 0x00bfff, CENTER);		warnText.screenCenter(Y);
		add(warnText);
	}

	override function update(elapsed:Float)
	{		
		if (controls.ACCEPT) {
			FlxG.switchState(new TitleState());
			appApass = true;
		}

		//if (controls.ACCEPT) CoolUtil.browserLoad('https://github.com/beihu235/FNF-NovaFlare-Engine/releases');
		
		super.update(elapsed);
	}
}
