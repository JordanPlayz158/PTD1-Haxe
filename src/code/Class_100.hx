package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_100 extends Attack {


    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Charge";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = var_2.check_Effects(Class_810);
        var _loc3_ = var_2.check_Effects(Class_803);
        if (_loc2_ != null) {
            _loc2_.remove_Me();
        }
        else if (_loc3_ == null) {
            var_2.add_Effect(new Class_803(var_2, Class_100.name_1));
        }
        if (var_2.check_Effects(Class_204) == null) {
            var_2.add_Effect(new Class_204(var_2));
            var_2.add_Effect(new Class_197(var_2, new Do_Charge()));
        }
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

