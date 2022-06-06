package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_498 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Poison Sting";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 35;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc5_ = 0;
        var _loc6_:ASAny = null;
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_271(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
        var _loc4_:Int;
        if ((_loc4_ = Std.int(Math.random() * 100 + 1)) <= 30) {
            if (param1.check_Effects(Class_200) == null && !param1.myProfile.is_Type(Class_13.const_2) && !param1.myProfile.is_Type(Class_13.const_7)) {
                _loc5_ = method_3(param1, 20);
                (_loc6_ = new Class_200(param1, _loc5_)).var_12 = var_12;
                param1.add_Effect(_loc6_);
            }
        }
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_2;
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

