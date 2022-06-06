package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_675 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Acrobatics";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 55;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_9;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        if (param1.var_193 == null) {
            _loc2_ *= 2;
        }
        var _loc3_ = method_3(param1, _loc2_);
        var _loc4_:Class_16;
        (_loc4_ = new Class_342(param1, var_2, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

