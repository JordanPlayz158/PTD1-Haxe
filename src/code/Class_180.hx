package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_180 extends Attack {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Mind Reader";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (var_2.check_Effects(Class_199) != null) {
            return;
        }
        var_2.add_Effect(new Class_199(var_2));
        var_2.add_Effect(new Class_197(var_2, new Do_Mind_Reader()));
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

