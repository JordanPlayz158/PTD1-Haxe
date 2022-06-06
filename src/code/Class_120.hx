package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_120 extends Attack {


    static inline final name_1 = Std.int(360.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Odor Sleuth";
        cantMiss = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc2_ = param1.check_Effects(Class_795);
        if (_loc2_ != null) {
            _loc3_ = new Class_22(Class_22.const_11);
            _loc2_.remove_Me();
            return;
        }
        param1.add_Effect(new Class_792(param1, Class_120.name_1));
        param1.add_Effect(new Class_205(param1, 16777215, 0.3, Class_120.name_1));
        param1.add_Effect(new Class_816(param1, Class_120.name_1));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var_2.add_Effect(new Class_205(var_2, 16777215, 0.3, Attack.ATTACK_TIME));
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_792;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function single_Target():Bool {
        return true;
    }
}

