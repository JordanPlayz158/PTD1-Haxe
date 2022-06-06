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

class Class_1119 extends Class_949 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        var_161 = 40;
        update_Wave_Info(0, 0);
    }

    override public function set_Party(param1:Class_878) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < param1.partyList.length) {
            _loc2_ = param1.partyList[_loc3_];
            if (_loc2_) {
                _loc2_.var_48 = false;
                _loc2_.var_77 = true;
            }
            _loc3_++;
        }
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, true);
        if (param1) {
            method_10(new Class_1104(this, this.method_22(Class_13.const_48)), 1);
            method_10(new Class_1104(this, this.method_22(Class_13.const_45)), 2);
        }
    }

    function method_22(param1:Int):Class_6 {
        var _loc2_ = new Class_6();
        if (param1 == Class_13.const_48) {
            _loc2_.num = Class_13.const_48;
            Class_13.method_2(_loc2_);
            _loc2_.level = 28;
            _loc2_.move1 = Class_9.var_155;
            _loc2_.var_13 = 1;
        }
        else if (param1 == Class_13.const_45) {
            _loc2_.num = Class_13.const_45;
            Class_13.method_2(_loc2_);
            _loc2_.level = 28;
            _loc2_.move1 = Class_9.var_256;
            _loc2_.var_13 = 1;
        }
        _loc2_.var_40 = 0;
        _loc2_.var_35 = -1;
        _loc2_.moveSelected = 1;
        return _loc2_;
    }

    @:allow(code) override function i_Win():Class_877 {
        currentProfile.reset_Fight_List();
        end_Level(new Class_965(currentProfile, my_Parent));
        return null;
    }

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_Num():Int {
        return 12;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_12_4();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1092(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_65(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Movie_Scene_Level_12_5_Lost());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1068(this);
    }

    override public function get_Back_Screen():_Obj {
        return new Class_880(currentProfile, my_Parent);
    }
}

