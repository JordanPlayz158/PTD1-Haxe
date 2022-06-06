package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_38;
import package_1.Class_7;

class Class_921 extends Class_875 {


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
        return 16;
    }

    override public function Poke_Bonus_Level():Int {
        return 30;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_16();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1015(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 10;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_38(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_16());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1014(this);
    }
}

