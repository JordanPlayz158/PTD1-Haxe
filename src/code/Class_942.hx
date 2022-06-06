package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_58;
import package_1.Class_7;

class Class_942 extends Class_875 {


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

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_Num():Int {
        return 31;
    }

    override public function Poke_Bonus_Level():Int {
        return 90;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_31();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1055(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_58(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_25());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1056(this);
    }
}

