package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_65;
import package_1.Class_7;

class Class_1118 extends Class_949 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_68:Array<ASAny>;

    public function new(param1:Class_878, param2:_Obj, param3:Array<ASAny>) {
        this.var_68 = param3;
        param1.reset_Fight_List();
        super(param1, param2);
        var_161 = 80;
        update_Wave_Info(0, 0);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
    }

    override public function set_Party(param1:Class_878) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < param1.partyList.length) {
            _loc2_ = param1.partyList[_loc3_];
            if (_loc2_) {
                _loc2_.var_48 = false;
                _loc2_.var_77 = true;
                _loc2_.var_39 = false;
            }
            _loc3_++;
        }
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true);
        if (param1) {
            method_10(new Class_1104(this, this.method_22(Class_13.const_65)), 1);
            method_10(new Class_1104(this, this.method_22(Class_13.const_37)), 2);
            method_10(new Class_1104(this, this.method_22(Class_13.const_126)), 3);
        }
    }

    function method_22(param1:Int):Class_6 {
        var _loc2_ = new Class_6();
        if (param1 == Class_13.const_65) {
            _loc2_.num = Class_13.const_65;
            Class_13.method_2(_loc2_);
            _loc2_.level = 25;
            _loc2_.move1 = Class_9.var_160;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_37) {
            _loc2_.num = Class_13.const_37;
            Class_13.method_2(_loc2_);
            _loc2_.level = 25;
            _loc2_.move1 = Class_9.var_150;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_126) {
            _loc2_.num = Class_13.const_21;
            Class_13.method_2(_loc2_);
            _loc2_.level = 40;
            _loc2_.move1 = Class_9.var_143;
            _loc2_.move2 = Class_9.var_45;
            _loc2_.var_13 = 2;
        }
        _loc2_.var_40 = 0;
        _loc2_.var_35 = -1;
        _loc2_.moveSelected = 1;
        return _loc2_;
    }

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_Num():Int {
        return 17;
    }

    override function unlock_Next_Level() {
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_17_4();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1091(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_65(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_17());
    }

    override function get_Win_Popup():Class_877 {
        this.var_68[2] = true;
        var _loc2_:Class_875 = new Class_1118(currentProfile, my_Parent, this.var_68);
        end_Level(_loc2_);
        return null;
    }

    override public function get_Back_Screen():_Obj {
        var _loc1_ = this.get_Level_Num();
        if (_loc1_ <= 5) {
            return new Class_885(currentProfile, my_Parent);
        }
        if (_loc1_ <= 11) {
            return new Class_884(currentProfile, my_Parent);
        }
        if (_loc1_ <= 15) {
            return new Class_886(currentProfile, my_Parent);
        }
        if (_loc1_ <= 17) {
            return new Class_881(currentProfile, my_Parent);
        }
        return new Class_880(currentProfile, my_Parent);
    }
}

