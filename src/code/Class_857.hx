package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_857 extends Class_853 {


    static inline final name_1 = Std.int(270.0);

    var var_20:Int = 0;

    var var_12:Float = Math.NaN;

    public function new(param1:Class_875, param2:Poke, param3:Int, param4:Float) {
        super(param1, new Do_Sandstorm(), Class_857.name_1, param2);
        this.var_20 = param3;
        this.var_12 = param4;
        var_234 = true;
    }

    @:allow(code) override function isCollision(param1:GfxMovieClip):Bool {
        return true;
    }

    @:allow(code) override function onCollision(param1:Poke) {
        if (var_15 == 1 || var_15 == 54 || var_15 == 108 || var_15 == 162 || var_15 == 216) {
            if (false) {
                gfx.gotoAndPlay("storm");
            }
            if (param1.myAbility != null && param1.myAbility.on_Sandstorm(var_65)) {
                return;
            }
            if (this.method_312(param1)) {
                return;
            }
            param1.method_18(var_65);
            param1.take_Damage(this.var_20, new Class_197(param1, new Gfx_Hit()), this.var_12, false);
        }
    }

    function method_312(param1:Poke):Bool {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < param1.myProfile.types.length) {
            _loc2_ = param1.myProfile.types[_loc3_];
            if (_loc2_ == Class_13.const_15 || _loc2_ == Class_13.const_10 || _loc2_ == Class_13.const_7) {
                return true;
            }
            _loc3_++;
        }
        return false;
    }
}

