package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.PixelDissolve;
import fl.transitions.Transition;
import fl.transitions.TransitionManager;
import fl.transitions.easing.None;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1066 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_628:Bool = false;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        SoundMixer.stopAll();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_3.gfx_BG.x = 0;
        this.var_3.gfx_BG.y = 0;
        this.var_49 = new Movie_Scene_Win_2();
        this.var_3.gfx_BG.addChild(this.var_49);
        TransitionManager.start(this.var_49, {
            "type":PixelDissolve,
            "direction":Transition.IN,
            "duration":1,
            "easing":None.easeNone,
            "xSections":30,
            "ySections":30
        });
        if (this.var_3.currentProfile.levelUnlocked < 2) {
            this.var_49.butt_skip.visible = false;
        }
    }

    function method_314() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new SuperEffectiveSound();
        var _loc2_ = _loc1_.play(0, 1);
        var _loc3_ = new SoundTransform(Class_1.var_194);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (this.var_49.currentLabel == "pidgey") {
            method_5("016");
        }
        else if (this.var_49.currentLabel == "drowsee" || this.var_49.currentLabel == "drowsee1") {
            method_5("096");
        }
        else if (this.var_49.currentLabel == "super") {
            this.method_314();
        }
        return false;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (param1.target == null || !Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_.name == "butt_end" || _loc2_.name == "butt_skip") {
            this.remove_Me();
            return true;
        }
        if (_loc2_.name == "butt_next") {
            this.var_49.play();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return null;
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.end_Level();
    }
}

