package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_31;
import package_1.Class_7;

class Class_914 extends Class_875 {


    @:allow(code) var var_153:Bool = false;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        this.var_153 = true;
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 15;
    }

    override public function Poke_Bonus_Level():Int {
        return 35;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_15();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1002(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 5;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_31(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_15());
    }

    override function get_Win_Popup():Class_877 {
        if (this.method_300()) {
            show_Achievement_Popup(9, -1, new Class_1001(this));
            return null;
        }
        return new Class_1001(this);
    }

    override function entered_Battle(param1:Class_1104) {
        if (param1.myProfile.level > 50) {
            this.var_153 = false;
        }
    }

    public function method_300():Bool {
        var _loc1_:ASAny = null;
        if (!this.var_153) {
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

