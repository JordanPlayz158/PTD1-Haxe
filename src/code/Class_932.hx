package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_49;
import package_1.Class_7;

class Class_932 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_334:Bool = false;

    @:allow(code) var var_556:Bool = false;

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
        return 32;
    }

    override public function Poke_Bonus_Level():Int {
        return 92;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_32();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1036(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 8;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_49(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_32());
    }

    override function get_Win_Popup():Class_877 {
        this.var_556 = this.method_57();
        return new Class_1037(this);
    }

    public function method_57():Bool {
        var _loc1_:ASAny = null;
        if (currentProfile.haveThisExtraInfo("110")) {
            return false;
        }
        var _loc2_ = 0;
        while (_loc2_ < var_168.length) {
            _loc1_ = var_168[_loc2_];
            if (_loc1_.var_265 == true) {
                return false;
            }
            _loc2_++;
        }
        return true;
    }
}

