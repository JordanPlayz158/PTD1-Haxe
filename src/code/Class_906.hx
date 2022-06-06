package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_23;
import package_1.Class_7;

class Class_906 extends Class_875 {


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

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_Num():Int {
        return 17;
    }

    override function unlock_Next_Level() {
    }

    override public function Poke_Bonus_Level():Int {
        return 34;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_17();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_984(this);
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
        var _loc1_:ASAny = null;
        if (Std.is(var_6, Class_23)) {
            _loc1_ = new Class_985(this);
        }
        return _loc1_;
    }
}

