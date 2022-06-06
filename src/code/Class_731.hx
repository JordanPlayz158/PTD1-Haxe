package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_731 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Flamethrower";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 95;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        var _loc3_ = method_3(param1, 20, true);
        if (param1.check_Effects(Class_826) != null || var_2.check_Effects(Class_788) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
            _loc3_ = Std.int(_loc3_ * 0.5);
        }
        if (var_2.check_Effects(Class_789) != null) {
            _loc2_ = Std.int(_loc2_ * 1.5);
            _loc3_ = Std.int(_loc3_ * 1.5);
        }
        var _loc4_:Class_16;
        (_loc4_ = new Class_751(var_2, param1, _loc2_, _loc3_, this)).var_12 = var_12;
        var_2.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_6;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return 22;
    }
}

