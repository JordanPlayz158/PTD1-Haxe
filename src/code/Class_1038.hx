package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1038 extends Class_877 {


    @:allow(code) var var_3:Class_933;

    public function new(param1:Class_933) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_3.gfx_BG.visible = false;
        if (this.var_3.currentProfile.levelUnlocked < 10) {
            gfx.butt_skip.visible = false;
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (!_loc2_) {
                return false;
            }
            if (_loc2_.name == "butt_next") {
                if (false) {
                    if (this.var_3.var_640 != null && (this.var_3.currentProfile.clevel1CodeUsed.length < 2 || this.var_3.currentProfile.clevel1CodeUsed.charAt(1) != "1")) {
                        gfx.play();
                    }
                    else {
                        gfx.gotoAndPlay("after_trade");
                    }
                    return true;
                }
                gfx.play();
                return true;
            }
            if (_loc2_.name == "butt_close" || _loc2_.name == "butt_skip") {
                this.remove_Me();
                return true;
            }
            if (_loc2_.name == "butt_yes") {
                this.method_352();
                gfx.play();
                return true;
            }
            if (_loc2_.name == "butt_no") {
                gfx.play();
                return true;
            }
        }
        return false;
    }

    function method_352() {
        var _loc1_ = this.var_3.var_640;
        _loc1_.num = Class_13.const_117;
        _loc1_.level = 1;
        _loc1_.var_40 = 0;
        _loc1_.move1 = Class_9.var_164;
        _loc1_.move2 = 0;
        _loc1_.move3 = 0;
        _loc1_.move4 = 0;
        _loc1_.moveSelected = 1;
        _loc1_.var_13 = 1;
        _loc1_.var_301 = "Jynx";
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_469 = 0;
        _loc1_.var_343 = 0;
        _loc1_.var_19 = "ekm";
        _loc1_.saveInfo.var_528 = true;
        _loc1_.val.reset(_loc1_);
        Class_13.method_2(_loc1_);
    }

    function method_217() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new GymMusic();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_294() {
        var _loc1_:Sound = new RegularHitSound();
        var _loc2_ = _loc1_.play(0, 1);
        var _loc3_ = new SoundTransform(Class_1.var_194);
        _loc2_.soundTransform = _loc3_;
    }

    function method_180() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Route4Music();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_218() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Mt_Moon_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            this.method_217();
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Win_10();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        SoundMixer.stopAll();
        this.var_3.end_Level();
    }
}

