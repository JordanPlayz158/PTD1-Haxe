package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_516 extends Class_194 {


    @:allow(code) var name_1:Int = Std.int(54.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Bubble";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 20;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        if (var_2.check_Effects(Class_788) != null) {
            _loc2_ = Std.int(_loc2_ * 1.5);
        }
        if (var_2.check_Effects(Class_789) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
        }
        var _loc3_:Class_16 = new Class_280(var_2, param1, _loc2_);
        _loc3_.var_12 = var_12;
        var_2.add_Effect(_loc3_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_5;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}
