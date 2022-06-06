package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_417 extends Class_194 {


    static inline final name_1 = Std.int(360.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Muddy Water";
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 95;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1);
        if (var_2.check_Effects(Class_788) != null) {
            _loc2_ = Std.int(_loc2_ * 1.5);
        }
        if (var_2.check_Effects(Class_789) != null) {
            _loc2_ = Std.int(_loc2_ * 0.5);
        }
        method_13(param1, _loc2_, this.get_Target_Hit_Animation(param1));
        var _loc3_ = Std.int(Math.random() * 100 + 1);
        if (_loc3_ <= 30) {
            Attack.lower_Accuracy(param1, Class_417.name_1, var_2);
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_733(var_2, new Do_Muddy_Water());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_5;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }
}

