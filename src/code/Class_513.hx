package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_513 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Supersonic";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 1;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function get_Accurary():Int {
        return 55;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (param1.check_Effects(Class_203) != null) {
            return;
        }
        var _loc2_:GfxMovieClip = new Do_Supersonic();
        param1.add_Effect(new Class_197(param1, _loc2_));
        var _loc3_ = method_3(param1, 20, true);
        var _loc4_:Class_16;
        (_loc4_ = new Class_203(param1, _loc3_)).var_12 = var_12;
        param1.add_Effect(_loc4_);
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Supersonic());
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_203;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

