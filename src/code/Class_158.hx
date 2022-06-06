package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_158 extends Attack {


    static inline final name_2 = Std.int(36.0);

    static inline final name_1 = Std.int(360.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Kinesis";
    }

    @:allow(code) override function get_Accurary():Int {
        return 80;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        Attack.lower_Accuracy(param1, Class_158.name_1, var_2);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Do_Kinesis());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_158.name_2;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }
}

