package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_187 extends Attack {


    static inline final name_1 = Std.int(360.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Brain Freeze";
        cantMiss = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        param1.currentCoolDown = 1000;
        param1.add_Effect(new Class_205(param1, 3407871, 0.6, 1000));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME * 5;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

