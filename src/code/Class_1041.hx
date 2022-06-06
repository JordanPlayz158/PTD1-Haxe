package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;

class Class_1041 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_276:Bool = false;

    @:allow(code) var var_703:Class_6;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        SoundMixer.stopAll();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.method_275();
        this.var_3.gfx_BG.visible = false;
        if (this.var_3.currentProfile.levelUnlocked < 36) {
            gfx.butt_skip.visible = false;
        }
    }

    function method_182() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Victory_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    function method_275() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new CityMusic();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
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
                    if (this.method_216()) {
                        gfx.play();
                    }
                    else {
                        gfx.gotoAndPlay("end_trade");
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
                this.method_234();
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

    @:allow(code) function method_216():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        while (_loc2_ < this.var_3.currentProfile.partyList.length) {
            _loc1_ = this.var_3.currentProfile.partyList[_loc2_];
            if (_loc1_) {
                if (_loc1_.num == Class_13.const_63) {
                    this.var_703 = _loc1_;
                    return true;
                }
            }
            _loc2_++;
        }
        return false;
    }

    function method_234() {
        var _loc1_ = this.var_703;
        _loc1_.num = Class_13.const_181;
        _loc1_.level = 1;
        _loc1_.var_40 = 0;
        _loc1_.move1 = Class_9.var_323;
        _loc1_.move2 = 0;
        _loc1_.move3 = 0;
        _loc1_.move4 = 0;
        _loc1_.moveSelected = 1;
        _loc1_.var_13 = 1;
        _loc1_.var_301 = "Lickitung";
        _loc1_.var_179 = _loc1_.level;
        _loc1_.var_175 = _loc1_.num;
        _loc1_.var_469 = 0;
        _loc1_.var_343 = 0;
        _loc1_.var_19 = null;
        _loc1_.saveInfo.var_528 = true;
        _loc1_.val.reset(_loc1_);
        Class_13.method_2(_loc1_);
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Level_36_Win();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        if (this.var_3.currentProfile.badges < 8) {
            this.var_3.currentProfile.badges = 8;
        }
        this.var_3.end_Level();
    }
}

