package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_27;
import package_1.Class_7;

class Class_910 extends Class_875 {


    var var_653:Bool = false;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Music():Sound {
        return new BattleGymMusic();
    }

    override function get_Level_Num():Int {
        return 5;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_15();
    }

    override function unlock_Next_Level() {
        if (currentProfile.clevelCompleted < this.get_Level_Num()) {
            currentProfile.clevelCompleted = this.get_Level_Num();
        }
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_994(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 5;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_27(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_Challenge_5());
    }

    function method_175():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < var_168.length) {
            _loc1_ = var_168[_loc3_];
            if (_loc1_.var_265 == false) {
                _loc2_++;
            }
            _loc3_++;
        }
        if (_loc2_ > 1) {
            return true;
        }
        return false;
    }

    override function get_Win_Popup():Class_877 {
        var _loc1_:Class_877 = new Class_993(this);
        if (this.method_175() && !this.var_653) {
            show_Achievement_Popup(5, -1, _loc1_, 4);
            return null;
        }
        if (this.method_175()) {
            show_Achievement_Popup(5, -1, _loc1_);
            return null;
        }
        if (!this.var_653) {
            show_Achievement_Popup(4, -1, _loc1_);
            return null;
        }
        return _loc1_;
    }

    override public function get_Back_Screen():_Obj {
        return new Class_900(currentProfile, my_Parent);
    }

    override function entered_Battle(param1:Class_1104) {
        var _loc2_ = 0;
        var _loc3_ = 1;
        while (_loc3_ <= 4) {
            _loc2_ = (param1.myProfile : ASAny)["move" + _loc3_];
            if (_loc2_ == Class_9.var_150) {
                this.var_653 = true;
                return;
            }
            _loc3_++;
        }
    }
}

