package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_176 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    static inline final name_2 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Shell Smash";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        Attack.lower_Defense(var_2, Class_176.name_1);
        Attack.lower_Special_Defense(var_2, Class_176.name_1);
        Attack.increase_Attack(var_2, Class_176.name_1);
        Attack.increase_Special_Attack(var_2, Class_176.name_1);
        Attack.increase_Speed(var_2, Class_176.name_1);
        var_2.add_Effect(new Class_197(var_2, new Do_Shell_Smash()));
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

    @:allow(code) override function get_coolDown():Int {
        return Class_176.name_2;
    }
}

