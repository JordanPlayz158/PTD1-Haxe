package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_54;
import package_1.Class_7;

class Class_938 extends Class_875 {


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

    @:allow(code) override function check_For_End_Of_Game():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        if (false) {
            if (var_79 != null) {
                _loc2_ = 0;
                while (_loc2_ < var_79.length) {
                    _loc1_ = var_79[_loc2_];
                    if (_loc1_.myProfile.num == Class_13.const_74) {
                        _loc1_.myProfile.var_48 = true;
                    }
                    _loc2_++;
                }
            }
        }
        return super.check_For_End_Of_Game();
    }

    override function entered_Battle(param1:Class_1104) {
        var _loc2_ = 0;
        if (param1.myProfile.level > 80) {
            this.var_153 = false;
        }
        var _loc3_ = 0;
        while (_loc3_ < param1.myProfile.types.length) {
            _loc2_ = param1.myProfile.types[_loc3_];
            if (_loc2_ == Class_13.const_2 || _loc2_ == Class_13.const_7) {
                this.var_153 = false;
                return;
            }
            _loc3_++;
        }
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 28;
    }

    override public function Poke_Bonus_Level():Int {
        return 75;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_28();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1049(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_54(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_28());
    }

    override function get_Win_Popup():Class_877 {
        if (this.var_153) {
            show_Achievement_Popup(12, -1, new Class_1048(this));
            return null;
        }
        return new Class_1048(this);
    }
}

