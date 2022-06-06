package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import fl.transitions.Tween;
import fl.transitions.easing.Regular;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1006 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    var var_602:Tween;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        if (this.var_3 != null) {
            this.var_3.gfx_UI.visible = false;
        }
        if (this.var_3.currentProfile.var_123 < 3 && this.var_3.currentProfile.levelUnlocked < 3) {
            gfx.butt_skip.visible = false;
        }
    }

    function method_231() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new CityMusic();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_283() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Route2Music();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            this.method_231();
        }
        else if (false) {
            this.method_283();
        }
        else if (false) {
            method_5("016");
        }
        else if (false) {
            method_5("019");
        }
        else if (false) {
            this.var_602 = new Tween(gfx, "y", Regular.easeOut, gfx.y, 600, 7, true);
            this.var_602.start();
        }
        else if (false) {
            this.var_602 = new Tween(gfx, "x", Regular.easeOut, gfx.x, -533, 5, true);
            this.var_602.start();
        }
        else if (false) {
            SoundMixer.stopAll();
            gfx.y = 0;
            gfx.x = 0;
        }
        return false;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (_loc2_.name == "butt_next") {
                gfx.play();
                return true;
            }
            if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Intro_3();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.gfx_UI.visible = true;
        this.var_3.start_Level();
    }
}

