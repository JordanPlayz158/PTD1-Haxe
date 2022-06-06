package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_26;
import package_1.Class_7;

class Class_909 extends Class_875 {


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
            method_10(new Class_1104(this, this.method_320()), 1);
        }
    }

    function method_320():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_216;
        Class_13.method_2(_loc1_);
        _loc1_.level = 100;
        _loc1_.move1 = Class_9.var_620;
        _loc1_.var_13 = 1;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    @:allow(code) override function defeated_Poke(param1:Poke) {
        var_6.wave_Finished();
        super.defeated_Poke(param1);
    }

    override public function remove_From_Party(param1:Poke) {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        super.remove_From_Party(param1);
        var _loc4_ = 0;
        while (_loc4_ < currentProfile.partyList.length) {
            _loc3_ = currentProfile.partyList[_loc4_];
            if (_loc3_ && _loc3_.var_298 != -2) {
                return;
            }
            _loc4_++;
        }
        _loc2_ = this.get_Lost_Popup();
        if (_loc2_) {
            add_Popup(_loc2_);
        }
    }

    @:allow(code) override function check_For_End_Of_Game():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        if (false) {
            if (var_79 != null) {
                _loc2_ = 0;
                while (_loc2_ < var_79.length) {
                    _loc1_ = var_79[_loc2_];
                    if (_loc1_.myProfile.num == Class_13.const_92) {
                        _loc1_.myProfile.var_490 = false;
                    }
                    _loc2_++;
                }
            }
        }
        return super.check_For_End_Of_Game();
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 30;
    }

    override public function Poke_Bonus_Level():Int {
        return 85;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_30();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_992(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_26(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_30());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_991(this);
    }
}

