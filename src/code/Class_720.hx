package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_720 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Sucker Punch";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 80;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (param1.var_337) {
            return;
        }
        var _loc2_ = method_3(param1);
        var _loc3_:Class_16 = new Class_781(param1, var_2, _loc2_);
        _loc3_.var_12 = var_12;
        param1.add_Effect(_loc3_);
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

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_27;
    }
}

