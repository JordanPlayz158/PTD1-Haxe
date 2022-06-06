package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_28;
import package_1.Class_7;

class Class_911 extends Class_875 {


    @:allow(code) var var_660:Class_6;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Num():Int {
        return 14;
    }

    override public function Poke_Bonus_Level():Int {
        return 30;
    }

    override function entered_Battle(param1:Class_1104) {
        if (param1.myProfile.num == Class_13.const_47) {
            this.var_660 = param1.myProfile;
        }
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true, param3);
        if (param1) {
            method_10(new Class_1104(this, this.method_22(Class_13.const_82)), 2);
            method_10(new Class_1104(this, this.method_22(Class_13.const_36)), 1);
        }
    }

    function method_22(param1:Int):Class_6 {
        var _loc2_ = new Class_6();
        if (param1 == Class_13.const_82) {
            _loc2_.num = Class_13.const_82;
            Class_13.method_2(_loc2_);
            _loc2_.level = 30;
            _loc2_.move1 = Class_9.var_207;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_36) {
            _loc2_.num = Class_13.const_36;
            Class_13.method_2(_loc2_);
            _loc2_.level = 30;
            _loc2_.move1 = Class_9.var_195;
            _loc2_.var_13 = 1;
        }
        _loc2_.var_40 = 0;
        _loc2_.var_35 = -1;
        _loc2_.moveSelected = 1;
        return _loc2_;
    }

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_14();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_996(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 5;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_28(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_14());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_995(this);
    }
}

