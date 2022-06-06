package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_129 extends Attack {


    static inline final name_1 = Std.int(36.0);

    static inline final name_2 = Std.int(270.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Protect";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var_2.add_Effect(new Class_794(var_2, Class_129.name_1));
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
        return Class_129.name_2;
    }
}

