package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_154 extends Attack {


    static inline final name_2 = Std.int(756.0);

    static inline final name_1 = Std.int(720.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Camouflage";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var_2.add_Effect(new Class_16(var_2));
        var _loc2_:Class_16 = new Class_822(var_2, Class_154.name_1);
        var_2.add_Effect(_loc2_);
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
        return Class_154.name_2;
    }
}

