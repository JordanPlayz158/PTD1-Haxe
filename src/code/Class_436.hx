package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_436 extends Class_194 {


    static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Bulldoze";
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 60;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        super.do_Attack(param1);
        if (param1.check_Effects(Class_809) == null && !param1.myProfile.is_Type(Class_13.const_9)) {
            param1.add_Effect(new Class_809(param1, Class_436.name_1));
        }
        if (!param1.myProfile.is_Type(Class_13.const_9)) {
            param1.add_Effect(new Class_230(param1));
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_230(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_10;
    }
}

