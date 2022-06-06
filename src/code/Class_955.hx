package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_7;
import package_1.Class_73;

class Class_955 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_878, param2:_Obj) {
        this.method_36(param1, 10);
        super(param1, param2);
        this.var_21 = currentProfile.myAvatarGender;
        this.var_22 = currentProfile.myAvatarStyle;
        if (false) {
            gfx_BG.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
    }

    @:allow(code) function method_36(param1:Class_878, param2:Int) {
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        while (_loc4_ < param1.partyList.length) {
            _loc3_ = param1.partyList[_loc4_];
            if (_loc3_) {
                Class_13.method_2(_loc3_);
                _loc3_.var_16 *= param2;
            }
            _loc4_++;
        }
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 39;
    }

    override public function Poke_Bonus_Level():Int {
        return 100;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_42();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1079(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 6;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_73(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_40_3());
    }

    override function get_Win_Popup():Class_877 {
        return null;
    }

    @:allow(code) override function i_Win():Class_877 {
        currentProfile.reset_Fight_List();
        end_Level(new Class_958(currentProfile, my_Parent));
        return null;
    }
}

