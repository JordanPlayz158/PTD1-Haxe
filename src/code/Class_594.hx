package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_594 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Spark";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 65;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        if (param1.check_Effects(Class_824) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
        }
        var _loc3_:Class_16 = new Class_771(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_20;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }
}

