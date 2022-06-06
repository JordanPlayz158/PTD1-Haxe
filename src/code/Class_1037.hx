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

class Class_1037 extends Class_877 {


    @:allow(code) var var_49:GfxMovieClip;

    @:allow(code) var var_3:Class_932;

    @:allow(code) var var_276:Bool = false;

    public function new(param1:Class_932) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        SoundMixer.stopAll();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.method_182();
        if (!this.var_3.var_334) {
            if (this.var_3.var_556) {
                gfx.actual.gotoAndStop("aero");
                this.method_106();
                return;
            }
            gfx.actual.gotoAndStop("end");
        }
    }

    function method_182() {
        SoundMixer.stopAll();
        var _loc1_:Sound = new Victory_Song();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (param1.target == null || !Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_.name == "butt_next") {
            gfx.actual.play();
        }
        else if (_loc2_.name == "butt_kabuto") {
            if (!this.var_276) {
                this.var_276 = true;
                this.method_111();
            }
            gfx.actual.play();
        }
        else if (_loc2_.name == "butt_omanyte") {
            if (!this.var_276) {
                this.var_276 = true;
                this.method_113();
            }
            gfx.actual.play();
        }
        else if (_loc2_.name == "butt_end" || _loc2_.name == "butt_skip") {
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) function method_111() {
        var _loc2_:ASAny = null;
        var _loc1_ = this.var_3.currentProfile;
        if (_loc1_.extraInfo == null) {
            _loc1_.extraInfo = [];
        }
        _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_140;
        Class_13.method_2(_loc2_);
        _loc2_.level = 1;
        _loc2_.move1 = Class_9.var_100;
        _loc2_.var_13 = 1;
        _loc2_.moveSelected = 1;
        _loc2_.var_35 = ++_loc1_.latestID;
        _loc2_.var_40 = 0;
        _loc2_.var_179 = _loc2_.level;
        _loc2_.var_175 = _loc2_.num;
        _loc2_.val = new Class_11();
        _loc2_.saveInfo.var_212 = true;
        _loc2_.saveInfo.var_154 = 154;
        _loc2_.val.reset(_loc2_);
        if (_loc2_.name != "Kabuto") {
            return;
        }
        _loc1_.PokeList.push(_loc2_);
    }

    @:allow(code) function method_113() {
        var _loc1_ = this.var_3.currentProfile;
        if (_loc1_.extraInfo == null) {
            _loc1_.extraInfo = [];
        }
        var _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_138;
        Class_13.method_2(_loc2_);
        _loc2_.level = 1;
        _loc2_.move1 = Class_9.var_305;
        _loc2_.var_13 = 1;
        _loc2_.moveSelected = 1;
        _loc2_.var_35 = ++_loc1_.latestID;
        _loc2_.var_40 = 0;
        _loc2_.var_179 = _loc2_.level;
        _loc2_.var_175 = _loc2_.num;
        _loc2_.val = new Class_11();
        _loc2_.saveInfo.var_212 = true;
        _loc2_.saveInfo.var_154 = 154;
        _loc2_.val.reset(_loc2_);
        if (_loc2_.name != "Omanyte") {
            return;
        }
        _loc1_.PokeList.push(_loc2_);
    }

    @:allow(code) function method_106() {
        var _loc1_ = this.var_3.currentProfile;
        if (_loc1_.extraInfo == null) {
            _loc1_.extraInfo = [];
        }
        _loc1_.extraInfo.push("110");
        var _loc2_ = new Class_6();
        _loc2_.num = Class_13.const_142;
        Class_13.method_2(_loc2_);
        _loc2_.level = 1;
        _loc2_.move1 = Class_9.var_125;
        _loc2_.var_13 = 1;
        _loc2_.moveSelected = 1;
        _loc2_.var_35 = ++_loc1_.latestID;
        _loc2_.var_40 = 0;
        _loc2_.var_179 = _loc2_.level;
        _loc2_.var_175 = _loc2_.num;
        _loc2_.val = new Class_11();
        _loc2_.saveInfo.var_212 = true;
        _loc2_.saveInfo.var_154 = 154;
        _loc2_.val.reset(_loc2_);
        if (_loc2_.name != "Aerodactyl") {
            return;
        }
        _loc1_.PokeList.push(_loc2_);
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Movie_Scene_Level_32_Win();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.end_Level();
    }
}

