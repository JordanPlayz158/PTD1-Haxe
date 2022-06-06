package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_573 extends Class_194 {


    static inline final name_2 = Std.int(306.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Hail";
        cantMiss = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = method_3(param1, 50);
        var _loc3_ = cast(var_2.my_Parent, Class_875);
        if (_loc3_.method_23(Class_855) != null) {
            return;
        }
        var _loc4_:Class_853 = new Class_855(_loc3_, var_2, _loc2_, var_12);
        _loc3_.add_path_effect(_loc4_, true);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_573.name_2;
    }
}

