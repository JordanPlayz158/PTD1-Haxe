package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_142 extends Attack {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Growl";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        Attack.lower_Attack(param1, Attack.ATTACK_TIME * 100);
        if (Std.is(param1, Class_1104)) {
            return;
        }
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 15) {
            param1.add_Effect(new Class_819(param1, Attack.ATTACK_TIME * 3));
            param1.add_Effect(new Class_211(param1, var_2));
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Growl());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_211;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }
}

