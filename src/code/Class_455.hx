package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_455 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Avalanche";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.get_Move_Power();
        if (false) {
            _loc2_ *= 2;
        }
        var _loc3_ = method_3(param1, _loc2_);
        method_13(param1, _loc3_, this.get_Target_Hit_Animation(param1));
        var_2.add_Effect(this.get_My_Attack_Animation());
        param1.add_Effect(this.get_Target_Hit_Animation(param1));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Hit_Avalanche());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

