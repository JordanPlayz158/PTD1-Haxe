package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_128 extends Attack {


    static inline final name_2 = 18;

    static inline final name_1 = Std.int(1800.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Conversion 2";
        cantMiss = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (var_2.check_Effects(Class_817) != null) {
            return;
        }
        var_2.add_Effect(new Class_16(var_2));
        var _loc2_:Class_16 = new Class_817(var_2, param1, Class_128.name_1);
        var_2.add_Effect(_loc2_);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Conversion());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_128.name_2;
    }
}

