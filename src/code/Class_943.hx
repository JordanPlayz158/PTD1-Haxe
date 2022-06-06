package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_59;
import package_1.Class_7;

class Class_943 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_153:Bool = false;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
        this.var_153 = true;
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true, param3);
        if (param1) {
            method_10(new Class_1104(this, this.method_399()), 17);
            method_10(new Class_1104(this, this.method_267()), 18);
            method_10(new Class_1104(this, this.method_398()), 19);
        }
    }

    function method_399():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_104;
        Class_13.method_2(_loc1_);
        _loc1_.level = 40;
        _loc1_.move1 = Class_9.var_211;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_267():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_36;
        Class_13.method_2(_loc1_);
        _loc1_.level = 40;
        _loc1_.move1 = Class_9.var_228;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_398():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_183;
        Class_13.method_2(_loc1_);
        _loc1_.level = 40;
        _loc1_.move1 = Class_9.var_550;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 20;
    }

    override public function Poke_Bonus_Level():Int {
        return 43;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_20();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1058(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 10;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_59(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_20());
    }

    override function get_Win_Popup():Class_877 {
        if (this.method_265()) {
            show_Achievement_Popup(10, -1, new Class_1057(this));
            return null;
        }
        return new Class_1057(this);
    }

    override function entered_Battle(param1:Class_1104) {
        if (param1.myProfile.level > 60) {
            this.var_153 = false;
        }
    }

    public function method_265():Bool {
        var _loc1_:ASAny = null;
        if (!this.var_153) {
            return false;
        }
        var _loc2_ = 0;
        while (_loc2_ < var_168.length) {
            _loc1_ = var_168[_loc2_];
            if (_loc1_.var_265 == true) {
                return false;
            }
            _loc2_++;
        }
        return true;
    }
}

