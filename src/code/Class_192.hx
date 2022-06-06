package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_192 extends Attack {


    static inline final name_2 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Return to Pokeball";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (!Std.is(param1, Class_1104)) {
            return;
        }
        var _loc2_ = cast(var_2.my_Parent, Class_875);
        _loc2_.return_Poke(param1);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_192.name_2;
    }
}

