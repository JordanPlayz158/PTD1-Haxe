package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_162 extends Attack {


    static inline final name_1 = Std.int(360.0);

    static inline final name_2 = Std.int(36.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Smokescreen";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        param1.add_Effect(this.get_Target_Hit_Animation(param1));
        Attack.lower_Accuracy(param1, Class_162.name_1, var_2);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Do_Smokescreen());
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_162.name_2;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }
}

