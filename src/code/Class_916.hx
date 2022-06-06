package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import package_1.Class_33;
import package_1.Class_7;

class Class_916 extends Class_875 {


    var var_652:Class_1104;

    var var_650:Class_1104;

    @:allow(code) var var_665:Bool = false;

    @:allow(code) var var_644:Class_6;

    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    @:allow(code) override function start_Level(param1:Bool = true, param2:ASAny = false, param3:Class_7 = null) {
        super.start_Level(param1, false, param3);
        var _loc4_ = this.method_219();
        var _loc5_ = this.method_400();
        this.var_652 = new Class_1104(this, _loc4_);
        this.var_650 = new Class_1104(this, _loc5_);
        method_10(this.var_652, 2);
        method_10(this.var_650, 5);
    }

    override function entered_Battle(param1:Class_1104) {
        var _loc2_ = 0;
        var _loc3_ = 0;
        if (param1.myProfile.num == Class_13.const_109) {
            this.var_644 = param1.myProfile;
        }
        if (this.var_665) {
            return;
        }
        if (param1.currentSpot.gfx.name == "spot_3") {
            _loc3_ = 1;
            while (_loc3_ <= 4) {
                _loc2_ = (param1.myProfile : ASAny)["move" + _loc3_];
                if (_loc2_ == Class_9.var_101) {
                    gfx_BG.cut_bush.play();
                    this.var_665 = true;
                    return;
                }
                _loc3_++;
            }
        }
    }

    function method_219():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_29;
        Class_13.method_2(_loc1_);
        _loc1_.level = 4;
        _loc1_.move1 = Class_9.var_45;
        _loc1_.move2 = Class_9.var_70;
        _loc1_.move3 = Class_9.var_96;
        _loc1_.var_13 = 3;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    function method_400():Class_6 {
        var _loc1_ = new Class_6();
        _loc1_.num = Class_13.const_28;
        Class_13.method_2(_loc1_);
        _loc1_.level = 5;
        _loc1_.move1 = Class_9.var_45;
        _loc1_.move2 = Class_9.var_102;
        _loc1_.var_13 = 2;
        _loc1_.var_40 = 0;
        _loc1_.var_35 = -1;
        _loc1_.moveSelected = 1;
        return _loc1_;
    }

    override function get_Level_Num():Int {
        return 3;
    }

    override public function Poke_Bonus_Level():Int {
        return 7;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_3();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1006(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 7;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_33(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_3());
    }

    override function get_Win_Popup():Class_877 {
        this.var_652.visible = false;
        this.var_650.visible = false;
        return new Class_1005(this);
    }
}

