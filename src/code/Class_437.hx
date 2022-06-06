package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_437 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Destiny Bond";
        onSelf = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (var_2.check_Effects(Class_198) != null) {
            return;
        }
        var_2.add_Effect(new Class_198(var_2));
        var_2.add_Effect(new Class_205(var_2, 16777215, 0.5, Attack.ATTACK_TIME * 2));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_24;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return 18;
    }
}

