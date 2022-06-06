package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_42;
import package_1.Class_7;

class Class_925 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true, param3);
        if (param1) {
            method_10(new Class_1104(this, this.method_334()), 4);
        }
    }

    function method_334():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_30;
        Class_13.method_2(_loc1_);
        _loc1_.level = 62;
        _loc1_.move1 = Class_9.var_93;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_Num():Int {
        return 23;
    }

    override public function Poke_Bonus_Level():Int {
        return 57;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_23();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1022(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_42(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_23());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1023(this);
    }
}

