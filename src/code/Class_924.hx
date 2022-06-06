package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_41;
import package_1.Class_7;

class Class_924 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_334:Bool = false;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
        if (currentProfile.levelUnlocked < this.get_Level_Num()) {
            this.var_334 = true;
        }
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true, param3);
        if (param1) {
            method_10(new Class_1104(this, this.method_219()), 7);
            method_10(new Class_1104(this, this.method_297()), 9);
            method_10(new Class_1104(this, this.method_351()), 11);
        }
    }

    function method_219():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_29;
        Class_13.method_2(_loc1_);
        _loc1_.level = 65;
        _loc1_.move1 = Class_9.var_53;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_297():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_54;
        Class_13.method_2(_loc1_);
        _loc1_.level = 65;
        _loc1_.move1 = Class_9.var_117;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_351():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_99;
        Class_13.method_2(_loc1_);
        _loc1_.level = 65;
        _loc1_.move1 = Class_9.var_182;
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
        return 27;
    }

    override public function Poke_Bonus_Level():Int {
        return 70;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_27();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1020(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_41(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_25());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1021(this);
    }
}

