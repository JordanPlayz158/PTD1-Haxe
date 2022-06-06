package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_457 extends Class_194 {


    static inline final name_2 = Std.int(234.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Splash";
        cantMiss = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_457.name_2;
    }
}

