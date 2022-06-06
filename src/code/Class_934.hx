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

class Class_934 extends Class_875 {


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
        var _loc4_:ASAny = null;
        method_83();
        if (_loc4_ = i_Win()) {
            add_Popup(_loc4_);
        }
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 36;
    }

    override public function Poke_Bonus_Level():Int {
        return 95;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_35();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1040(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return null;
    }

    override function get_Lost_Popup():Class_877 {
        return null;
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1041(this);
    }
}

