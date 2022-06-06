package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import flash.net.URLLoader;
import package_1.Class_50;
import package_1.Class_7;

class Class_933 extends Class_875 {


    @:allow(code) var var_640:Class_6;

    @:allow(code) var var_689:Bool = false;

    @:allow(code) var var_41:URLLoader;

    @:allow(code) var var_153:Bool = false;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
        this.var_153 = true;
    }

    override function get_Level_Num():Int {
        return 10;
    }

    override public function Poke_Bonus_Level():Int {
        return 20;
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_10();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1039(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 10;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_50(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_10());
    }

    override function get_Win_Popup():Class_877 {
        if (this.method_57()) {
            show_Achievement_Popup(8, -1, new Class_1038(this));
            return null;
        }
        if (this.method_241()) {
            show_Achievement_Popup(3, -1, new Class_1038(this));
            return null;
        }
        return new Class_1038(this);
    }

    override function entered_Battle(param1:Class_1104) {
        var _loc2_ = 0;
        if (param1.myProfile.level > 30) {
            this.var_153 = false;
        }
        if (param1.myProfile.num == Class_13.const_82) {
            this.var_640 = param1.myProfile;
        }
        var _loc3_ = 0;
        while (_loc3_ < param1.myProfile.types.length) {
            _loc2_ = param1.myProfile.types[_loc3_];
            if (_loc2_ == Class_13.const_20 || _loc2_ == Class_13.const_8) {
                this.var_689 = true;
                return;
            }
            _loc3_++;
        }
    }

    public function method_241():Bool {
        if (this.var_689) {
            return false;
        }
        return true;
    }

    public function method_57():Bool {
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

