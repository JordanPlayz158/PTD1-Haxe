package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_193 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    static inline final name_2 = Std.int(720.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Acupressure";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = Std.int(Math.random() * 7 + 1);
        if (_loc2_ == 7) {
            Attack.increase_Attack(var_2, Class_193.name_1);
        }
        else if (_loc2_ == 6) {
            Attack.increase_Defense(var_2, Class_193.name_1);
        }
        else if (_loc2_ == 5) {
            Attack.increase_Evasion(var_2, Class_193.name_1);
        }
        else if (_loc2_ == 4) {
            Attack.increase_Special_Attack(var_2, Class_193.name_1);
        }
        else if (_loc2_ == 3) {
            Attack.increase_Special_Defense(var_2, Class_193.name_1);
        }
        else if (_loc2_ == 2) {
            Attack.increase_Speed(var_2, Class_193.name_1);
        }
        else if (_loc2_ == 1) {
            Attack.increase_Accuracy(var_2, Class_193.name_1, var_2);
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Acupressure());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Initial_CoolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_193.name_2;
    }
}

