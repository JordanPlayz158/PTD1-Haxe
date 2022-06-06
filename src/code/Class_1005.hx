package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.Tween;
import fl.transitions.TweenEvent;
import fl.transitions.easing.Regular;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.SoundMixer;

class Class_1005 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_916;

    var var_602:Tween;

    var var_684:Tween;

    var var_677:Bool = true;

    public function new(param1:Class_875) {
        this.var_3 = Std.downcast(param1, Class_916);
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        if (this.var_3.currentProfile.levelUnlocked < 3) {
            this.var_677 = false;
        }
        SoundMixer.stopAll();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_602 = new Tween(this.var_3.gfx_BG, "y", Regular.easeOut, this.var_3.gfx_BG.y, 0, 1, true);
        this.var_684 = new Tween(this.var_3.gfx_BG, "x", Regular.easeOut, this.var_3.gfx_BG.x, 0, 1, true);
        this.var_684.start();
        this.var_602.addEventListener(TweenEvent.MOTION_FINISH, this.method_129);
        this.var_602.start();
    }

    function method_129(param1:TweenEvent) {
        this.var_602.removeEventListener(TweenEvent.MOTION_FINISH, this.method_129);
        this.var_49 = new Movie_Scene_Win_3();
        this.var_3.gfx_BG.addChild(this.var_49);
        if (!this.var_677) {
            this.var_49.butt_skip.visible = false;
        }
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (this.var_49 == null) {
            return false;
        }
        if (this.var_49.currentLabel == "pidgey") {
            method_5("016");
        }
        else if (this.var_49.currentLabel == "rattata") {
            method_5("019");
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
            if (this.var_49 != null && this.var_49.currentLabel == "start") {
                if (!this.var_3.var_665) {
                    this.var_49.gotoAndPlay("rattata");
                    return true;
                }
                if (this.var_3.var_644 != null) {
                    this.var_49.gotoAndPlay("mrmime_trade");
                    return true;
                }
                this.var_3.currentProfile.haveFlash = 1;
            }
            else if (this.var_49 != null && this.var_49.currentLabel == "end_oak") {
                this.var_49.gotoAndPlay("rattata");
                return true;
            }
            this.var_49.play();
            return true;
        }
        if (_loc2_.name == "butt_yes") {
            this.method_259();
            this.var_49.play();
            return true;
        }
        if (_loc2_.name == "butt_no") {
            this.var_49.play();
            return true;
        }
        return false;
    }

    function method_259() {
        var _loc1_ = this.var_3.var_644;
        _loc1_.num = Class_13.const_121;
        _loc1_.level = 1;
        _loc1_.var_40 = 0;
        _loc1_.move1 = Class_9.var_126;
        _loc1_.move2 = Class_9.var_272;
        _loc1_.move3 = 0;
        _loc1_.move4 = 0;
        _loc1_.moveSelected = 1;
        _loc1_.var_13 = 2;
        _loc1_.var_301 = "Marcel";
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_469 = 0;
        _loc1_.var_343 = 0;
        _loc1_.var_19 = "ekk";
        _loc1_.val.reset(_loc1_);
        _loc1_.saveInfo.var_528 = true;
        Class_13.method_2(_loc1_);
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return null;
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.end_Level();
    }
}

