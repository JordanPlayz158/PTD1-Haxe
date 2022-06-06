package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_29;
import package_1.Class_7;

class Class_912 extends Class_875 {


    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    @:allow(code) var var_334:Bool = false;

    @:allow(code) var var_556:Bool = false;

    @:allow(code) var var_153:Bool = false;

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
        this.var_153 = true;
    }

    override function entered_Battle(param1:Class_1104) {
        if (param1.myProfile.level > 90) {
            this.var_153 = false;
        }
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

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 33;
    }

    override public function Poke_Bonus_Level():Int {
        return 93;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_33();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_997(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 8;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_29(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_33());
    }

    override function get_Win_Popup():Class_877 {
        this.var_556 = this.method_57();
        if (this.method_383()) {
            show_Achievement_Popup(13, -1, new Class_998(this));
            return null;
        }
        return new Class_998(this);
    }

    public function method_57():Bool {
        var _loc1_:ASAny = null;
        if (currentProfile.haveThisExtraInfo("111")) {
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

    public function method_383():Bool {
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

